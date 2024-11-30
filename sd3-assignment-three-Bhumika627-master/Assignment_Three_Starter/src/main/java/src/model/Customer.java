package src.model;

import lombok.Data;

import java.util.List;

@Data
public class Customer {
    private int customerId;
    private String firstName;
    private String lastName;
    private String email;
    private String phone;
    private String address;
    private String city;
    private String country;
    private String postcode;

    private List<Product> purchasedProducts;
    private List<Review> reviews;

}
