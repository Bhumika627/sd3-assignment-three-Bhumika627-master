create database pettopia;
  use pettopia;
  


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pettopia`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `name`) VALUES
(1, 'Dog Supplies'),
(2, 'Cat Supplies'),
(3, 'Bird Supplies'),
(4, 'Small Pet Supplies'),
(5, 'Aquarium Supplies'),
(6, 'Pet Food'),
(7, 'Pet Accessories'),
(8, 'Pet Toys'),
(9, 'Pet Grooming'),
(10, 'Pet Furniture'),
(11, 'Aquarium'),
(12, 'Pet Housing'),
(13, 'Pet Play'),
(14, 'Pet Travel'),
(15, 'General Pet Supplies');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `country`, `postcode`) VALUES
(1, 'John', 'Burke', 'jburke74@gmail.com', '0871234567', '123 Kildare Street', 'Dublin', 'Ireland', 'D01 AB23'),
(2, 'Jane', 'Smith', 'janesmith@hotmail.com', '0869876543', '456 High Street', 'London', 'United Kingdom', 'W1B 2ES'),
(3, 'Mike', 'Jones', 'mjones@yahoo.com', '0856352532', '789 Park Avenue', 'Belfast', 'Northern Ireland', 'BT1 1AA'),
(4, 'Sarah', 'Wilson', 'swilson@gmail.com', '0857854251', '321 Elm Street', 'Galway', 'Ireland', 'H91 XY12'),
(5, 'Tom', 'Johnson', 'tjohnson@aol.com', '0832653685', '567 Oak Avenue', 'Cork', 'Ireland', 'T12 AB34'),
(6, 'Emily', 'Brown', 'ebrown@hotmail.com', '0876654712', '901 Maple Road', 'Dublin', 'Ireland', 'D02 CD45'),
(7, 'David', 'Taylor', 'dtaylor@gmail.com', '0865758520', '234 Pine Street', 'Belfast', 'Northern Ireland', 'BT2 2BB'),
(8, 'Lucy', 'Clark', 'lclark@yahoo.com', '0875542636', '789 Birch Lane', 'Manchester', 'United Kingdom', 'M1 1AB'),
(9, 'Peter', 'Davis', 'pdavis@aol.com', '0856635258', '432 Cedar Court', 'Dublin', 'Ireland', 'D04 EF56'),
(10, 'Anna', 'Roberts', 'aroberts@hotmail.com', '0878862514', '876 Oak Street', 'Cork', 'Ireland', 'T23 GH78'),
(11, 'Emma', 'Murphy', 'emma.murphy@gmail.com', '086 789 0133', '123 Main Street', 'Cork', 'Ireland', 'C4X2K7'),
(12, 'David', 'Walsh', 'david.walsh@hotmail.com', '087 901 2741', '456 Park Avenue', 'Dublin', 'Ireland', 'D7Y3T1'),
(13, 'Sarah', 'O\'Neill', 'sarah.oneill@yahoo.com', '089 567 8965', '789 Oak Drive', 'Galway', 'Ireland', 'G2Z9P6'),
(14, 'John', 'Byrne', 'john.byrne@aol.com', '086 9823434', '321 Elm Street', 'Limerick', 'Ireland', 'L9X5F4'),
(15, 'Aoife', 'Ryan', 'aoife.ryan@gmail.com', '086 345 6566', '456 Main Street', 'Waterford', 'Ireland', 'W1Y2T8'),
(16, 'Liam', 'Smith', 'liam.smith@hotmail.com', '085 123 4567', '54 Oakwood Avenue', 'London', 'UK', 'SW14 8AZ'),
(17, 'Grace', 'Wilson', 'grace.wilson@gmail.com', '085 234 5678', '78 Maple Street', 'Birmingham', 'UK', 'B23 7KL'),
(18, 'Seán', 'O\'Connor', 'sean.oconnor@yahoo.com', '086 345 6789', '42 South Terrace', 'Dublin', 'Ireland', 'D08 CX94'),
(19, 'Oliver', 'Davis', 'oliver.davis@hotmail.com', '083 456 7890', '15 Rosewood Drive', 'Galway', 'Ireland', 'H91 Y0F2'),
(20, 'Sophie', 'Johnson', 'sophie.johnson@aol.com', '089 567 8901', '97 Elm Street', 'Cork', 'Ireland', 'T12 H3C9'),
(21, 'Tom', 'Taylor', 'tom.taylor@hotmail.com', '085 678 9012', '22 Park View', 'Belfast', 'UK', 'BT9 6FR'),
(22, 'Amelia', 'Smith', 'amelia.smith@gmail.com', '086 789 0123', '51 Cedar Road', 'Dublin', 'Ireland', 'D07 W4E0'),
(23, 'Jack', 'Williams', 'jack.williams@yahoo.com', '083 890 1234', '73 Ashwood Lane', 'Birmingham', 'UK', 'B17 9BN'),
(24, 'Ava', 'Jones', 'ava.jones@hotmail.com', '087 901 2345', '16 Beach Road', 'Galway', 'Ireland', 'H91 F6W4'),
(25, 'Finn', 'Davies', 'finn.davies@aol.com', '086 012 3456', '37 Beechwood Avenue', 'Cork', 'Ireland', 'T23 K9Y4'),
(26, 'Freya', 'Brown', 'freya.brown@gmail.com', '085 123 4567', '98 Hilltop Road', 'London', 'UK', 'NW8 9HB'),
(27, 'Eoin', 'McCarthy', 'eoin.mccarthy@yahoo.com', '086 234 5678', '24 Glenmore Drive', 'Belfast', 'UK', 'BT8 7YX'),
(28, 'Lilly', 'Wilson', 'lilly.wilson@hotmail.com', '083 345 6789', '62 Cedarwood Road', 'Dublin', 'Ireland', 'D09 P3E2'),
(29, 'Harry', 'Kelly', 'harry.kelly@aol.com', '089 456 7890', '51 Rockfield Close', 'Galway', 'Ireland', 'H91 Y7V2'),
(30, 'Mia', 'Robinson', 'mia.robinson@gmail.com', '085 567 8901', '19 Main Street', 'Birmingham', 'UK', 'B16 8HD'),
(31, 'Ruth', 'Mullen', 'ruthmullen@yahoo.com', '0851234567', '12 Oak Drive', 'Limerick', 'Ireland', 'V94 7WT'),
(32, 'Tina', 'Holland', 'tinaholland@hotmail.com', '0861234567', '10 Chestnut Avenue', 'London', 'UK', 'SW1A 2AA'),
(33, 'Connor', 'Doyle', 'connordoyle@gmail.com', '0831234567', '5 Elm Street', 'Galway', 'Ireland', 'H91 5YF'),
(34, 'Kerry', 'Brennan', 'kerrybrennan@aol.com', '0871234567', '15 High Street', 'Belfast', 'UK', 'BT1 2AA'),
(35, 'Gerald', 'O\'Neill', 'geraldoneill@yahoo.com', '0851234567', '20 Maple Road', 'Dublin', 'Ireland', 'D02 X283'),
(36, 'Sharon', 'Simpson', 'sharonsimpson@hotmail.com', '0861234567', '25 Oak Avenue', 'Edinburgh', 'UK', 'EH1 1AA'),
(37, 'David', 'Kelly', 'davidkelly@gmail.com', '0831234567', '7 Elm Street', 'Cork', 'Ireland', 'T12 6WT'),
(38, 'Mandy', 'Rogers', 'mandyrogers@aol.com', '0871234567', '30 Pine Drive', 'Cardiff', 'UK', 'CF10 1AA'),
(39, 'Sean', 'Walsh', 'seanwalsh@yahoo.com', '0851234567', '40 Oak Road', 'Birmingham', 'UK', 'B1 2AA'),
(40, 'Lisa', 'Daly', 'lisadaly@hotmail.com', '0861234567', '8 Maple Avenue', 'Dublin', 'Ireland', 'D08 HN3X'),
(41, 'Grace', 'Byrne', 'gracebyrne@gmail.com', '0831234567', '9 Elm Street', 'Belfast', 'UK', 'BT2 7AP'),
(42, 'Patrick', 'McNamara', 'patrickmcnamara@hotmail.com', '0871234567', '13 Chestnut Avenue', 'Manchester', 'UK', 'M1 1AA'),
(43, 'Ciara', 'O\'Sullivan', 'ciaraosullivan@aol.com', '0851234567', '17 Oak Drive', 'Dublin', 'Ireland', 'D04 C932'),
(44, 'Jack', 'O\'Connor', 'jackoconnor@yahoo.com', '0861234567', '22 Maple Road', 'Glasgow', 'UK', 'G1 1AA'),
(45, 'Aisling', 'Murphy', 'aislingmurphy@gmail.com', '0831234567', '3 Elm Street', 'Galway', 'Ireland', 'H91 892'),
(46, 'Terry', 'Boyle', 'terboyle@gmail.com', '0871234567', '123 Dorset St', 'Dublin', 'Ireland', 'D01 AB12'),
(47, 'Catherine', 'Lynch', 'catlyn@hotmail.com', '0869876543', '456 Patrick St', 'Cork', 'Ireland', 'T12 XY34'),
(48, 'Robert', 'Smith', 'bobsmith@aol.com', '0855555555', '789 Low St', 'Belfast', 'UK', 'BT1 1AB'),
(49, 'Alan', 'Grimshaw', 'agrim@gmail.com', '0871234567', '123 Kildare St', 'Dublin', 'Ireland', 'D01 AB23'),
(50, 'Mary', 'Meehan', 'mm@hotmail.com', '0862345678', '456 Elm St', 'Belfast', 'UK', 'BT1 1AA'),
(51, 'Sarah', 'Murphy', 'sarahmurphy@yahoo.com', '0873456789', '789 Oak St', 'Cork', 'Ireland', 'T12 XY34'),
(52, 'David', 'Smith', 'davidsmith@aol.com', '0834567890', '321 Maple St', 'Galway', 'Ireland', 'H91 ZY98'),
(53, 'Emma', 'Jones', 'emmajones@gmail.com', '0855678901', '654 Birch St', 'London', 'UK', 'W1T 3JH'),
(54, 'Adam', 'Brown', 'adambrown@hotmail.com', '0866789012', '987 Cedar St', 'Manchester', 'UK', 'M1 1AB'),
(55, 'Laura', 'Taylor', 'laurataylor@yahoo.com', '0877890123', '147 Pine St', 'Dublin', 'Ireland', 'D02 CD56'),
(56, 'Mark', 'Wilson', 'markwilson@aol.com', '0838901234', '258 Oak St', 'Belfast', 'UK', 'BT2 3CD'),
(57, 'Clare', 'O\'Brien', 'clareobrien@gmail.com', '0869012345', '369 Elm St', 'Limerick', 'Ireland', 'V94 EF12'),
(58, 'Michael', 'Johnson', 'michaeljohnson@hotmail.com', '0850123456', '753 Maple St', 'Edinburgh', 'UK', 'EH1 1QR'),
(59, 'Emily', 'Smith', 'emily.smith@hotmail.com', '+44 7912 345678', '45 Oak Street', 'Leeds', 'United Kingdom', 'LS2 7SU'),
(60, 'Mohammed', 'Ali', 'mohammed.ali@gmail.com', '+353 85 1234567', '27 Main Street', 'Dublin', 'Ireland', 'D01 X4C7'),
(61, 'Michael', 'Nguyen', 'michaelnguyen@gmail.com', '0421234567', '23 Beach Street', 'Sydney', 'Australia', '2000'),
(62, 'Jenny', 'Chen', 'jennychen@hotmail.com', '0431234567', '15 George Street', 'Auckland', 'New Zealand', '1010'),
(63, 'Alex', 'Lee', 'alexlee@aol.com', '0451234567', '10 King Street', 'Melbourne', 'Australia', '3000'),
(64, 'Sarah', 'Wong', 'sarahwong@yahoo.com', '0471234567', '5 Queen Street', 'Wellington', 'New Zealand', '6011'),
(65, 'David', 'Kim', 'davidkim@gmail.com', '0441234567', '17 Ocean Road', 'Perth', 'Australia', '6000'),
(66, 'Samantha', 'Chang', 'samanthachang@hotmail.com', '0431234567', '12 Beach Avenue', 'Sydney', 'Australia', '2000'),
(67, 'Tony', 'Zhang', 'tonyzhang@aol.com', '0451234567', '7 King Street', 'Brisbane', 'Australia', '4000'),
(68, 'Emily', 'Chu', 'emilychu@yahoo.com', '0471234567', '20 Victoria Road', 'Auckland', 'New Zealand', '1010'),
(69, 'Benjamin', 'Wong', 'benjaminwong@gmail.com', '0421234567', '25 Main Street', 'Melbourne', 'Australia', '3000'),
(70, 'Lucy', 'Li', 'lucyli@hotmail.com', '0431234567', '30 Ocean Drive', 'Sydney', 'Australia', '2000'),
(71, 'William', 'Chen', 'williamchen@yahoo.com', '0451234567', '35 Beach Street', 'Auckland', 'New Zealand', '1010'),
(72, 'Jennifer', 'Tran', 'jennifertran@aol.com', '0471234567', '18 Queen Street', 'Perth', 'Australia', '6000'),
(73, 'Joshua', 'Kim', 'joshuakim@gmail.com', '0421234567', '22 Ocean Road', 'Melbourne', 'Australia', '3000'),
(74, 'Grace', 'Park', 'gracepark@hotmail.com', '0431234567', '27 Main Street', 'Brisbane', 'Australia', '4000'),
(75, 'Daniel', 'Choi', 'danielchoi@yahoo.com', '0451234567', '5 George Street', 'Wellington', 'New Zealand', '6011'),
(76, 'Olivia', 'Nguyen', 'olivianguyen@gmail.com', '0421234567', '8 King Street', 'Sydney', 'Australia', '2000'),
(77, 'Mary', 'Jones', 'mjones@gmail.com', '+3531234567', '1 Main St', 'Dublin', 'Ireland', 'D01 ABC1'),
(78, 'John', 'Smith', 'john_smith@hotmail.com', '+4412345678', '2 High St', 'Manchester', 'UK', 'M1 1AB'),
(79, 'Sarah', 'Brown', 'sbrown@aol.com', '+3532345678', '3 Park Rd', 'Cork', 'Ireland', 'T12 XYZ2'),
(80, 'David', 'Taylor', 'dtaylor@yahoo.com', '+4416324789', '4 Station Rd', 'London', 'UK', 'SW1A 1AA'),
(81, 'Emma', 'Wilson', 'ewilson@gmail.com', '+3534567890', '5 Church St', 'Dublin', 'Ireland', 'D02 DEF3'),
(82, 'James', 'Thompson', 'jthompson@hotmail.com', '+4478901234', '6 Market Square', 'Manchester', 'UK', 'M2 2BC'),
(83, 'Rachel', 'Johnson', 'rjohnson@aol.com', '+3535678901', '7 Bridge St', 'Galway', 'Ireland', 'H91 EFG4'),
(84, 'Peter', 'Lee', 'plee@yahoo.com', '+4419234567', '8 Queen St', 'Birmingham', 'UK', 'B1 1AA'),
(85, 'Karen', 'Miller', 'kmiller@gmail.com', '+3537890123', '9 Main St', 'Limerick', 'Ireland', 'V94 GHI5'),
(86, 'William', 'Walker', 'wwalker@hotmail.com', '+4476123456', '10 High St', 'Bristol', 'UK', 'BS1 1AA'),
(87, 'Oliver', 'Wilson', 'oliver.wilson@hotmail.com', '0859876543', '17 Green Road', 'Cork', 'Ireland', 'T12 XYZ'),
(88, 'Sophia', 'Brown', 'sophia.brown@yahoo.com', '0862468135', '12 High Street', 'Belfast', 'UK', 'BT1 2AB'),
(89, 'William', 'Johnson', 'william.johnson@gmail.com', '0834445556', '5 Park Avenue', 'London', 'UK', 'SE1 7TP'),
(90, 'Ava', 'Garcia', 'ava.garcia@hotmail.com', '0872223333', '27 Bridge Street', 'Dublin', 'Ireland', 'D08 KKK'),
(91, 'Ethan', 'Miller', 'ethan.miller@aol.com', '0867778888', '10 Church Road', 'Galway', 'Ireland', 'H91 XYZ'),
(92, 'Isabella', 'Davis', 'isabella.davis@yahoo.com', '0859998888', '3 Hillside Avenue', 'Belfast', 'UK', 'BT2 3CD'),
(93, 'James', 'Rodriguez', 'james.rodriguez@gmail.com', '0874445556', '15 Main Street', 'Cork', 'Ireland', 'T23 YYY'),
(94, 'Mia', 'Martinez', 'mia.martinez@hotmail.com', '0867779999', '9 Market Square', 'Belfast', 'UK', 'BT3 4EF'),
(95, 'Benjamin', 'Clark', 'benjamin.clark@gmail.com', '0853334444', '11 Victoria Road', 'London', 'UK', 'SW1A 1AA'),
(96, 'Emma', 'Smith', 'emma.smith@gmail.com', '0871234567', '23 Main Street', 'Dublin', 'Ireland', 'D01 ABC'),
(97, 'Tara', 'O\'Neill', 'tarao123@gmail.com', '+353-86-123-4567', '123 Main St', 'Dublin', 'Ireland', 'D01 AB12'),
(98, 'Tom', 'Williams', 'tomw123@hotmail.com', '+44-7712-345678', '456 Elm Ave', 'London', 'United Kingdom', 'SW1V 2ER'),
(99, 'Samantha', 'Smith', 'samanthas456@yahoo.com', '+44-7456-789123', '789 Oak Rd', 'Belfast', 'Northern Ireland', 'BT1 4GB'),
(100, 'Adam', 'Jones', 'adamj321@aol.com', '+353-87-987-6543', '234 Beech St', 'Cork', 'Ireland', 'T12 XY34'),
(101, 'Jessica', 'Brown', 'jessicab987@yahoo.com', '+44-7812-345678', '567 Maple Dr', 'Glasgow', 'Scotland', 'G1 2AB'),
(102, 'Emily', 'Davis', 'emilyd456@gmail.com', '+44-7456-123456', '890 Pine Blvd', 'Dublin', 'Ireland', 'D02 CD34'),
(103, 'David', 'Wilson', 'davidw789@hotmail.com', '+44-7712-345678', '123 Oak Rd', 'London', 'United Kingdom', 'NW1 2BC'),
(104, 'Aoife', 'Murphy', 'aoifem567@yahoo.com', '+353-87-789-0123', '456 Cherry Ave', 'Limerick', 'Ireland', 'V94 WX56'),
(105, 'Katie', 'Taylor', 'ktaylor321@aol.com', '+353-87-456-7890', '789 Walnut St', 'Dublin', 'Ireland', 'D04 EF56'),
(106, 'John', 'Johnson', 'johnj789@gmail.com', '+44-7812-345678', '234 Maple Ave', 'Manchester', 'United Kingdom', 'M1 1AB'),
(107, 'Lucy', 'Lee', 'lucyl123@hotmail.com', '+44-7456-789123', '567 Beech Rd', 'Edinburgh', 'Scotland', 'EH1 3AB'),
(108, 'James', 'Brown', 'jamesb456@yahoo.com', '+353-87-987-6543', '890 Elm St', 'Galway', 'Ireland', 'H91 AB12'),
(109, 'Oliver', 'Davis', 'oliverd321@gmail.com', '+44-7712-345678', '123 Pine Ave', 'Belfast', 'Northern Ireland', 'BT1 2BC'),
(110, 'Emma', 'Williams', 'emmaw789@yahoo.com', '+44-7812-345678', '456 Oak Rd', 'Dublin', 'Ireland', 'D04 CD34'),
(111, 'Sophie', 'Jones', 'sophiej567@aol.com', '+353-87-789-0123', '789 Maple Blvd', 'Cork', 'Ireland', 'T12 XY56'),
(112, 'Oliver', 'Johnson', 'oliverjohnson@gmail.com', '083-123-4567', '123 Main St', 'Dublin', 'Ireland', 'D01 AB23'),
(113, 'Sophia', 'Williams', 'sophiawilliams@hotmail.com', '087-234-5678', '456 High St', 'Galway', 'Ireland', 'H91 XY12'),
(114, 'Jackson', 'Brown', 'jacksonbrown@yahoo.com', '086-345-6789', '789 Park Ave', 'London', 'UK', 'W1J 7BX'),
(115, 'Emma', 'Garcia', 'emmagarcia@aol.com', '089-456-7890', '321 Elm St', 'Manchester', 'UK', 'M1 1AB'),
(116, 'Aiden', 'Taylor', 'aidentaylor@gmail.com', '085-567-8901', '567 4th St', 'Belfast', 'UK', 'BT1 3LP'),
(117, 'Isabella', 'Martinez', 'isabellamartinez@hotmail.com', '087-678-9012', '890 5th Ave', 'Cork', 'Ireland', 'T12 XY34'),
(118, 'Liam', 'Smith', 'liamsmith@yahoo.com', '086-789-0123', '432 Baker St', 'Dublin', 'Ireland', 'D02 CD45'),
(119, 'Mia', 'Jones', 'miajones@aol.com', '083-890-1234', '765 2nd St', 'Edinburgh', 'UK', 'EH1 1AA'),
(120, 'Lucas', 'Gonzalez', 'lucasgonzalez@gmail.com', '089-012-3456', '234 Oak St', 'Liverpool', 'UK', 'L1 1AA'),
(121, 'Avery', 'Davis', 'averydavis@hotmail.com', '087-123-4567', '678 Maple Ave', 'Belfast', 'UK', 'BT2 7ED'),
(122, 'Emily', 'Jones', 'emilyjones@gmail.com', '07862 986754', '34 Cedar Avenue', 'Dublin', 'Ireland', 'D04 KX28'),
(123, 'Charlie', 'Smith', 'charliesmith@hotmail.com', '07742 675432', '22 Oak Road', 'Belfast', 'Northern Ireland', 'BT5 5DT'),
(124, 'Sophie', 'Wilson', 'sophiewilson@aol.com', '07593 347659', '12 Elm Close', 'Manchester', 'England', 'M14 6XQ'),
(125, 'Benjamin', 'Brown', 'benjaminbrown@hotmail.com', '07732 876543', '87 High Street', 'Glasgow', 'Scotland', 'G1 1LE'),
(126, 'Grace', 'Davies', 'gracedavies@gmail.com', '07912 345678', '43 Victoria Road', 'Birmingham', 'England', 'B1 3JP'),
(127, 'William', 'Evans', 'williamevans@yahoo.com', '07798 756432', '9 Park Street', 'Dublin', 'Ireland', 'D02 CF83'),
(128, 'Chloe', 'Johnson', 'chloejohnson@hotmail.com', '07967 547896', '3 Station Road', 'Belfast', 'Northern Ireland', 'BT1 6PB'),
(129, 'Edward', 'Miller', 'edwardmiller@aol.com', '07571 234567', '21 The Avenue', 'Liverpool', 'England', 'L1 2PN'),
(130, 'Amelia', 'Davis', 'ameliadavis@gmail.com', '07852 976543', '16 Park View', 'Dublin', 'Ireland', 'D06 WV13'),
(131, 'Jacob', 'Wilson', 'jacobwilson@hotmail.com', '07720 845672', '10 Main Street', 'Belfast', 'Northern Ireland', 'BT4 2BG'),
(132, 'Emily', 'Jackson', 'emilyjackson@yahoo.com', '07761 758493', '67 Oak Road', 'Edinburgh', 'Scotland', 'EH4 2LW'),
(133, 'Daniel', 'White', 'danielwhite@aol.com', '07978 123456', '28 Victoria Street', 'Glasgow', 'Scotland', 'G2 1DH'),
(134, 'Mia', 'Clark', 'miaclark@hotmail.com', '07887 567890', '55 The Green', 'London', 'England', 'SW1A 2AA'),
(135, 'William', 'Leeson', 'williamlee@gmail.com', '07543 789012', '18 Church Road', 'Birmingham', 'England', 'B17 9PW'),
(142, 'Des', 'Chambers', 'des.chambers@tus.ie', '061 208208', '123 Fake St', 'Limerick', 'Ireland', 'V94 WW34'),
(143, 'William', 'Anderson', 'william.anderson@berge.com', '9583098913', '3002 Stoltenberg Ranch', 'Olsonburgh', 'Nauru', '48645-1606'),
(144, 'Krystal', 'Kuvalis', 'krystal.kuvalis@mayert.org', '9747120097', '58222 Librada Motorway', 'Port Bulah', 'Syrian Arab Republic', '73278'),
(145, 'Norberto', 'Schultz', 'norberto.schultz@schumm.org', '6004515101', '05086 Bahringer Stravenue', 'Cleliafurt', 'Palau', '71420'),
(146, 'Thomasine', 'Zieme', 'thomasine.zieme@schneider.org', '12120479035', '20751 Amos Flat', 'Mortontown', 'Slovakia (Slovak Republic)', '33868'),
(147, 'Brett', 'Stanton', 'brett.stanton@tremblay.info', '1661406694', '99649 Galen Lodge', 'Lake Leeann', 'Jamaica', '26805');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `order_status_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `order_date`, `total`, `order_status_id`) VALUES
(1, 123, '2022-05-01 12:30:00', '120.00', 1),
(2, 129, '2022-06-03 11:45:00', '75.50', 2),
(3, 107, '2022-06-07 15:20:00', '215.75', 3),
(4, 135, '2022-06-10 10:15:00', '90.00', 1),
(5, 135, '2022-06-15 14:00:00', '58.00', 4),
(6, 111, '2022-06-20 09:30:00', '105.00', 2),
(7, 85, '2022-06-22 16:45:00', '225.00', 3),
(8, 45, '2022-07-01 10:00:00', '33.75', 1),
(9, 26, '2022-07-05 12:15:00', '50.50', 2),
(10, 24, '2022-07-10 11:00:00', '92.80', 3),
(11, 40, '2022-07-11 09:30:00', '75.00', 1),
(12, 130, '2022-07-14 14:20:00', '160.00', 2),
(13, 100, '2022-07-18 17:30:00', '42.00', 3),
(14, 105, '2022-08-01 10:45:00', '55.00', 1),
(15, 8, '2022-08-05 11:15:00', '110.25', 2),
(16, 15, '2022-08-10 15:00:00', '95.50', 3),
(17, 24, '2022-08-15 09:30:00', '212.00', 1),
(18, 26, '2022-08-22 12:45:00', '80.00', 2),
(19, 65, '2022-09-01 14:00:00', '175.50', 3),
(20, 65, '2022-09-07 10:30:00', '140.00', 1),
(21, 128, '2022-11-01 10:00:00', '299.99', 3),
(22, 122, '2022-11-02 11:30:00', '129.99', 3),
(23, 130, '2022-11-03 09:45:00', '38.97', 1),
(24, 124, '2022-11-04 14:15:00', '199.99', 3),
(25, 131, '2022-11-05 16:30:00', '68.94', 2),
(26, 127, '2022-11-06 13:45:00', '149.99', 3),
(27, 134, '2022-11-07 09:00:00', '119.99', 1),
(28, 133, '2022-11-08 12:00:00', '169.99', 3),
(29, 126, '2022-11-09 15:30:00', '249.99', 3),
(30, 123, '2022-11-10 17:15:00', '349.99', 2),
(31, 129, '2022-11-11 11:30:00', '89.99', 3),
(32, 125, '2022-11-12 14:45:00', '72.97', 1),
(33, 132, '2022-11-13 10:15:00', '119.99', 3),
(34, 128, '2022-11-14 11:30:00', '79.98', 3),
(35, 122, '2022-11-15 09:00:00', '459.96', 2),
(36, 130, '2022-11-16 12:30:00', '74.99', 3),
(37, 124, '2022-11-17 15:15:00', '149.99', 1),
(38, 131, '2022-11-18 10:45:00', '219.99', 3),
(39, 127, '2022-11-19 14:00:00', '299.99', 3),
(40, 134, '2022-11-20 16:45:00', '54.97', 2),
(41, 87, '2022-09-03 10:35:12', '79.99', 3),
(42, 129, '2022-09-04 11:24:08', '94.96', 1),
(43, 124, '2022-09-04 13:47:23', '89.99', 3),
(44, 92, '2022-09-05 15:02:41', '119.97', 2),
(45, 117, '2022-09-06 09:18:57', '239.96', 3),
(46, 104, '2022-09-06 14:52:11', '149.99', 1),
(47, 127, '2022-09-07 16:03:49', '29.99', 3),
(48, 107, '2022-09-08 08:20:02', '169.99', 2),
(49, 133, '2022-09-09 12:35:46', '99.99', 3),
(50, 102, '2022-09-09 14:55:08', '39.99', 1),
(51, 84, '2022-09-10 17:21:17', '129.99', 3),
(52, 115, '2022-09-11 10:44:33', '29.97', 2),
(53, 112, '2022-09-11 12:52:09', '49.98', 3),
(54, 95, '2022-09-12 13:22:54', '109.99', 1),
(55, 108, '2022-09-13 14:38:21', '13.98', 3),
(56, 126, '2022-09-14 09:05:46', '799.98', 2),
(57, 131, '2022-09-14 11:16:39', '29.99', 3),
(58, 122, '2022-09-15 12:45:07', '109.99', 1),
(59, 125, '2022-09-16 13:58:33', '79.99', 3),
(60, 110, '2022-09-17 15:05:52', '99.99', 2),
(61, 119, '2022-09-18 16:12:18', '59.99', 3),
(62, 131, '2022-09-18 17:56:44', '119.99', 1),
(63, 118, '2022-09-19 10:24:19', '139.99', 3),
(64, 98, '2022-09-20 12:05:03', '19.98', 2),
(65, 103, '2022-09-21 13:46:57', '159.99', 3),
(66, 63, '2022-12-10 14:35:00', '49.99', 3),
(67, 131, '2022-12-11 16:20:00', '32.50', 1),
(68, 124, '2022-12-12 09:45:00', '81.25', 2),
(69, 129, '2022-12-14 11:15:00', '27.50', 3),
(70, 86, '2022-12-15 17:30:00', '359.98', 1),
(71, 120, '2022-12-16 14:55:00', '25.98', 3),
(72, 125, '2022-12-18 09:20:00', '75.00', 2),
(73, 132, '2022-12-19 12:40:00', '199.99', 1),
(74, 26, '2022-12-20 15:10:00', '12.99', 3),
(75, 125, '2022-12-22 10:45:00', '24.99', 2),
(76, 17, '2022-12-23 13:55:00', '18.99', 3),
(77, 128, '2022-12-24 16:30:00', '50.00', 1),
(78, 130, '2022-12-26 11:00:00', '42.50', 3),
(79, 134, '2022-12-27 14:20:00', '24.99', 2),
(80, 123, '2022-12-28 17:40:00', '65.00', 3),
(81, 14, '2022-12-30 12:15:00', '7.99', 1),
(82, 122, '2022-12-31 15:25:00', '19.98', 3),
(83, 135, '2023-01-02 10:50:00', '52.50', 2),
(84, 133, '2023-01-03 13:10:00', '39.99', 3),
(85, 16, '2023-01-05 16:30:00', '49.99', 1),
(86, 127, '2022-11-05 09:23:41', '134.99', 3),
(87, 110, '2022-12-11 14:56:29', '72.50', 2),
(88, 124, '2022-12-18 11:07:02', '52.99', 5),
(89, 128, '2023-01-06 16:45:12', '159.95', 1),
(90, 120, '2023-01-08 08:32:59', '42.00', 3),
(91, 131, '2023-01-12 10:17:41', '86.75', 3),
(92, 127, '2023-01-16 17:29:12', '118.80', 2),
(93, 118, '2023-01-18 13:45:55', '74.99', 3),
(94, 123, '2023-01-23 19:01:04', '1199.97', 1),
(95, 132, '2023-01-25 08:15:23', '12.99', 3),
(96, 120, '2023-01-29 14:37:51', '185.50', 3),
(97, 125, '2023-02-01 10:55:34', '29.99', 2),
(98, 125, '2023-02-03 16:08:49', '16.99', 1),
(99, 128, '2023-02-06 20:23:12', '14.99', 5),
(100, 129, '2023-02-08 12:45:22', '119.95', 3),
(101, 134, '2023-02-11 11:07:14', '119.98', 3),
(102, 120, '2023-02-15 15:28:43', '12.99', 2),
(103, 129, '2023-02-18 09:46:31', '225.00', 3),
(104, 122, '2023-02-22 12:55:44', '42.00', 3),
(105, 127, '2023-02-24 17:07:05', '119.98', 1),
(106, 125, '2022-11-17 09:30:00', '109.99', 5),
(107, 121, '2022-10-22 13:15:00', '319.99', 2),
(108, 130, '2022-10-27 11:45:00', '85.00', 1),
(109, 126, '2022-12-01 16:20:00', '39.99', 5),
(110, 129, '2022-11-05 14:30:00', '179.99', 2),
(111, 123, '2022-11-28 10:00:00', '599.99', 1),
(112, 127, '2023-01-12 15:45:00', '12.99', 5),
(113, 131, '2023-02-08 18:00:00', '49.99', 2),
(114, 128, '2023-01-22 12:30:00', '359.99', 1),
(115, 132, '2022-10-16 17:00:00', '149.99', 5),
(116, 124, '2022-12-18 14:15:00', '49.98', 2),
(117, 129, '2022-12-10 09:00:00', '39.99', 1),
(118, 122, '2023-01-08 15:30:00', '159.99', 5),
(119, 131, '2022-11-11 16:45:00', '119.99', 2),
(120, 133, '2022-10-25 11:00:00', '179.99', 1),
(121, 128, '2023-01-19 10:00:00', '219.99', 5),
(122, 126, '2022-12-20 14:15:00', '34.99', 2),
(123, 125, '2022-10-28 16:30:00', '14.99', 1),
(124, 130, '2022-11-02 09:45:00', '89.99', 5),
(125, 123, '2022-11-24 12:00:00', '399.99', 2),
(126, 131, '2023-01-16 14:45:00', '99.99', 1),
(127, 124, '2022-12-14 18:30:00', '179.99', 5),
(128, 126, '2022-10-18 11:00:00', '159.99', 2),
(129, 122, '2022-10-29 14:15:00', '349.99', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`order_item_id`, `order_id`, `product_id`, `quantity`, `price`) VALUES
(1, 17, 26, 7, '12.07'),
(2, 37, 13, 2, '74.35'),
(3, 6, 32, 6, '39.12'),
(4, 3, 11, 2, '11.97'),
(5, 24, 34, 10, '10.99'),
(6, 14, 11, 10, '69.58'),
(7, 21, 17, 1, '12.52'),
(8, 5, 24, 6, '12.01'),
(9, 18, 32, 3, '90.83'),
(10, 21, 31, 9, '92.62'),
(11, 1, 15, 9, '22.01'),
(12, 9, 33, 5, '73.53'),
(13, 7, 37, 2, '91.26'),
(14, 2, 21, 6, '7.75'),
(15, 17, 28, 10, '41.74'),
(16, 7, 34, 8, '32.67'),
(17, 3, 23, 7, '58.76'),
(18, 25, 18, 8, '53.51'),
(19, 7, 24, 5, '34.84'),
(20, 8, 13, 9, '41.99'),
(21, 10, 18, 3, '16.20'),
(22, 21, 6, 7, '89.12'),
(23, 13, 17, 9, '21.40'),
(24, 6, 17, 6, '50.67'),
(25, 22, 13, 4, '91.62'),
(26, 13, 15, 6, '82.33'),
(27, 10, 6, 8, '37.71'),
(28, 14, 11, 1, '21.87'),
(29, 41, 34, 8, '6.05'),
(30, 26, 13, 1, '42.22'),
(31, 21, 15, 8, '51.03'),
(32, 8, 34, 7, '49.62'),
(33, 14, 37, 4, '84.45'),
(34, 5, 13, 2, '82.44'),
(35, 17, 19, 7, '88.16'),
(36, 11, 11, 3, '25.87'),
(37, 15, 29, 4, '47.23'),
(38, 6, 24, 6, '68.57'),
(39, 25, 8, 5, '54.32'),
(40, 11, 8, 9, '87.67'),
(41, 21, 33, 2, '44.93'),
(42, 17, 11, 10, '68.64'),
(43, 19, 6, 9, '74.79'),
(44, 5, 25, 8, '73.23'),
(45, 12, 31, 9, '86.08'),
(46, 21, 37, 7, '57.40'),
(47, 21, 33, 2, '11.77'),
(48, 29, 29, 9, '76.29'),
(49, 10, 17, 2, '62.75'),
(50, 14, 23, 5, '72.51'),
(51, 5, 17, 8, '47.39'),
(52, 29, 22, 10, '89.44'),
(53, 49, 28, 6, '75.40'),
(54, 28, 22, 10, '21.73'),
(55, 28, 8, 2, '40.39'),
(56, 8, 8, 3, '54.10'),
(57, 27, 38, 3, '14.55'),
(58, 26, 2, 6, '64.78'),
(59, 16, 27, 10, '69.52'),
(60, 16, 23, 4, '96.88'),
(61, 24, 5, 3, '73.91'),
(62, 28, 25, 3, '50.20'),
(63, 17, 14, 2, '47.57'),
(64, 28, 13, 9, '19.93'),
(65, 9, 3, 4, '63.92'),
(66, 1, 12, 4, '99.02'),
(67, 24, 7, 4, '26.13'),
(68, 3, 29, 5, '17.37'),
(69, 7, 30, 2, '64.96'),
(70, 17, 38, 2, '95.96'),
(71, 8, 14, 1, '31.92'),
(72, 6, 5, 10, '66.56'),
(73, 8, 11, 7, '35.39'),
(74, 21, 25, 1, '27.32'),
(75, 3, 28, 4, '69.72'),
(76, 9, 16, 2, '64.60'),
(77, 19, 10, 4, '5.79'),
(78, 29, 37, 8, '7.70'),
(79, 24, 37, 4, '13.57'),
(80, 8, 1, 4, '64.49'),
(81, 4, 27, 2, '51.20'),
(82, 3, 1, 9, '11.78'),
(83, 26, 6, 2, '12.05'),
(84, 3, 5, 5, '69.66'),
(85, 6, 32, 6, '48.56'),
(86, 16, 13, 1, '16.73'),
(87, 16, 15, 3, '25.49'),
(88, 8, 24, 4, '96.41'),
(89, 21, 25, 2, '60.12'),
(90, 18, 9, 4, '12.31'),
(91, 10, 17, 2, '43.38'),
(92, 18, 32, 4, '36.97'),
(93, 17, 32, 5, '72.18'),
(94, 7, 38, 3, '31.80'),
(95, 20, 21, 7, '49.92'),
(96, 16, 10, 7, '38.39'),
(97, 27, 19, 8, '29.48'),
(98, 2, 17, 1, '93.35'),
(99, 24, 29, 3, '16.44'),
(100, 43, 17, 9, '98.44'),
(101, 6, 9, 6, '33.25'),
(102, 21, 25, 2, '60.15'),
(103, 18, 9, 4, '8.14'),
(104, 5, 24, 7, '33.95'),
(105, 19, 12, 6, '86.03'),
(106, 19, 22, 10, '88.01'),
(107, 19, 23, 1, '64.15'),
(108, 43, 15, 4, '78.42'),
(109, 21, 8, 9, '66.04'),
(110, 20, 20, 5, '79.53'),
(111, 16, 15, 3, '10.99'),
(112, 18, 32, 4, '12.53'),
(113, 14, 4, 1, '11.33'),
(114, 4, 17, 8, '46.66'),
(115, 29, 20, 8, '5.23'),
(116, 26, 13, 1, '34.49'),
(117, 11, 35, 4, '29.83'),
(118, 4, 34, 1, '54.15'),
(119, 14, 32, 8, '30.88'),
(120, 3, 24, 9, '54.80'),
(121, 39, 11, 6, '76.45'),
(122, 6, 27, 10, '52.71'),
(123, 22, 10, 1, '36.24'),
(124, 18, 37, 10, '16.76'),
(125, 19, 30, 1, '82.54'),
(126, 29, 17, 3, '93.25'),
(127, 27, 28, 10, '53.35'),
(128, 22, 4, 4, '37.47'),
(129, 21, 23, 8, '5.35'),
(130, 23, 32, 9, '60.13'),
(131, 14, 24, 8, '75.28'),
(132, 16, 15, 4, '75.05'),
(133, 16, 20, 10, '99.51'),
(134, 8, 13, 10, '51.85'),
(135, 23, 12, 4, '58.12'),
(136, 26, 30, 3, '84.47'),
(137, 14, 33, 9, '67.34'),
(138, 22, 31, 8, '34.50'),
(139, 10, 27, 5, '40.27'),
(140, 12, 32, 10, '23.48'),
(141, 6, 13, 2, '65.58'),
(142, 24, 4, 1, '98.62'),
(143, 23, 35, 3, '39.36'),
(144, 5, 27, 1, '26.73'),
(145, 27, 37, 1, '19.79'),
(146, 23, 13, 4, '88.80'),
(147, 9, 30, 1, '94.27'),
(148, 16, 31, 5, '86.33'),
(149, 27, 1, 4, '54.24'),
(150, 20, 29, 8, '47.80'),
(151, 26, 21, 2, '7.04'),
(152, 21, 17, 1, '13.38'),
(153, 6, 29, 2, '53.92'),
(154, 4, 1, 7, '49.15'),
(155, 7, 30, 3, '72.80'),
(156, 27, 20, 8, '18.63'),
(157, 16, 8, 4, '41.78'),
(158, 45, 24, 9, '21.62'),
(159, 14, 31, 7, '65.17'),
(160, 11, 32, 2, '12.10'),
(161, 1, 37, 7, '37.14'),
(162, 46, 35, 2, '97.48'),
(163, 14, 17, 8, '52.40'),
(164, 7, 22, 2, '30.68'),
(165, 23, 2, 9, '35.14'),
(166, 27, 26, 6, '93.81'),
(167, 27, 27, 9, '95.33'),
(168, 10, 28, 8, '43.22'),
(169, 25, 2, 7, '99.13'),
(170, 3, 21, 4, '29.27'),
(171, 5, 2, 7, '40.01'),
(172, 22, 27, 2, '72.66'),
(173, 3, 14, 6, '46.58'),
(174, 20, 3, 4, '46.69'),
(175, 6, 27, 9, '10.92'),
(176, 40, 1, 6, '82.87'),
(177, 11, 15, 9, '14.59'),
(178, 37, 15, 1, '26.94'),
(179, 28, 1, 3, '9.39'),
(180, 18, 32, 4, '20.17'),
(181, 47, 25, 8, '6.28'),
(182, 50, 14, 8, '70.82'),
(183, 6, 36, 1, '57.98'),
(184, 17, 7, 2, '22.26'),
(185, 36, 36, 2, '17.32'),
(186, 3, 2, 10, '79.30'),
(187, 28, 16, 2, '77.49'),
(188, 7, 31, 4, '39.28'),
(189, 22, 25, 10, '97.26'),
(190, 27, 26, 6, '89.49'),
(191, 21, 35, 5, '43.27'),
(192, 21, 16, 9, '19.03'),
(193, 4, 5, 3, '5.92'),
(194, 27, 34, 7, '66.61'),
(195, 8, 16, 2, '73.11'),
(196, 2, 2, 2, '40.49'),
(197, 17, 27, 9, '12.86'),
(198, 26, 8, 4, '14.81'),
(199, 15, 3, 3, '74.49'),
(200, 38, 25, 3, '55.57'),
(201, 2, 5, 5, '5.24'),
(202, 18, 38, 2, '60.80'),
(203, 19, 14, 9, '31.89'),
(204, 24, 11, 9, '53.10'),
(205, 28, 9, 3, '74.95'),
(206, 42, 37, 3, '56.70'),
(207, 26, 28, 1, '8.83'),
(208, 2, 7, 7, '76.05'),
(209, 47, 28, 3, '28.53'),
(210, 11, 4, 4, '40.95'),
(211, 27, 17, 5, '73.60'),
(212, 12, 34, 2, '7.89'),
(213, 23, 29, 5, '96.33'),
(214, 14, 20, 2, '30.80'),
(215, 25, 18, 8, '31.37'),
(216, 6, 6, 2, '25.15'),
(217, 20, 29, 8, '31.33'),
(218, 8, 21, 10, '88.44'),
(219, 20, 30, 9, '81.78'),
(220, 17, 15, 3, '10.58'),
(221, 17, 25, 6, '70.98'),
(222, 27, 16, 4, '50.66'),
(223, 12, 18, 3, '62.49'),
(224, 13, 11, 1, '66.82'),
(225, 35, 37, 9, '22.53'),
(226, 25, 37, 3, '59.08'),
(227, 29, 7, 10, '34.37'),
(228, 19, 10, 4, '92.07'),
(229, 18, 8, 2, '34.73'),
(230, 2, 10, 2, '15.42'),
(231, 1, 29, 8, '32.57'),
(232, 10, 29, 8, '66.52'),
(233, 42, 21, 1, '63.75'),
(234, 36, 31, 3, '66.81'),
(235, 19, 6, 10, '13.10'),
(236, 21, 9, 1, '56.03'),
(237, 17, 7, 2, '36.05'),
(238, 5, 28, 2, '63.38'),
(239, 18, 10, 5, '34.60'),
(240, 10, 24, 2, '15.24'),
(241, 37, 16, 2, '75.47'),
(242, 4, 17, 9, '72.49'),
(243, 4, 20, 3, '62.20'),
(244, 9, 27, 7, '97.06'),
(245, 29, 3, 4, '63.06'),
(246, 28, 38, 1, '18.27'),
(247, 48, 32, 2, '43.26'),
(248, 15, 9, 8, '84.62'),
(249, 2, 31, 9, '84.44'),
(250, 19, 23, 2, '95.04'),
(251, 65, 25, 7, '20.74'),
(252, 127, 14, 10, '47.89'),
(253, 92, 11, 9, '46.15'),
(254, 96, 24, 4, '99.02'),
(255, 124, 7, 4, '41.89'),
(256, 113, 32, 7, '6.37'),
(257, 129, 36, 7, '51.19'),
(258, 87, 34, 1, '63.63'),
(259, 122, 26, 7, '34.55'),
(260, 93, 31, 5, '71.27'),
(261, 66, 35, 10, '13.15'),
(262, 92, 16, 5, '91.83'),
(263, 73, 28, 8, '56.07'),
(264, 86, 27, 1, '40.09'),
(265, 95, 29, 1, '19.21'),
(266, 88, 38, 5, '41.13'),
(267, 89, 14, 3, '36.87'),
(268, 116, 7, 4, '30.74'),
(269, 72, 23, 2, '77.17'),
(270, 88, 5, 3, '65.72'),
(271, 96, 37, 2, '69.99'),
(272, 55, 11, 2, '90.09'),
(273, 54, 24, 10, '80.36'),
(274, 63, 18, 8, '56.10'),
(275, 77, 5, 6, '29.88'),
(276, 124, 38, 7, '30.79'),
(277, 84, 13, 4, '92.04'),
(278, 84, 16, 7, '30.88'),
(279, 72, 24, 3, '25.44'),
(280, 85, 22, 5, '73.47'),
(281, 62, 25, 8, '79.45'),
(282, 104, 3, 4, '45.49'),
(283, 60, 16, 6, '73.89'),
(284, 119, 8, 4, '23.51'),
(285, 122, 36, 10, '13.02'),
(286, 88, 6, 4, '21.38'),
(287, 120, 34, 8, '32.46'),
(288, 56, 20, 4, '22.77'),
(289, 121, 35, 9, '74.99'),
(290, 129, 29, 8, '58.38'),
(291, 92, 37, 2, '10.72'),
(292, 109, 22, 6, '17.72'),
(293, 128, 19, 6, '10.50'),
(294, 112, 28, 3, '5.64'),
(295, 77, 28, 6, '62.80'),
(296, 80, 4, 3, '18.79'),
(297, 120, 38, 3, '53.27'),
(298, 102, 29, 8, '55.81'),
(299, 83, 19, 2, '33.00'),
(300, 52, 11, 4, '80.00'),
(301, 115, 27, 10, '91.23'),
(302, 93, 37, 3, '28.10'),
(303, 92, 35, 10, '88.58'),
(304, 102, 24, 2, '11.16'),
(305, 110, 22, 6, '98.98'),
(306, 78, 30, 9, '9.98'),
(307, 99, 35, 8, '84.61'),
(308, 53, 28, 5, '23.40'),
(309, 94, 7, 3, '56.86'),
(310, 57, 31, 8, '57.40'),
(311, 78, 6, 7, '96.42'),
(312, 110, 35, 3, '44.27'),
(313, 82, 30, 7, '84.42'),
(314, 73, 38, 1, '28.58'),
(315, 59, 32, 8, '43.72'),
(316, 106, 13, 6, '70.51'),
(317, 114, 4, 10, '55.40'),
(318, 111, 10, 10, '14.05'),
(319, 94, 20, 9, '72.46'),
(320, 51, 37, 8, '87.11'),
(321, 55, 30, 7, '94.57'),
(322, 125, 36, 5, '42.90'),
(323, 102, 5, 6, '49.18'),
(324, 102, 33, 4, '23.04'),
(325, 117, 33, 7, '48.06'),
(326, 87, 37, 4, '12.67'),
(327, 68, 36, 10, '98.02'),
(328, 52, 9, 10, '33.50'),
(329, 92, 29, 2, '60.72'),
(330, 84, 15, 6, '87.10'),
(331, 92, 2, 7, '90.82'),
(332, 106, 32, 1, '87.17'),
(333, 57, 33, 1, '51.99'),
(334, 84, 27, 2, '62.39'),
(335, 99, 12, 7, '17.51'),
(336, 118, 33, 8, '29.13'),
(337, 123, 2, 4, '49.32'),
(338, 80, 20, 4, '47.57'),
(339, 54, 36, 6, '92.65'),
(340, 126, 1, 3, '21.46'),
(341, 59, 3, 10, '70.82'),
(342, 92, 22, 3, '64.39'),
(343, 75, 28, 7, '32.87'),
(344, 79, 38, 8, '99.62'),
(345, 99, 4, 7, '85.37'),
(346, 78, 9, 1, '51.55'),
(347, 79, 14, 8, '58.67'),
(348, 99, 17, 3, '11.54'),
(349, 92, 17, 7, '86.42'),
(350, 79, 11, 3, '41.01');

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `order_status_id` int(11) NOT NULL,
  `status` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`order_status_id`, `status`) VALUES
