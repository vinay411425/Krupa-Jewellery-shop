-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2022 at 03:16 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `krupa`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(32) NOT NULL,
  `pwd` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `pwd`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `con_id` int(10) NOT NULL,
  `con_fnm` varchar(32) NOT NULL,
  `con_email` varchar(32) NOT NULL,
  `con_sub` varchar(32) NOT NULL,
  `con_message` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`con_id`, `con_fnm`, `con_email`, `con_sub`, `con_message`) VALUES
(3, 'Mahendra Solanki', 'solankimahendra289@gmail.com', 's m,cv.ns', 'mnksbvsjkl');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `c_id` int(11) NOT NULL,
  `c_username` varchar(32) NOT NULL,
  `c_pwd` varchar(64) NOT NULL,
  `c_email` varchar(32) NOT NULL,
  `c_phone` varchar(32) NOT NULL,
  `c_address` varchar(128) NOT NULL,
  `c_order` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`c_id`, `c_username`, `c_pwd`, `c_email`, `c_phone`, `c_address`, `c_order`) VALUES
(1, 'Mahendra', '7265003501', 'solankimahendra289@gmail.com', '7265003501', 'At Rajkot\r\nMunjka \r\n360001', '10'),
(5, 'Alexx', '123456789', 'alexx@gmail.com', '8899664455', 'At talala gir,\r\nSasan gir,\r\nGir Somnath', ''),
(6, 'Rahul', '12345678', 'rahul@gmail.com', '9965423156', 'At:- Munjka\r\nRajkot\r\n360001', ''),
(7, 'jaymeen@gmail', 'jaymeen', 'jaymeen@gmail', '1234568790', 'as', '');

-- --------------------------------------------------------

--
-- Table structure for table `fetured_product`
--

CREATE TABLE `fetured_product` (
  `p_id` int(255) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_price` varchar(255) NOT NULL,
  `p_cat` varchar(255) NOT NULL,
  `p_detail` int(255) NOT NULL,
  `p_photo` varchar(255) NOT NULL,
  `p_gen` varchar(255) NOT NULL,
  `p_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fetured_product`
--

INSERT INTO `fetured_product` (`p_id`, `p_name`, `p_price`, `p_cat`, `p_detail`, `p_photo`, `p_gen`, `p_description`) VALUES
(1, 'Regal 18 Karat Yellow Gold And Pearl Scrolled Pendant', '2500', 'Chain', 0, 'img.webp', 'Men', 'asdf asdf');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `order_id` int(32) NOT NULL,
  `customer_id` int(32) NOT NULL,
  `product_id` int(32) NOT NULL,
  `order_qty` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`order_id`, `customer_id`, `product_id`, `order_qty`) VALUES
(1, 1, 1, 5),
(3, 1, 2, 1),
(4, 1, 3, 1),
(5, 5, 1, 2),
(6, 5, 2, 3),
(7, 5, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(64) NOT NULL,
  `p_price` varchar(64) NOT NULL,
  `p_detail` varchar(64) NOT NULL,
  `p_cat` varchar(34) NOT NULL,
  `p_photo` varchar(64) NOT NULL,
  `p_gen` varchar(50) DEFAULT NULL,
  `p_description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`p_id`, `p_name`, `p_price`, `p_detail`, `p_cat`, `p_photo`, `p_gen`, `p_description`) VALUES
(1, 'Gold Chain', '12000', '1', 'Chains', '512216CBXAA00_1.webp', 'Men', 'vinay danidharita'),
(2, 'Gold And Pearl Scrolled Pendant', '27000', '1', 'Pendants', 'regal-pendal.webp', 'Woman', 'This elegant 18 Karat yellow gold pendant features a single pearl ringed by a ridged band and 4 pearls, with 4 scrolled pearl-set gold crowns'),
(20, 'Dual Toned Gold Bracelet', '12999', '2.5', 'Bracelets', 'bracelet1.webp', 'Woman', 'Wrap elegance around your wrist with this dual toned bracelet crafted in 22 Karat Yellow Gold with a Rhodium'),
(21, 'Mens Finger Ring', '35000', '6.25', 'Rings', 'ring.webp', 'Men', 'Cubical Textured Mens Finger is crafted in 22 Karat Yellow Gold with a Matte Look. Stylish for his everyday casual look'),
(22, 'Stylish Sleek Bangle', '42000', '6.9', 'Bangles', 'bangles.webp', 'Woman', 'Elevate your style quotient with this sleek bangle crafted in 22 karat yellow gold'),
(23, 'Subtle Teardrop Laser Cut Floral Pattern Gold Pendant', '45000', '7.2', 'Chains', 'Pendant.webp', 'Woman', 'Buoy up your Casual Wear appearance with this Subtle Teardrop Laser Cut Floral Pattern Gold Pendant crafted in 22 Karat Yellow Gold.'),
(25, 'Layered Helix Mangalsutra', '65200', '12.01', 'Mangalsutra', 'mangalsutra.webp', 'Woman', 'A testament to your strong union, this helix style mangalsutra is crafted in 22 Karat Yellow Gold with a glossy finish'),
(27, 'Majestic Gold Chain', '49999', '9.3', 'Chains', 'Chain.webp', 'Men', 'Royal Kamal Chain set in 22 Karat Yellow Gol'),
(28, 'Patterned Teardrop Drop Earrings', '39999', '6.7', 'Earrings', 'earings.webp', 'Men', 'These elegant 22 Karat yellow gold drop earrings feature 2 teardrop bases hooked with each other and accented with an overlapping circular pattern'),
(29, 'Blooming Stud Earrings', '51000', '8.6', 'Earrings', 'bloom_stub_earrings.webp', 'Woman', ' earrings are in the shape of a blooming flower with a bud, accented with an overall bead detailing.'),
(30, 'Floral Studs Earrings', '11599', '1.7', 'Earrings', 'Floral.webp', 'Kids', 'curved edges to take the shape of a flower, accented by space in between petals');

-- --------------------------------------------------------

--
-- Table structure for table `rf_cart`
--

CREATE TABLE `rf_cart` (
  `cart_id` int(11) NOT NULL,
  `cart_user_id` int(11) NOT NULL,
  `cart_product_id` int(11) NOT NULL,
  `cart_qty` int(11) NOT NULL,
  `cart_created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `button_text` varchar(255) NOT NULL,
  `button_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile_number` varchar(12) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `user_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `mobile_number`, `password`, `photo`, `user_order`) VALUES
(1, 'vinay', 'danidhariya', 'vinay4114', 'admin@gmail.com', '216532', '21232f297a57a5a743894a0e4a801fc3', 'user.svg', 0),
(21, 'rahul', 'gondaliya', 'rahul2565', 'rahul2565@gmail.com', '6353831031', '439ed537979d8e831561964dbbbd7413', 'user.svg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`con_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `fetured_product`
--
ALTER TABLE `fetured_product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `rf_cart`
--
ALTER TABLE `rf_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_user_id` (`cart_user_id`),
  ADD KEY `cart_product_id` (`cart_product_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `con_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `rf_cart`
--
ALTER TABLE `rf_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
