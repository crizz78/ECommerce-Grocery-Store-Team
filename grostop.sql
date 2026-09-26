-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-09-2026 a las 04:23:55
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `grostop`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `Admin_ID` int(11) NOT NULL,
  `First_Name` varchar(15) NOT NULL,
  `Last_Name` varchar(15) DEFAULT NULL,
  `Admin_Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`Admin_ID`, `First_Name`, `Last_Name`, `Admin_Password`) VALUES
(1, 'Anshak', 'Goel', 'akgoel@283'),
(2, 'Deeptorshi', 'Mondal', 'deepto@294'),
(3, 'Pritish', 'Poswal', 'pritishposwal@321'),
(4, 'Vibhor', 'Agarwal', 'vibhorag@349'),
(5, 'Martin', 'yo@gmail.com', 'contraseña1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_views`
--

CREATE TABLE `admin_views` (
  `Admin_ID` int(11) NOT NULL,
  `Order_ID` int(11) NOT NULL,
  `No_Of_Orders_Viewed` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `associated_with`
--

CREATE TABLE `associated_with` (
  `Customer_ID` int(11) NOT NULL,
  `Cart_ID` int(11) NOT NULL,
  `Product_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `associated_with`
--

INSERT INTO `associated_with` (`Customer_ID`, `Cart_ID`, `Product_ID`) VALUES
(231, 32527, 2),
(231, 32527, 3),
(231, 32528, 2),
(231, 32528, 4),
(231, 32528, 8),
(231, 32528, 11),
(231, 32531, 3),
(231, 32531, 4),
(231, 73575, 2),
(231, 73575, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart`
--

CREATE TABLE `cart` (
  `Cart_ID` int(11) NOT NULL,
  `Total_Value` int(11) DEFAULT NULL,
  `Total_Count` int(11) DEFAULT NULL,
  `Offer_ID` int(11) DEFAULT NULL,
  `Final_Amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cart`
--

INSERT INTO `cart` (`Cart_ID`, `Total_Value`, `Total_Count`, `Offer_ID`, `Final_Amount`) VALUES
(1, 230, 3, 1, 130),
(2, 254, 5, 2, 134),
(3, 954, 10, NULL, 954),
(4, 655, 1, NULL, 655),
(5, 285, 2, 2, 165),
(6, 250, 2, 2, 130),
(7, 620, 2, 3, 372),
(8, 184, 3, NULL, 184),
(9, 335, 1, NULL, 335),
(10, 100, 5, 5, 35),
(26133, 26, 1, 3, 26),
(27114, 145, 3, NULL, 145),
(27525, 30, 1, 3, 30),
(32527, 82, 3, NULL, 82),
(32528, 354, 5, NULL, 134),
(32529, 0, 0, 3, 0),
(32531, 145, 3, NULL, 145),
(40065, 90, 3, 3, 90),
(41340, 30, 1, 3, 30),
(43023, 60, 2, NULL, 60),
(44442, 281, 4, 3, 281),
(44443, 86, 3, 3, 86),
(44661, 30, 1, 3, 30),
(47019, 90, 3, 3, 90),
(50076, 120, 4, 3, 120),
(50077, 90, 3, 3, 90),
(51740, 30, 1, 3, 30),
(51741, 0, 0, 3, 0),
(51742, 255, 3, 3, 255),
(55194, 0, 0, 3, 0),
(59514, 10, 1, 3, 10),
(59960, 77, 3, 3, 77),
(61376, 315, 5, 3, 315),
(73575, 86, 3, NULL, 86),
(73967, 145, 3, 3, 145),
(73968, 60, 2, 3, 60),
(78155, 66, 3, 3, 66),
(85963, 30, 1, 3, 30),
(88302, 230, 4, NULL, 130),
(88303, 141, 3, 3, 141),
(91551, 90, 3, 3, 90),
(91552, 226, 4, 3, 226);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `Category_ID` int(11) NOT NULL,
  `Category_Name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`Category_ID`, `Category_Name`) VALUES
(1, 'dairy'),
(2, 'bread & buns'),
(3, 'vegetables & fruits'),
(4, 'beauty & hygiene'),
(5, 'chips & crisps'),
(6, 'snacks'),
(7, 'cold drinks'),
(8, 'fruit juices'),
(9, 'instant food'),
(10, 'bakery & biscuits'),
(11, 'icecreams '),
(12, 'grocery'),
(13, 'cleaning'),
(14, 'stationary'),
(15, 'dry fruits');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customer`
--

CREATE TABLE `customer` (
  `Customer_ID` int(11) NOT NULL,
  `First_Name` varchar(15) NOT NULL,
  `Last_Name` varchar(15) DEFAULT NULL,
  `Email` varchar(35) NOT NULL,
  `Mobile_No` varchar(14) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `customer`
--

INSERT INTO `customer` (`Customer_ID`, `First_Name`, `Last_Name`, `Email`, `Mobile_No`, `Password`) VALUES
(201, 'Sahil', 'Goyal', 'sahilgoyal@gmail.com', '9821607414', 'sahil@2002'),
(202, 'Krishnam', 'Omar', 'krishnam20309@iiitd.ac.in', '9205458676', 'krishnam!309'),
(203, 'Sanjay', 'Singh', 'sanjays@gmail.com', '9876543210', 'ssingh#07'),
(204, 'Daksh', 'Sethi', 'sethidaksh02@gmail.com', '9079676872', '02oct@daksh'),
(205, 'Nakshatra', 'Yadav', 'yadavnk@gmail.com', '6367918004', 'nick@05june'),
(206, 'Dhroovi', 'Poswal', 'dhrooviposwal@gmail.com', '7021145249', 'apr29dh@05'),
(207, 'Madhvendra', 'Shaktawat', 'madhavsingh@gmail.com', '9116849560', 'mahavjln@2001'),
(208, 'Suryakant', 'Rawat', 'srawat1961@gmail.com', '9784647931', 'gaurav@2000'),
(209, 'Devesh', 'Mishra', 'deveshmanit@gmail.com', '8004473290', 'devesh@ayodhya'),
(210, 'Jaya', 'Rawat', 'jaya1996@gmail.com', '9785344167', 'rawatj@20'),
(211, 'Harsh', 'Raj', 'harshgaya@rediffmail.com', '9876543211', 'harsh@bitm2001'),
(212, 'Himanshi', 'Fagna', 'fagnahimanshi@yahoomail.com', '9930844798', 'himanshi@2005'),
(213, 'Harshit', 'R', 'raviharshit@gmail.com', '9448722521', 'araviharshit@02'),
(214, 'Palak', 'Jain', 'jainpalakksg@gmail.com', '9462270427', 'palakllb@muj'),
(215, 'Bajrang', 'Sharma', 'bsharmamayoor@gmail.com', '9829110069', 'sharma@bajrangajmer'),
(216, 'Prachi', 'Chouhan', 'prachi2001@gmail.com', '9928905860', 'prachi@geetanjali'),
(217, 'Krishandev', NULL, 'kdevajmer@gmail.com', '9664030892', 'devajmer@raj'),
(218, 'Ghisalal', 'Rawat', 'rawat1935@gmail.com', '9782522343', 'gl@rawatdausa'),
(219, 'Madhav', 'Vyas', 'madhav20310@iiitd.ac.in', '9625793053', 'vyasiiitd@madhav'),
(220, 'Ruchir', 'Agarwal', 'ruchir2607iitb@gmail.com', '9434376643', 'agarwaliitb@2001'),
(221, 'Prateek', 'Apurva', 'prateekiiitn@gmail.com', '8306573385', 'papurvaajmer@cse'),
(222, 'Shubham', 'Gautam', 'shubhamudce@gmail.com', '9950746862', 'gautam@2002'),
(223, 'Prashant', 'Ramnani', 'prashant@iitkgp.ac.in', '8443454531', 'ramnani@csekgp'),
(224, 'Mimansa', 'Bharadwaj', 'mimansamayoor@gmail.com', '9214444174', 'art@bharadwaj'),
(225, 'Dharam', 'Pratap', 'dpratap@bitsp.ac.in', '7343434342', 'dharam@1basketball'),
(226, 'Ojasva', 'Singh', 'osingh@gmail.com', '7838067886', 'singh@iiitd1'),
(227, 'Kairvee', 'Rastogi', 'rastogikairvee@gmail.com', '9732423442', 'rastogi@2002'),
(228, 'Yash', 'Rariya', 'yashcuraj@gmail.com', '9660011878', 'rariyabjp@ajmer'),
(229, 'Shubham', 'Singh', 'bitmshubham@gmail.com', '9105862131', 'shubham@kota2001'),
(230, 'Rajendra', 'Singh', 'rajendrakanha@gmail.com', '9878945793', 'kanha@ajmer1'),
(231, 'Martin', 'Martinez', 'yo@gmail.com', '4881234567', 'contraseña1'),
(232, 'kenia', 'hern', 'yo@gmail.com', '', 'contraseña1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `delivery_boy`
--

CREATE TABLE `delivery_boy` (
  `Delivery_Boy_ID` int(11) NOT NULL,
  `First_Name` varchar(15) NOT NULL,
  `Last_Name` varchar(15) DEFAULT NULL,
  `Mobile_No` varchar(10) NOT NULL,
  `Email` varchar(35) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Average_Rating` decimal(3,2) DEFAULT NULL,
  `Admin_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `delivery_boy`
--

INSERT INTO `delivery_boy` (`Delivery_Boy_ID`, `First_Name`, `Last_Name`, `Mobile_No`, `Email`, `Password`, `Average_Rating`, `Admin_ID`) VALUES
(1, 'Yogesh', 'Singh', '9876543220', 'yogeshs@gmail.com', 'yogesh@singh', 4.00, 1),
(2, 'Sandeep', 'Sharma', '9876543221', 'sandeeps@gmail.com', 'sandeep@sharma', NULL, 2),
(3, 'Hukum', 'Chand', '9876543222', 'hukum@gmail.com', 'hukumchand@123', 5.00, 3),
(4, 'Salman', 'Ansari', '9876543223', 'salmanansari@gmail.com', 'salman@delhi', 3.00, 4),
(5, 'Ramesh', 'Choudhary', '9876543224', 'rameshc@gmail.com', 'choudhary@ramesh', NULL, 1),
(6, 'Jagdish', 'Bhadana', '9876543225', 'bhadanajag@gmail.com', 'bhadana@jagdish', 5.00, 2),
(7, 'Sachin', 'Yadav', '9876543226', 'yadavdelhi@gmail.com', 'sachin@yadav', 3.00, 3),
(8, 'Suresh', 'Gupta', '9876543227', 'guptasuresh@gmail.com', 'suresh@gupta', 4.00, 4),
(9, 'Aman', 'Kumar', '9876543228', 'kumaraman@gmail.com', 'kumar@aman', NULL, 1),
(10, 'Mohd', 'Asif', '9876543229', 'asifmohd@gmail.com', 'mohd@asif123', NULL, 2),
(11, 'Carlos', 'Repartidor', '4441234567', 'repartidor@grostop.com', '123456', 5.00, 1),
(12, 'jojo', 'siwa', '4881234589', 'si@gmail.com', 'contraseña1', NULL, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `offer`
--

CREATE TABLE `offer` (
  `Offer_ID` int(11) NOT NULL,
  `Promo_Code` varchar(20) NOT NULL,
  `Percentage_Discount` int(11) NOT NULL,
  `Min_OrderValue` int(11) NOT NULL,
  `Max_Discount` int(11) NOT NULL,
  `Admin_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `offer`
--

INSERT INTO `offer` (`Offer_ID`, `Promo_Code`, `Percentage_Discount`, `Min_OrderValue`, `Max_Discount`, `Admin_ID`) VALUES
(1, 'IPL50', 50, 150, 100, 1),
(2, 'WELCOME60', 60, 200, 120, 2),
(3, 'FLAT40', 40, 500, 300, 3),
(4, 'FAN30', 30, 1000, 500, 4),
(5, 'ONLINE65', 65, 100, 65, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `Order_ID` int(11) NOT NULL,
  `Mode` varchar(15) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  `City` varchar(15) DEFAULT NULL,
  `State` varchar(25) DEFAULT NULL,
  `Order_Time` varchar(20) DEFAULT NULL,
  `House_Flat_No` varchar(30) DEFAULT NULL,
  `Pincode` varchar(10) DEFAULT NULL,
  `Cart_ID` int(11) DEFAULT NULL,
  `Date` varchar(20) DEFAULT NULL,
  `Delivery_Boy_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`Order_ID`, `Mode`, `Amount`, `City`, `State`, `Order_Time`, `House_Flat_No`, `Pincode`, `Cart_ID`, `Date`, `Delivery_Boy_ID`) VALUES
(13, 'af', 30, 'safs', 'asf', '19:35:44', '12', '', 88303, '2026-09-24', 1),
(14, 'af', 30, 'safs', 'asf', '19:35:51', '12', 'k', 88303, '2026-09-24', 3),
(15, 'af', 30, 'safs', 'asf', '19:37:33', '12', '1', 88303, '2026-09-24', 11),
(16, '', 0, '', '', '19:37:46', '', '', 88303, '2026-09-24', 10),
(17, 'af', 120, 'safs', 'asf', '19:56:55', '12', '', 88303, '2026-09-24', 8),
(18, 'af', 90, 'safs', 'asf', '19:57:12', '12', '', 88303, '2026-09-24', 9),
(19, 'af', 281, 'safs', 'asf', '20:05:48', '12', '9', 88303, '2026-09-24', 1),
(20, 'af', 90, 'safs', 'asf', '20:14:16', '12', '', 91551, '2026-09-24', 4),
(21, 'af', 161, 'safs', 'asf', '20:14:40', '12', '1', 91552, '2026-09-24', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE `product` (
  `Product_ID` int(11) NOT NULL,
  `Name` varchar(35) NOT NULL,
  `Price` int(11) NOT NULL,
  `Brand` varchar(15) DEFAULT NULL,
  `Measurement` varchar(15) DEFAULT NULL,
  `Admin_ID` int(11) DEFAULT NULL,
  `Category_ID` int(11) DEFAULT NULL,
  `Unit` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`Product_ID`, `Name`, `Price`, `Brand`, `Measurement`, `Admin_ID`, `Category_ID`, `Unit`) VALUES
(1, 'Amul Taaza Toned Milk', 25, 'Amul', '500', 1, 1, 'ml'),
(2, 'Mother Dairy Cow Milk', 26, 'Mother Dairy', '500', 2, 1, 'ml'),
(3, 'Mother Dairy Full Cream Milk', 30, 'Mother Dairy', '500', 3, 1, 'ml'),
(4, 'Nestle Toned Milk', 85, 'Nestle', '1000', 1, 1, 'ml'),
(5, 'Amul Masti Spiced Buttermilk', 12, 'Amul', '200', 4, 1, 'ml'),
(6, 'Mother Dairy Mango Lassi', 10, 'Mother Dairy', '80', 2, 1, 'ml'),
(7, 'Mother Dairy Classic Curd', 22, 'Mother Dairy', '200', 3, 1, 'ml'),
(8, 'Amul Butter', 100, 'Amul', '100', 3, 1, 'g'),
(9, 'Britannia Cheese Slices', 144, 'Britannia', '200', 4, 1, 'g'),
(10, 'Amul Pure Ghee', 520, 'Amul', '1000', 3, 1, 'ml'),
(11, 'Harvest Gold Brown Bread', 43, 'Harvest Gold', '400', 2, 2, 'g'),
(12, 'English Oven Whole Wheat Bread', 41, 'English Oven', '400', 3, 2, 'g'),
(13, 'English Oven Pav', 35, 'English Oven', '300', 1, 2, 'g'),
(14, 'Britannia Whole Wheat Bread', 45, 'Britannia', '450', 2, 2, 'g'),
(15, 'Harvest Gold Burger Bun', 35, 'Harvest Gold', '200', 3, 2, 'g'),
(16, 'Mango', 180, 'Generic', '1000', 2, 3, 'g'),
(17, 'Apple', 125, 'Generic', '500', 4, 3, 'g'),
(18, 'Onion', 25, 'Generic', '1000', 1, 3, 'g'),
(19, 'Tomato', 31, 'Generic', '500', 3, 3, 'g'),
(20, 'Pineapple', 100, 'Generic', '1000', 3, 3, 'g'),
(21, 'Vaseline Intensive Care Lotion', 335, 'Vaseline', '400', 2, 4, 'ml'),
(22, 'Nivea Watermelon Shine Lip Balm', 199, 'Nivea', '5', 1, 4, 'g'),
(23, 'Nivea Creme', 199, 'Nivea', '100', 3, 4, 'ml'),
(24, 'Tresemme Keratin Smooth Shampoo', 319, 'Tresemme', '340', 3, 4, 'ml'),
(25, 'Parachute Coconut Oil', 128, 'Parachute', '300', 3, 4, 'ml'),
(26, 'Lays India\'s Magic Masala Chips', 20, 'Lays', '52', 2, 5, 'g'),
(27, 'Bingo Tedhe Medhe', 20, 'Bingo', '90', 4, 5, 'g'),
(28, 'Bingo Cream & Onion Chips ', 20, 'Lays', '52', 3, 5, 'g'),
(29, 'Lays Cream & Onion Chips', 20, 'Lays', '52', 1, 5, 'g'),
(30, 'Kurkure Masala Munch', 20, 'Kurkure', '85', 3, 5, 'g'),
(31, 'Act II Butter Microwave Popcorn', 25, 'Act II', '33', 3, 6, 'g'),
(32, 'Haldiram Bhujia', 54, 'Haldiram', '200', 2, 6, 'g'),
(33, 'Bingo Mad Angles Nachos', 20, 'Bingo', '66', 4, 6, 'g'),
(34, 'Haldiram All in One Namkeen', 99, 'Haldiram', '400', 3, 6, 'g'),
(35, 'Britannia Fruit Cake', 30, 'Britannia', '115', 4, 6, 'g'),
(36, 'Thumbs Up', 40, 'Thumbs Up', '300', 2, 7, 'ml'),
(37, 'Sprite', 40, 'Sprite', '300', 4, 7, 'ml'),
(38, 'Coco-Cola', 40, 'Coco-Cola', '300', 3, 7, 'ml'),
(39, 'Red Bull Energy Drink', 115, 'Red Bull', '250', 1, 7, 'ml'),
(40, 'Pepsi', 33, 'Pepsi', '600', 2, 7, 'ml'),
(41, 'Slice Mango Drink', 95, 'Slice', '1750', 2, 8, 'ml'),
(42, 'Tropicana Guava Delight Juice', 105, 'Tropicana', '1000', 4, 8, 'ml'),
(43, 'B Natural Apple Juice', 120, 'B Natural', '1000', 3, 8, 'ml'),
(44, 'Paper Boat Aam Panna', 30, 'Paper Boat', '200', 1, 8, 'ml'),
(45, 'Real Orange Juice', 115, 'Real', '1000', 2, 8, 'ml'),
(46, 'Real Canberry Juice', 115, 'Real', '1000', 4, 8, 'ml'),
(47, 'Tropicana Mixed Fruit Juice', 40, 'Tropicana', '500', 3, 8, 'ml'),
(48, 'Paper Boat Guava Juice', 30, 'Paper Boat', '200', 4, 8, 'ml'),
(49, 'Real Pomegranate Juice', 125, 'Real', '1000', 2, 8, 'ml'),
(50, 'B Natural Mixed Fruit Juice', 120, 'B Natural', '1000', 1, 8, 'ml'),
(51, 'Maggi Masala Instant Noodles', 27, 'Nestle', '140', 2, 9, 'g'),
(52, 'Knorr Manchow Soup', 65, 'Knorr', '46', 3, 9, 'g'),
(53, 'Maggi Masala Penne Pasta', 28, 'Nestle', '65', 1, 9, 'g'),
(54, 'Yippee Magic Masala Noodles', 48, 'Sunfeast', '240', 4, 9, 'g'),
(55, 'McCain Masala French Fries', 125, 'McCain', '375', 2, 9, 'g'),
(56, 'Britannia Good Day Butter Cookies', 10, 'Britannia', '68', 3, 10, 'g'),
(57, 'Parle-G Glucose Biscuit', 25, 'Parle', '250', 1, 10, 'g'),
(58, 'Britannia Nutri Choice Biscuit', 25, 'Britannia', '100', 4, 10, 'g'),
(59, 'Sunfeast Dark Fantasy Biscuit', 150, 'Sunfeast', '300', 2, 10, 'g'),
(60, 'Oreo Orignal Vanilla Biscuit', 30, 'Cadbury', '120', 3, 10, 'g'),
(61, 'Parle Elaichi Rusk', 170, 'Parle', '1000', 1, 10, 'g'),
(62, 'Unibic Choco Chip Cookies', 120, 'Unibic', '500', 4, 10, 'g'),
(63, 'Sunfeast Mom\'s Magic Biscuit', 35, 'Sunfeast', '200', 2, 10, 'g'),
(64, 'Unibic Cashew Cookies', 140, 'Unibic', '500', 3, 10, 'g'),
(65, 'Parle Krackjack Biscuit', 35, 'Parle', '200', 1, 10, 'g'),
(66, 'NIC Choco Chips Ice Cream', 70, 'NIC', '100', 4, 11, 'ml'),
(67, 'Amul Chocolate Brownie Ice Cream', 215, 'Amul', '1000', 2, 11, 'ml'),
(68, 'Kwality Walls Oreo & Cream', 299, 'Kwality Walls', '700', 3, 11, 'ml'),
(69, 'BR Cotton Candy Ice Cream', 365, 'Baskin Robbins', '450', 1, 11, 'ml'),
(70, 'NIC Alphonso Mango Ice Cream', 70, 'NIC', '100', 4, 11, 'ml'),
(71, 'Aashirvaad Atta', 205, 'ITC', '5000', 2, 12, 'g'),
(72, 'India Gate Dubar Basmati Rice', 138, 'India Gate', '1000', 3, 12, 'g'),
(73, 'Madhur Sugar', 60, 'Madhur', '1000', 1, 12, 'g'),
(74, 'Tata Salt', 24, 'Tata', '1000', 4, 12, 'g'),
(75, 'Fortune Soyabean Oil', 215, 'Fortune', '1000', 2, 12, 'ml'),
(76, 'Surf Excel Easy Wash Detergent', 128, 'HUL', '1000', 3, 13, 'g'),
(77, 'Surf Excel Matic Liquid Detergent', 230, 'HUL', '1020', 1, 13, 'ml'),
(78, 'Lizol Citrus Floor Cleaner', 103, 'Reckitt', '500', 4, 13, 'ml'),
(79, 'Harpic Toilet Cleaner', 99, 'Reckitt', '500', 2, 13, 'ml'),
(80, 'Vim Lemon Dishwash Gel', 52, 'Vim', '250', 3, 13, 'ml'),
(81, 'Kangaro Stapler', 65, 'Kangaro', '1', 1, 14, 'unit'),
(82, 'Fevi Stick', 30, 'Pidlite', '1', 4, 14, 'unit'),
(83, 'Rorito Maxtron Pen', 50, 'Rorito', '1', 2, 14, 'unit'),
(84, 'Fevicol', 30, 'Pidlite', '1', 3, 14, 'unit'),
(85, 'Cello Tape', 20, 'Generic', '1', 1, 14, 'unit'),
(86, 'Tata Sampann Raisins', 103, 'Tata', '200', 4, 15, 'g'),
(87, 'Tata Sampann Almonds', 655, 'Tata', '500', 2, 15, 'g'),
(88, 'Tata Sampann Pista', 345, 'Tata', '200', 3, 15, 'g'),
(89, 'Tata Sampann Cashew', 585, 'Tata', '585', 1, 15, 'g'),
(90, 'Happilo Dates', 440, 'Happilo', '680', 3, 15, 'g');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_feedback`
--

CREATE TABLE `product_feedback` (
  `Review_ID` int(11) NOT NULL,
  `Rating` int(11) DEFAULT NULL,
  `Review_Body` varchar(50) DEFAULT NULL,
  `Product_ID` int(11) NOT NULL,
  `Customer_ID` int(11) DEFAULT NULL,
  `Review_Date` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `product_feedback`
--

INSERT INTO `product_feedback` (`Review_ID`, `Rating`, `Review_Body`, `Product_ID`, `Customer_ID`, `Review_Date`) VALUES
(1, 5, 'amazing', 1, 201, '21-04-2022'),
(2, 1, 'horrible', 73, 203, '21-04-2022'),
(3, 3, 'average', 6, 205, '20-04-2022'),
(4, 4, 'good product', 55, 211, '20-04-2022'),
(5, 2, 'below expectations', 87, 207, '20-04-2022'),
(6, 3, 'okayish', 1, 205, '22-04-2022'),
(7, 4, 'amazing', 28, 205, '22-04-2022'),
(8, 5, 'exceeded expecations', 20, 215, '21-04-2022'),
(9, 3, 'average good', 28, 219, '20-04-2022'),
(10, 1, 'don\'t order', 21, 217, '21-04-2022');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rates_order_delivery`
--

CREATE TABLE `rates_order_delivery` (
  `Order_ID` int(11) NOT NULL,
  `Delivery_Boy_ID` int(11) NOT NULL,
  `Customer_ID` int(11) NOT NULL,
  `Rating_Given` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `rating_table`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `rating_table` (
`Average_Rating` decimal(14,4)
,`Product_ID` int(11)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `selects`
--

CREATE TABLE `selects` (
  `Customer_ID` int(11) NOT NULL,
  `Category_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `selects`
--

INSERT INTO `selects` (`Customer_ID`, `Category_ID`) VALUES
(201, 1),
(201, 3),
(203, 10),
(203, 12),
(203, 13),
(203, 14),
(205, 1),
(205, 3),
(205, 4),
(205, 5),
(207, 15),
(209, 11),
(209, 12),
(211, 8),
(211, 9),
(213, 1),
(215, 2),
(215, 3),
(217, 4),
(219, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seller`
--

CREATE TABLE `seller` (
  `Seller_ID` int(11) NOT NULL,
  `First_Name` varchar(15) NOT NULL,
  `Last_Name` varchar(15) DEFAULT NULL,
  `Email` varchar(35) NOT NULL,
  `Phone_Number` varchar(15) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Place_Of_Operation` varchar(30) DEFAULT NULL,
  `Admin_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `seller`
--

INSERT INTO `seller` (`Seller_ID`, `First_Name`, `Last_Name`, `Email`, `Phone_Number`, `Password`, `Place_Of_Operation`, `Admin_ID`) VALUES
(1, 'Saver', 'Bazar', 'saverbazar@gmail.com', '8765432109', 'saverbazar@123', 'New Delhi', 1),
(2, '24 ', 'Seven', '24seven@gmail.com', '7654321098', '24seven@247', 'New Delhi', 2),
(3, 'Xpress ', 'Mart', 'xpressm@gmail.com', '8901234567', 'xpress@123', 'Mumbai', 3),
(4, 'OneStop', 'Grocery', 'onestopgrocery@gmail.com', '9999999998', 'onestop@one', 'New Delhi', 4),
(5, 'Appario', 'Retail', 'appario@gmail.com', '8908908901', 'app@2022', 'New Delhi', 1),
(6, 'Twelve', 'Seven', '12X7@gmail.com', '7890789012', '12X7@123', 'Mumbai', 2),
(7, 'Tienda', 'Oficial', 'vendedor@grostop.com', '4449876543', '123456', 'Centro', 1),
(8, 'dado', 'p3', 'kys@gmail.com', '4881234580', 'contraseña1', 'u', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sells`
--

CREATE TABLE `sells` (
  `Seller_ID` int(11) NOT NULL,
  `Product_ID` int(11) NOT NULL,
  `No_of_Product_Sold` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sells`
--

INSERT INTO `sells` (`Seller_ID`, `Product_ID`, `No_of_Product_Sold`) VALUES
(1, 1, 2),
(1, 3, 1),
(1, 6, 1),
(1, 8, 2),
(1, 10, 2),
(3, 11, 1),
(3, 12, 1),
(1, 16, 1),
(1, 18, 1),
(1, 20, 1),
(3, 20, 1),
(6, 21, 1),
(1, 22, 1),
(1, 26, 1),
(1, 27, 2),
(1, 28, 2),
(1, 29, 2),
(1, 30, 1),
(2, 47, 1),
(2, 49, 1),
(2, 55, 1),
(2, 65, 1),
(5, 70, 1),
(2, 73, 1),
(5, 75, 1),
(2, 79, 1),
(2, 85, 1),
(4, 87, 1);

-- --------------------------------------------------------

--
-- Estructura para la vista `rating_table`
--
DROP TABLE IF EXISTS `rating_table`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `rating_table`  AS SELECT avg(`product_feedback`.`Rating`) AS `Average_Rating`, `product_feedback`.`Product_ID` AS `Product_ID` FROM `product_feedback` GROUP BY `product_feedback`.`Product_ID` ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_ID`);

--
-- Indices de la tabla `admin_views`
--
ALTER TABLE `admin_views`
  ADD PRIMARY KEY (`Order_ID`,`Admin_ID`),
  ADD KEY `admin_views_admin_Admin_ID_fk` (`Admin_ID`);

--
-- Indices de la tabla `associated_with`
--
ALTER TABLE `associated_with`
  ADD PRIMARY KEY (`Customer_ID`,`Cart_ID`,`Product_ID`),
  ADD KEY `Associated_With_cart_Cart_ID_fk` (`Cart_ID`),
  ADD KEY `Associated_With_product_Product_ID_fk` (`Product_ID`);

--
-- Indices de la tabla `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`Cart_ID`),
  ADD KEY `cart_offer_Offer_ID_fk` (`Offer_ID`),
  ADD KEY `totalcount` (`Total_Count`),
  ADD KEY `finalvalue` (`Final_Amount`);

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Category_ID`);

--
-- Indices de la tabla `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_ID`),
  ADD KEY `customerpassword` (`Password`);

--
-- Indices de la tabla `delivery_boy`
--
ALTER TABLE `delivery_boy`
  ADD PRIMARY KEY (`Delivery_Boy_ID`),
  ADD KEY `delivery_boy_admin_Admin_ID_fk` (`Admin_ID`),
  ADD KEY `deliveryboyavgrating` (`Average_Rating`);

--
-- Indices de la tabla `offer`
--
ALTER TABLE `offer`
  ADD PRIMARY KEY (`Offer_ID`),
  ADD KEY `offer_admin_Admin_ID_fk` (`Admin_ID`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Order_ID`),
  ADD KEY `orders_cart_Cart_ID_fk` (`Cart_ID`),
  ADD KEY `orders_delivery_boy_Delivery_Boy_ID_fk` (`Delivery_Boy_ID`),
  ADD KEY `ordermode` (`Mode`);

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Product_ID`),
  ADD KEY `product_admin_Admin_ID_fk` (`Admin_ID`),
  ADD KEY `product_category_Category ID_fk` (`Category_ID`),
  ADD KEY `priceindex` (`Price`);

--
-- Indices de la tabla `product_feedback`
--
ALTER TABLE `product_feedback`
  ADD PRIMARY KEY (`Review_ID`,`Product_ID`),
  ADD KEY `product_feedback_customer_Customer_ID_fk` (`Customer_ID`),
  ADD KEY `product_feedback_product_Product_ID_fk` (`Product_ID`),
  ADD KEY `productreview` (`Rating`,`Product_ID`);

--
-- Indices de la tabla `rates_order_delivery`
--
ALTER TABLE `rates_order_delivery`
  ADD PRIMARY KEY (`Order_ID`),
  ADD KEY `rates_order_delivery_customer_Customer_ID_fk` (`Customer_ID`),
  ADD KEY `rates_order_delivery_delivery_boy_Delivery_Boy_ID_fk` (`Delivery_Boy_ID`),
  ADD KEY `customerratingdeliveryboy` (`Customer_ID`,`Rating_Given`);

--
-- Indices de la tabla `selects`
--
ALTER TABLE `selects`
  ADD PRIMARY KEY (`Customer_ID`,`Category_ID`),
  ADD KEY `selects_category_Category_ID_fk` (`Category_ID`);

--
-- Indices de la tabla `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`Seller_ID`),
  ADD KEY `Seller_admin_Admin_ID_fk` (`Admin_ID`);

--
-- Indices de la tabla `sells`
--
ALTER TABLE `sells`
  ADD PRIMARY KEY (`Product_ID`,`Seller_ID`),
  ADD KEY `sells_seller_Seller_ID_fk` (`Seller_ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `Admin_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `cart`
--
ALTER TABLE `cart`
  MODIFY `Cart_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91553;

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `Category_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `customer`
--
ALTER TABLE `customer`
  MODIFY `Customer_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT de la tabla `delivery_boy`
--
ALTER TABLE `delivery_boy`
  MODIFY `Delivery_Boy_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `offer`
--
ALTER TABLE `offer`
  MODIFY `Offer_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `Order_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `Product_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT de la tabla `product_feedback`
--
ALTER TABLE `product_feedback`
  MODIFY `Review_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `seller`
--
ALTER TABLE `seller`
  MODIFY `Seller_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `admin_views`
--
ALTER TABLE `admin_views`
  ADD CONSTRAINT `admin_views_admin_Admin_ID_fk` FOREIGN KEY (`Admin_ID`) REFERENCES `admin` (`Admin_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_views_orders_Order_ID_fk` FOREIGN KEY (`Order_ID`) REFERENCES `orders` (`Order_ID`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `associated_with`
--
ALTER TABLE `associated_with`
  ADD CONSTRAINT `Associated_With_customer_Customer_ID_fk` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `Associated_With_product_Product_ID_fk` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`Product_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `associated_with_cart_Cart_ID_fk` FOREIGN KEY (`Cart_ID`) REFERENCES `cart` (`Cart_ID`) ON DELETE CASCADE;

--
-- Filtros para la tabla `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_offer_Offer_ID_fk` FOREIGN KEY (`Offer_ID`) REFERENCES `offer` (`Offer_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `delivery_boy`
--
ALTER TABLE `delivery_boy`
  ADD CONSTRAINT `delivery_boy_admin_Admin_ID_fk` FOREIGN KEY (`Admin_ID`) REFERENCES `admin` (`Admin_ID`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `offer`
--
ALTER TABLE `offer`
  ADD CONSTRAINT `offer_admin_Admin_ID_fk` FOREIGN KEY (`Admin_ID`) REFERENCES `admin` (`Admin_ID`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_cart_Cart_ID_fk` FOREIGN KEY (`Cart_ID`) REFERENCES `cart` (`Cart_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_delivery_boy_Delivery_Boy_ID_fk` FOREIGN KEY (`Delivery_Boy_ID`) REFERENCES `delivery_boy` (`Delivery_Boy_ID`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_admin_Admin_ID_fk` FOREIGN KEY (`Admin_ID`) REFERENCES `admin` (`Admin_ID`) ON DELETE SET NULL,
  ADD CONSTRAINT `product_category_Category ID_fk` FOREIGN KEY (`Category_ID`) REFERENCES `category` (`Category_ID`) ON DELETE SET NULL;

--
-- Filtros para la tabla `product_feedback`
--
ALTER TABLE `product_feedback`
  ADD CONSTRAINT `product_feedback_customer_Customer_ID_fk` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`) ON DELETE SET NULL,
  ADD CONSTRAINT `product_feedback_product_Product_ID_fk` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`Product_ID`) ON DELETE CASCADE;

--
-- Filtros para la tabla `rates_order_delivery`
--
ALTER TABLE `rates_order_delivery`
  ADD CONSTRAINT `rates_order_delivery_customer_Customer_ID_fk` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `rates_order_delivery_delivery_boy_Delivery_Boy_ID_fk` FOREIGN KEY (`Delivery_Boy_ID`) REFERENCES `delivery_boy` (`Delivery_Boy_ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `rates_order_delivery_orders_Order_ID_fk` FOREIGN KEY (`Order_ID`) REFERENCES `orders` (`Order_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `selects`
--
ALTER TABLE `selects`
  ADD CONSTRAINT `selects_category_Category_ID_fk` FOREIGN KEY (`Category_ID`) REFERENCES `category` (`Category_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `selects_customer_Customer_ID_fk` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`) ON DELETE CASCADE;

--
-- Filtros para la tabla `seller`
--
ALTER TABLE `seller`
  ADD CONSTRAINT `Seller_admin_Admin_ID_fk` FOREIGN KEY (`Admin_ID`) REFERENCES `admin` (`Admin_ID`) ON DELETE SET NULL;

--
-- Filtros para la tabla `sells`
--
ALTER TABLE `sells`
  ADD CONSTRAINT `sells_product_Product_ID_fk` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`Product_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `sells_seller_Seller_ID_fk` FOREIGN KEY (`Seller_ID`) REFERENCES `seller` (`Seller_ID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