(1, 'Shipped'),
(2, 'Delivered'),
(3, 'Processing'),
(4, 'Cancelled'),
(5, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `categogy_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `description`, `price`, `categogy_id`, `image`) VALUES
(1, 'Royal Canin Food', 'Premium quality dog food', '49.99', 1, 'no-image.jpg'),
(2, 'Weight Control Cat Food', 'Healthy cat food', '39.99', 2, 'no-image.jpg'),
(3, 'Bird Cage', 'Large bird cage', '199.99', 3, 'no-image.jpg'),
(4, 'Hamster Wheel', 'Silent hamster wheel', '9.99', 4, 'no-image.jpg'),
(5, 'Fish Food', 'Nutritious fish food', '14.99', 5, 'no-image.jpg'),
(6, 'Dog Collar', 'Leather dog collar', '24.99', 1, 'no-image.jpg'),
(7, 'Cat Litter', 'Odor control cat litter', '29.99', 2, 'no-image.jpg'),
(8, 'Bird Food', 'Premium bird food', '19.99', 3, 'no-image.jpg'),
(9, 'Rabbit Hutch', 'Outdoor rabbit hutch', '399.99', 4, 'no-image.jpg'),
(10, 'Dog Leash', 'Retractable dog leash', '34.99', 1, 'no-image.jpg'),
(11, 'Cat Tree', 'Large cat tree', '179.99', 2, 'no-image.jpg'),
(12, 'Bird Toys', 'Assorted bird toys', '9.99', 3, 'no-image.jpg'),
(13, 'Guinea Pig Food', 'Healthy guinea pig food', '12.99', 4, 'no-image.jpg'),
(14, 'Dog Bed', 'Orthopedic dog bed', '89.99', 1, 'no-image.jpg'),
(15, 'Cat Toys', 'Interactive cat toys', '7.99', 2, 'no-image.jpg'),
(16, 'Bird Perch', 'Wooden bird perch', '6.99', 3, 'no-image.jpg'),
(17, 'Hamster Cage', 'Multi-level hamster cage', '59.99', 4, 'no-image.jpg'),
(18, 'Dog Treats', 'All-natural dog treats', '12.99', 1, 'no-image.jpg'),
(19, 'Cat Bed', 'Cozy cat bed', '39.99', 2, 'no-image.jpg'),
(20, 'Bird Bath', 'Ceramic bird bath', '29.99', 3, 'no-image.jpg'),
(21, 'Gerbil Food', 'Premium gerbil food mix', '7.99', 4, 'no-image.jpg'),
(22, 'Kellogs Organic Cat Food', 'High-quality, organic cat food made with all-natural ingredients.', '14.99', 6, 'no-image.jpg'),
(23, 'Harper Dog Collar', 'Stylish and durable collar for your furry friend.', '9.99', 7, 'no-image.jpg'),
(24, 'Cat Toy Set', 'Assorted set of cat toys to keep your feline entertained.', '19.99', 8, 'no-image.jpg'),
(25, 'Poochy Dog Shampoo', 'Gentle, all-natural dog shampoo to keep your pooch clean and smelling fresh.', '12.99', 9, 'no-image.jpg'),
(26, 'Pet Bed', 'Cozy and comfortable pet bed for your furry friend to rest in.', '29.99', 10, 'no-image.jpg'),
(27, 'Fish Tank', 'Stylish and spacious fish tank for your aquatic pets.', '99.99', 11, 'no-image.jpg'),
(28, 'Bronze Bird Cage', 'Large and sturdy bird cage for your feathered friend.', '49.99', 12, 'no-image.jpg'),
(29, 'Small Animal Playpen', 'Spacious playpen for your small pets to play in.', '39.99', 13, 'no-image.jpg'),
(30, 'Plastic Hamster Wheel', 'Fun and colorful hamster wheel for your furry friend to exercise in.', '7.99', 8, 'no-image.jpg'),
(31, 'Cat Scratching Post', 'Durable and fun cat scratching post to keep your felines claws in shape.', '24.99', 10, 'no-image.jpg'),
(32, 'Leather Dog Leash', 'Stylish and sturdy dog leash for your pooch.', '12.99', 7, 'no-image.jpg'),
(33, 'Pet Carrier', 'Comfortable and spacious pet carrier for travel.', '34.99', 14, 'no-image.jpg'),
(34, 'Reptile Heat Lamp', 'High-quality premium heat lamp for your reptile.', '19.99', 15, 'no-image.jpg'),
(35, 'Rabbit Hutch', 'Large and sturdy hutch for your furry friend.', '89.99', 12, 'no-image.jpg'),
(36, 'Fishy Fish Food', 'Nutritious fish food for your aquatic pets.', '7.99', 6, 'no-image.jpg'),
(37, 'Dog Brush', 'Gentle and effective dog brush to keep your pooch well-groomed.', '9.99', 9, 'no-image.jpg'),
(38, 'Birdy Bird Food', 'Premium bird food for your feathered friend.', '12.99', 6, 'no-image.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `review_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review_id`, `product_id`, `customer_id`, `rating`, `comment`, `review_date`) VALUES
(1, 23, 98, 4, 'Great product, highly recommend. Fits snugly around his neck!', '2024-10-19'),
(2, 25, 101, 5, 'My pet loves it and smells great. The best shampoo I have used', '2024-10-28'),
(3, 27, 106, 3, 'It was okay, a little bit on the small side', '2024-10-16'),
(4, 29, 112, 2, 'Disappointing quality. My dog chewed through it in no time', '2024-10-14'),
(5, 31, 124, 5, 'Fantastic service, and the product was exactly what I wanted. The cat loves it as well', '2024-10-14'),
(6, 33, 131, 4, 'Good value for the price.', '2024-10-17'),
(7, 35, 128, 3, 'Not quite what I was expecting.', '2024-11-05'),
(8, 36, 132, 4, 'Very pleased with my purchase.', '2024-10-30'),
(9, 37, 122, 5, 'Amazing quality and my pet loves it.', '2024-10-31'),
(10, 37, 104, 4, 'Good product overall, would recommend.', '2024-10-25'),
(11, 24, 124, 5, 'I love this toy set! It\'s the best one I\'ve found so far.', '2024-10-24'),
(12, 26, 130, 4, 'Pretty good product, but there are some things that could be improved like comfort for starters', '2024-11-02'),
(13, 28, 127, 3, 'It\'s an average product. Nothing too special, but it gets the job done.', '2024-10-24'),
(14, 30, 121, 2, 'Not very impressed with this product. It didn\'t work as well as I expected.', '2024-10-11'),
(15, 32, 133, 5, 'I would highly recommend this product to anyone. It\'s amazing!', '2024-11-04'),
(16, 34, 118, 4, 'I\'ve been using this product for a while now and it\'s been working great.', '2024-10-10'),
(17, 36, 129, 3, 'It\'s an okay product. I\'ve tried better ones, but this one isn\'t bad.', '2024-10-26'),
(18, 37, 132, 2, 'I was disappointed with this brush. It didn\'t live up to the hype.', '2024-11-01'),
(19, 23, 123, 5, 'This product is a game changer! I can\'t imagine using anything else.', '2024-10-13'),
(20, 35, 125, 4, 'Overall, I\'m pretty happy with this product. It does what it\'s supposed to do.', '2024-10-19'),
(21, 18, 110, 4, 'My pet loves this toy! It has held up well so far.', '2024-10-16'),
(22, 14, 129, 3, 'My pet likes it but the quality could be better.', '2024-10-14'),
(23, 26, 124, 5, 'Great product, my pet is much happier since I started using it.', '2024-10-14'),
(24, 31, 92, 4, 'Good value for money, my pet loves it.', '2024-10-18'),
(25, 11, 128, 2, 'Not the best quality', '2024-10-10'),
(26, 17, 123, 5, 'One happy pet and owner\" Thanks Pettopia.', '2024-10-14'),
(27, 35, 109, 4, 'Rubbish. Do not purchase', '2024-11-02'),
(28, 29, 102, 3, 'Decent product, but could be better.', '2024-10-23'),
(29, 7, 122, 5, 'Happy with this', '2024-11-03'),
(30, 29, 8, 2, 'Not what I hoped', '2024-11-04'),
(31, 27, 103, 4, 'Not worth it', '2024-10-27'),
(32, 22, 131, 5, 'This is a hit with my pet!', '2024-10-23'),
(33, 8, 121, 4, 'Good quality.', '2024-10-26'),
(34, 25, 119, 3, 'Not what I thought it would be.', '2024-10-21'),
(35, 6, 100, 5, 'Great product, my pet loves it.', '2024-10-15'),
(36, 36, 95, 4, 'Ideal', '2024-11-05'),
(37, 8, 120, 4, 'My pet loves this!', '2024-11-03'),
(38, 6, 131, 5, 'Great product, my pet is so happy!', '2024-10-23'),
(39, 13, 95, 3, 'Not the best quality, but my hamster seems to like it.', '2024-11-02'),
(40, 22, 87, 4, 'Good value for money, my pet is enjoying it.', '2024-10-27'),
(41, 17, 101, 5, 'Amazing product, my pet loves it!', '2024-10-24'),
(42, 26, 118, 2, 'Not suitable for larger pets.', '2024-11-01'),
(43, 3, 126, 4, 'Nice design, my cat is enjoying it.', '2024-10-18'),
(44, 12, 104, 3, 'Product arrived damaged but customer service was helpful.', '2024-10-14'),
(45, 25, 115, 5, 'My pet cant get enough of this!', '2024-11-06'),
(46, 10, 128, 4, 'Great!!', '2024-10-13'),
(47, 29, 97, 2, 'Not the best quality, but it is cheap.', '2024-11-02'),
(48, 7, 132, 5, 'Excellent product, my pet is very happy!', '2024-10-27'),
(49, 15, 123, 3, 'Not very durable, but my pet seems to like it.', '2024-10-28'),
(50, 20, 100, 4, 'Good product, my pet is enjoying it.', '2024-10-20'),
(51, 9, 125, 5, 'Great value for money, my pet is very happy!', '2024-11-03'),
(52, 20, 117, 5, 'Looks great but a little bit flimsy', '2024-10-11'),
(53, 32, 124, 3, 'It serves its purpose.', '2024-11-02'),
(54, 18, 130, 4, 'Rubbish', '2024-11-01'),
(55, 23, 120, 2, 'I was disappointed in the quality of this.', '2024-10-21'),
(56, 27, 129, 5, 'Would reccommend', '2024-10-31'),
(57, 5, 111, 4, 'My pet is a fan!!', '2024-10-23'),
(58, 35, 126, 5, 'Exactly what I was looking for.', '2024-10-13'),
(59, 30, 112, 1, 'This plastic hamster wheel is hands down one of the worst products I’ve ever bought for a pet. I purchased it in the hope of giving my hamster a fun, safe way to exercise. Instead, this flimsy, poorly thought-out wheel turned out to be nothing short of a nightmare. If you love your hamster, steer clear of this disaster.', '2024-10-17'),
(60, 14, 118, 3, 'The quality is not what I hoped for', '2024-11-04'),
(61, 17, 133, 5, 'Very durable and looks great.', '2024-10-24'),
(62, 8, 125, 4, 'Perfect', '2024-11-07'),
(63, 1, 131, 2, 'I was not impressed with this', '2024-10-16'),
(64, 3, 121, 5, 'Great quality. One happy customer and pet.', '2024-10-16'),
(65, 7, 123, 4, 'Well-made and priced just about right.', '2024-10-25'),
(66, 10, 127, 4, 'My pet loved this.', '2024-11-05'),
(67, 3, 8, 1, 'About as useful as a pair of sunglasses to a man with one ear. Muffin was able to open the door of the cage herself and fly out the window. I HOPE YOU ALL DIE.', '2024-11-04'),
(68, 20, 1, 1, 'I purchased this bird bath hoping to create a small haven for the birds in my garden. But little did I know that this flimsy, poorly designed piece of garbage would be nothing more than an overpriced lawn ornament. The manufacturer has clearly never seen a bird in real life, let alone designed a bird bath that’s actually useful to them. If you’re looking to throw your money down the drain, then maybe, just maybe, this is the product for you.In Summary...this bird bath is a waste of plastic, money, and time. If you’re in the market for something that will sit in your yard, do absolutely nothing, and actively repel birds, then by all means, buy this. But if you actually want a functional bird bath, do yourself a favor and skip this one.', '2024-10-27'),
(69, 31, 1, 1, 'This scratching post is a disaster. It’s flimsy, poorly made, and my cat despises it. I’ve ended up with a useless piece of junk that takes up space and does absolutely nothing. Save yourself the headache and the mess – buy a quality scratching post that your cat will actually want to use! This one belongs in the bin, and that’s exactly where it’s going.', '2024-10-21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `order_status_id` (`order_status_id`),
  ADD KEY `orders_ibfk_1` (`customer_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`order_status_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `categogy_id` (`categogy_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `reviews_ibfk_2` (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_orders_order_status_id` FOREIGN KEY (`order_status_id`) REFERENCES `order_status` (`order_status_id`),
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`order_status_id`) REFERENCES `order_status` (`order_status_id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`categogy_id`) REFERENCES `categories` (`category_id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
