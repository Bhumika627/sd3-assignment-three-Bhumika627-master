package src.main;

import src.app_prog_art.ASCIIArtGenerator;
import src.config.DatabaseConfig;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

public class CustomerCLI {

   private static Scanner scanner;

    public static void main(String[] args) {
        scanner = new Scanner(System.in);
        boolean exit = false;

        while (!exit) {
            System.out.println("\nPlease Select an Option");
            System.out.println("1. Register a New Customer");
            System.out.println("2. View Customer Profile");
            System.out.println("3. Dynamic Query Builder");
            System.out.println("4. View All Customers");
            System.out.println("5. Seed Database");
            System.out.println("6. Exit");

            int choice = scanner.nextInt();
            scanner.nextLine();

            switch (choice) {
                case 1 -> registerCustomer(scanner);
                case 2 -> viewCustomer(scanner);
                case 3 -> dynamicQueryBuilder(scanner);
                case 4 -> viewAllCustomers();
                case 5 -> generateQueries(scanner);
                case 6 -> exit = true;
                default -> System.out.println("Invalid choice.");
            }
        }
        scanner.close();
        //display ASCII art before exiting
        ASCIIArtGenerator art = new ASCIIArtGenerator();
        try {
            art.printTextArt("Bye!", 14, ASCIIArtGenerator.ASCIIArtFont.ART_FONT_DIALOG, "+");
            System.exit(0);
        } catch (Exception ex) {
            System.out.println("Error with ASCII art " + ex);
        }//end try
    }


    private static void dynamicQueryBuilder(Scanner scanner) {
        System.out.println("Dynamic Query Builder for the Products Table");

        // Step 1: Prompt user to select columns
        System.out.println("Enter columns to select (use * for all or separate column names with commas):");
        System.out.println("------------------------------------------------------------");
        String columns = scanner.nextLine().trim();

        // Step 2: Ask user about adding filters
        System.out.println("Would you like to add filters? (yes/no)");
        System.out.println("-------------------------------------------------------------");
        String filterChoice = scanner.nextLine().trim().toLowerCase();

        StringBuilder whereClause = new StringBuilder();
        if (filterChoice.equals("yes")) {
            System.out.println("Enter partial product name (leave blank to skip):");
            System.out.println("------------------------------------------------------------");
            String productName = scanner.nextLine().trim();
            if (!productName.isEmpty()) {
                whereClause.append("name LIKE '%").append(productName).append("%'");
            }

            System.out.println("Enter partial description (leave blank to skip):");
            System.out.println("------------------------------------------------------------");
            String description = scanner.nextLine().trim();
            if (!description.isEmpty()) {
                if (whereClause.length() > 0) {
                    whereClause.append(" AND ");
                }
                whereClause.append("description LIKE '%").append(description).append("%'");
            }

            System.out.println("Enter additional condition (e.g., price > 30). Type 'done' to finish:");
            System.out.println("------------------------------------------------------------");
            while (true) {
                String additionalCondition = scanner.nextLine().trim();
                if (additionalCondition.equalsIgnoreCase("done")) {
                    break;
                }
                if (!additionalCondition.isEmpty()) {
                    if (whereClause.length() > 0) {
                        whereClause.append(" AND ");
                    }
                    whereClause.append(additionalCondition);
                    System.out.println("Enter another condition or type 'done' to finish:");
                }
            }
        }

        // Step 3: Sorting preferences
        System.out.println("Would you like to sort the results? (yes/no)");
        System.out.println("------------------------------------------------------------");
        String sortChoice = scanner.nextLine().trim().toLowerCase();
        String sortColumn = "";
        String sortOrder = "";

        if (sortChoice.equals("yes")) {
            System.out.println("Enter column to sort by:");
            System.out.println("------------------------------------------------------------");
            sortColumn = scanner.nextLine().trim();

            System.out.println("Enter order (ASC for ascending, DESC for descending):");
            System.out.println("------------------------------------------------------------");
            sortOrder = scanner.nextLine().trim().toUpperCase();
        }

        // Step 4: Construct the SQL query
        StringBuilder queryBuilder = new StringBuilder("SELECT ");
        queryBuilder.append(columns.isEmpty() ? "*" : columns).append(" FROM products");

        if (whereClause.length() > 0) {
            queryBuilder.append(" WHERE ").append(whereClause);
        }
        if (!sortColumn.isEmpty()) {
            queryBuilder.append(" ORDER BY ").append(sortColumn).append(" ").append(sortOrder);
        }

        String finalQuery = queryBuilder.toString();
        System.out.println("Generated SQL Query:");
        System.out.println(finalQuery);

        // Step 5: Execute the query
        try (Connection connection = DatabaseConfig.getConnection();
             var statement = connection.createStatement();
             var resultSet = statement.executeQuery(finalQuery)) {

            // Display results
            System.out.println("Query Results:");
            System.out.println("------------------------------------------------------------");
            int columnCount = resultSet.getMetaData().getColumnCount();
            while (resultSet.next()) {
                for (int i = 1; i <= columnCount; i++) {
                    System.out.print(resultSet.getMetaData().getColumnName(i) + ": " + resultSet.getString(i) + " | ");
                }
                System.out.println();
            }

        } catch (SQLException e) {
            System.err.println("Database error: " + e.getMessage());
        }
    }


    private static void generateQueries(Scanner scanner) {

        System.out.println("Enter the number of records you want to generate");
        int numberOfRecords = scanner.nextInt();

        /* ToDo Generate Queries with Faker */
        String query = "INSERT INTO customers (first_name, last_name, email, phone, address, city, country, postcode) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        try (Connection connection = DatabaseConfig.getConnection();
             var preparedStatement = connection.prepareStatement(query)) {

            for (int i = 0; i < numberOfRecords; i++) {
                preparedStatement.setString(1, "FirstName" + i);
                preparedStatement.setString(2, "LastName" + i);
                preparedStatement.setString(3, "email" + i + "@example.com");
                preparedStatement.setString(4, "123456789" + i);
                preparedStatement.setString(5, "Address" + i);
                preparedStatement.setString(6, "City" + i);
                preparedStatement.setString(7, "Country" + i);
                preparedStatement.setString(8, "Postcode" + i);
                preparedStatement.addBatch();
            }
            preparedStatement.executeBatch();
            System.out.println("Generated " + numberOfRecords + " customer records.");
        } catch (SQLException e) {
            System.err.println("Database error: " + e.getMessage());
        }

    }

//    private static void generateQueries(Scanner scanner) {
//        System.out.println("Enter columns to select (use * for all or separate column names with commas):");
//        System.out.println("------------------------------------------------------------");
//        String columns = scanner.nextLine().trim();
//
//        System.out.println("Would you like to add filters? (yes/no)");
//        System.out.println("-------------------------------------------------------------");
//        String filterChoice = scanner.nextLine().trim().toLowerCase();
//
//        StringBuilder whereClause = new StringBuilder();
//        if (filterChoice.equals("yes")) {
//            System.out.println("Enter partial product name (leave blank to skip):");
//            System.out.println("------------------------------------------------------------");
//            String productName = scanner.nextLine().trim();
//            if (!productName.isEmpty()) {
//                whereClause.append("name LIKE '%").append(productName).append("%'");
//            }
//
//            System.out.println("Enter partial description (leave blank to skip):");
//            System.out.println("------------------------------------------------------------");
//            String description = scanner.nextLine().trim();
//            if (!description.isEmpty()) {
//                if (whereClause.length() > 0) {
//                    whereClause.append(" AND ");
//                }
//                whereClause.append("description LIKE '%").append(description).append("%'");
//            }
//
//            System.out.println("Enter additional condition (e.g., price > 30):");
//            System.out.println("------------------------------------------------------------");
//            String additionalCondition = scanner.nextLine().trim();
//            if (!additionalCondition.isEmpty()) {
//                if (whereClause.length() > 0) {
//                    whereClause.append(" AND ");
//                }
//                whereClause.append(additionalCondition);
//            }
//        }
//
//        System.out.println("Would you like to sort the results? (yes/no)");
//        System.out.println("------------------------------------------------------------");
//        String sortChoice = scanner.nextLine().trim().toLowerCase();
//        String sortColumn = "";
//        String sortOrder = "";
//
//        if (sortChoice.equals("yes")) {
//            System.out.println("Enter column to sort by:");
//            System.out.println("------------------------------------------------------------");
//            sortColumn = scanner.nextLine().trim();
//
//            System.out.println("Enter order (ASC for ascending, DESC for descending):");
//            System.out.println("------------------------------------------------------------");
//            sortOrder = scanner.nextLine().trim().toUpperCase();
//        }
//
//        // Construct the SQL query
//        StringBuilder queryBuilder = new StringBuilder("SELECT ");
//        queryBuilder.append(columns.isEmpty() ? "*" : columns).append(" FROM products");
//
//        if (whereClause.length() > 0) {
//            queryBuilder.append(" WHERE ").append(whereClause);
//        }
//        if (!sortColumn.isEmpty()) {
//            queryBuilder.append(" ORDER BY ").append(sortColumn).append(" ").append(sortOrder);
//        }
//
//        String finalQuery = queryBuilder.toString();
//        System.out.println("Generated SQL Query:");
//        System.out.println(finalQuery);
//
//        // Execute the query
//        try (Connection connection = DatabaseConfig.getConnection();
//             var statement = connection.createStatement();
//             var resultSet = statement.executeQuery(finalQuery)) {
//
//            // Display the query results
//            System.out.println("Query Results:");
//            System.out.println("------------------------------------------------------------");
//            int columnCount = resultSet.getMetaData().getColumnCount();
//            while (resultSet.next()) {
//                for (int i = 1; i <= columnCount; i++) {
//                    System.out.print(resultSet.getMetaData().getColumnName(i) + ": " + resultSet.getString(i) + " | ");
//                }
//                System.out.println();
//            }
//
//            // Export Options
//            System.out.println("Would you like to export the result? (yes/no)");
//            System.out.println("------------------------------------------------------------");
//            String exportChoice = scanner.nextLine().trim().toLowerCase();
//            if (exportChoice.equals("yes")) {
//                System.out.println("Choose export format: 1. Text  2. JSON  3. CSV");
//                int exportFormat = scanner.nextInt();
//                scanner.nextLine(); // Consume newline
//                System.out.println("Enter the file name to save the results:");
//                String fileName = scanner.nextLine().trim();
//
//                if (exportFormat == 1) {
//                    exportToText(resultSet, fileName);
//                } else if (exportFormat == 2) {
//                    exportToJSON(resultSet, fileName);
//                } else if (exportFormat == 3) {
//                    exportToCSV(resultSet, fileName);
//                } else {
//                    System.out.println("Invalid choice. Export canceled.");
//                }
//            }
//
//        } catch (SQLException e) {
//            System.err.println("Database error: " + e.getMessage());
//        }
//    }
//
//    private static void exportToText(java.sql.ResultSet resultSet, String fileName) {
//        try (var writer = new java.io.FileWriter(fileName)) {
//            int columnCount = resultSet.getMetaData().getColumnCount();
//            while (resultSet.next()) {
//                for (int i = 1; i <= columnCount; i++) {
//                    writer.write(resultSet.getMetaData().getColumnName(i) + ": " + resultSet.getString(i) + "\n");
//                }
//                writer.write("----------------------------------------\n");
//            }
//            System.out.println("Results exported to " + fileName + " as text.");
//        } catch (IOException | SQLException e) {
//            System.err.println("Error writing to file: " + e.getMessage());
//        }
//    }
//    private static void exportToJSON(java.sql.ResultSet resultSet, String fileName) {
//        try (var writer = new java.io.FileWriter(fileName)) {
//            var mapper = new com.fasterxml.jackson.databind.ObjectMapper();
//            var jsonArray = new java.util.ArrayList<java.util.Map<String, Object>>();
//
//            int columnCount = resultSet.getMetaData().getColumnCount();
//            while (resultSet.next()) {
//                var row = new java.util.HashMap<String, Object>();
//                for (int i = 1; i <= columnCount; i++) {
//                    row.put(resultSet.getMetaData().getColumnName(i), resultSet.getObject(i));
//                }
//                jsonArray.add(row);
//            }
//            mapper.writerWithDefaultPrettyPrinter().writeValue(writer, jsonArray);
//            System.out.println("Results exported to " + fileName + " as JSON.");
//        } catch (java.io.IOException | SQLException e) {
//            System.err.println("Error writing to file: " + e.getMessage());
//        }
//    }
//    private static void exportToCSV(java.sql.ResultSet resultSet, String fileName) {
//        try (var writer = new java.io.FileWriter(fileName);
//             var csvPrinter = new org.apache.commons.csv.CSVPrinter(writer, org.apache.commons.csv.CSVFormat.DEFAULT)) {
//
//            int columnCount = resultSet.getMetaData().getColumnCount();
//            for (int i = 1; i <= columnCount; i++) {
//                csvPrinter.print(resultSet.getMetaData().getColumnName(i));
//            }
//            csvPrinter.println();
//
//            while (resultSet.next()) {
//                for (int i = 1; i <= columnCount; i++) {
//                    csvPrinter.print(resultSet.getString(i));
//                }
//                csvPrinter.println();
//            }
//            System.out.println("Results exported to " + fileName + " as CSV.");
//        } catch (java.io.IOException | SQLException e) {
//            System.err.println("Error writing to file: " + e.getMessage());
//        }
//    }
//



    private static void registerCustomer(Scanner scanner) {
        System.out.println("Enter first name: ");
        String firstName = scanner.nextLine();

        System.out.println("Enter last name: ");
        String lastName = scanner.nextLine();

        System.out.println("Enter email: ");
        String email = scanner.nextLine();

        System.out.println("Enter phone: ");
        String phone = scanner.nextLine();

        System.out.println("Enter address: ");
        String address = scanner.nextLine();

        System.out.println("Enter city: ");
        String city = scanner.nextLine();

        System.out.println("Enter country: ");
        String country = scanner.nextLine();

        System.out.println("Enter postcode: ");
        String postcode = scanner.nextLine();

        /* ToDo Insert Customer */
        String query = "INSERT INTO customers (first_name, last_name, email, phone, address, city, country, postcode) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        try (Connection connection = DatabaseConfig.getConnection();
             var preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, firstName);
            preparedStatement.setString(2, lastName);
            preparedStatement.setString(3, email);
            preparedStatement.setString(4, phone);
            preparedStatement.setString(5, address);
            preparedStatement.setString(6, city);
            preparedStatement.setString(7, country);
            preparedStatement.setString(8, postcode);

            int rowsAffected = preparedStatement.executeUpdate();
            if (rowsAffected > 0) {
                System.out.println("Customer registered successfully!");
            } else {
                System.out.println("Failed to register the customer.");
            }
        } catch (SQLException e) {
            System.err.println("Database error: " + e.getMessage());
        }
    }

    private static void viewCustomer(Scanner scanner) {
        System.out.println("Enter customer ID: ");
        int customerId = scanner.nextInt();

        String customerQuery = "SELECT * FROM customers WHERE customer_id = ?";
        String orderItemsQuery = "SELECT oi.product_id, p.name, p.description, p.price, o.order_date " +
                "FROM order_items oi " +
                "JOIN products p ON oi.product_id = p.product_id " +
                "JOIN orders o ON oi.order_id = o.order_id " +
                "WHERE o.customer_id = ?";
        String reviewQuery = "SELECT r.review_id, r.product_id, r.rating, r.comment, r.review_date " +
                "FROM reviews r WHERE r.customer_id = ?";

        try (Connection connection = DatabaseConfig.getConnection();
             var customerStmt = connection.prepareStatement(customerQuery);
             var orderItemsStmt = connection.prepareStatement(orderItemsQuery);
             var reviewStmt = connection.prepareStatement(reviewQuery)) {

            customerStmt.setInt(1, customerId);
            try (var customerRs = customerStmt.executeQuery()) {
                if (customerRs.next()) {
                    System.out.println("-------------------------------------");
                    System.out.println("Customer Details:");
                    System.out.println("Name: " + customerRs.getString("first_name") + " " + customerRs.getString("last_name"));
                    System.out.println("Email: " + customerRs.getString("email"));
                    System.out.println("Phone: " + customerRs.getString("phone"));
                    System.out.println("Address: " + customerRs.getString("address"));
                    System.out.println("City: " + customerRs.getString("city"));
                    System.out.println("Country: " + customerRs.getString("country"));
                    System.out.println("Postcode: " + customerRs.getString("postcode"));

                    // Purchase History
                    orderItemsStmt.setInt(1, customerId);
                    System.out.println("\nPurchase Products:");
                    try (var orderItemsRs = orderItemsStmt.executeQuery()) {
                        int productCount = 0;
                        while (orderItemsRs.next()) {
                            productCount++;
                            System.out.println("-----------------------------------------");
                            System.out.println("Product ID: " + orderItemsRs.getInt("product_id"));
                            System.out.println("Name: " + orderItemsRs.getString("name") + " at €" + orderItemsRs.getBigDecimal("price"));
                            System.out.println("Description: " + orderItemsRs.getString("description"));
                            System.out.println("Purchase Date: " + orderItemsRs.getDate("order_date"));
                        }
                        if (productCount == 0) {
                            System.out.println("No purchases found.");
                        }
                    }

                    // Customer Reviews
                    reviewStmt.setInt(1, customerId);
                    System.out.println("\nCustomer Reviews:");
                    try (var reviewRs = reviewStmt.executeQuery()) {
                        int reviewCount = 0;
                        while (reviewRs.next()) {
                            reviewCount++;
                            System.out.println("---------------------------------");
                            System.out.println("Review ID: " + reviewRs.getInt("review_id"));
                            System.out.println("Product ID: " + reviewRs.getInt("product_id"));
                            System.out.println("Rating: " + reviewRs.getInt("rating"));
                            System.out.println("Comment: " + reviewRs.getString("comment"));
                            System.out.println("Review Date: " + reviewRs.getDate("review_date"));
                        }
                        if (reviewCount == 0) {
                            System.out.println("No reviews found.");
                        }
                    }
                } else {
                    System.out.println("Customer not found.");
                }
            }
        } catch (SQLException e) {
            System.err.println("Database error: " + e.getMessage());
        }
    }

    private static void viewAllCustomers() {

        System.out.println("View All Customers");
        /*ToDo View all Customers */
        String query = "SELECT * FROM customers";
        try (Connection connection = DatabaseConfig.getConnection();
             var statement = connection.createStatement();
             var resultSet = statement.executeQuery(query)) {

            System.out.println("Customer List:");
            while (resultSet.next()) {
                System.out.println("Customer ID: " + resultSet.getInt("customer_id") +
                        ", Name: " + resultSet.getString("first_name") + " " + resultSet.getString("last_name") +
                        ", Email: " + resultSet.getString("email"));
            }
        } catch (SQLException e) {
            System.err.println("Database error: " + e.getMessage());
        }

    }
}
