-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2022 at 03:36 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `7sem_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `adventure`
--

CREATE TABLE `adventure` (
  `id` int(11) NOT NULL,
  `adventure_name` varchar(100) NOT NULL,
  `location` text NOT NULL,
  `photo` varchar(160) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adventure`
--

INSERT INTO `adventure` (`id`, `adventure_name`, `location`, `photo`) VALUES
(1, 'Bungi', 'Chitwan', '1643270412.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `adventure_booked`
--

CREATE TABLE `adventure_booked` (
  `id` int(11) NOT NULL,
  `vendor_name` varchar(170) NOT NULL,
  `booking_name` varchar(180) NOT NULL,
  `adventure_id` int(11) NOT NULL,
  `date_booked` varchar(14) NOT NULL,
  `price` float NOT NULL,
  `payment_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adventure_booked`
--

INSERT INTO `adventure_booked` (`id`, `vendor_name`, `booking_name`, `adventure_id`, `date_booked`, `price`, `payment_status`) VALUES
(1, 'TTT', 'sangam.thapa218@gmail.com', 1, '2022-02-18', 1234, 0),
(2, 'TTT', 'sangam.thapa218@gmail.com', 1, '2022-01-28', 1234, 0),
(3, 'TTT', 'sangam.thapa218@gmail.com', 1, '2022-01-28', 1234, 0);

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `amenity_name` varchar(120) NOT NULL,
  `photo` varchar(151) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`amenity_name`, `photo`) VALUES
('wifi', 'amenity_photo/1638865057.png'),
('room_service', 'amenity_photo/1638865087.png'),
('single_person_room', 'amenity_photo/1638865120.png'),
('Double_person_room', 'amenity_photo/1638865136.png');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `room_name` tinytext NOT NULL,
  `username` tinytext NOT NULL,
  `check_in_date` varchar(14) NOT NULL,
  `check_out_day` varchar(14) NOT NULL,
  `room_number` int(11) NOT NULL DEFAULT 0,
  `price` float NOT NULL DEFAULT 0,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `ratings` varchar(3) NOT NULL DEFAULT '-1',
  `user_id` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `payment_date` varchar(14) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `room_name`, `username`, `check_in_date`, `check_out_day`, `room_number`, `price`, `seen`, `ratings`, `user_id`, `status`, `payment_date`) VALUES
(1, 'Balcony Room', 'sangam.thapa218@gmail.com', '2021-12-08', '2021-12-09', 100, 1250, 1, '-1', 1, 1, '0'),
(4, 'Balcony Room', 'sangam.thapa218@gmail.com', '2022-01-29', '2022-01-31', 100, 1250, 1, '4', 1, 0, '0'),
(47, 'Balcony Room', 'thapanikita171@gmail.com', '2022-02-24', '2022-02-25', 0, 1250, 1, '-1', 0, 0, '0'),
(48, 'Double Bed Room', 'admin@email.com', '2022-02-18', '2022-02-19', 0, 1200, 1, '-1', 0, 0, '0'),
(6, 'Double Bed Room', 'praman@gmail.com', '2022-01-27', '2022-01-31', 200, 1200, 1, '4', 11, 0, '0'),
(28, 'Double Bed Room', 'sangisipa@gmail.com', '2022-02-04', '2022-02-11', 200, 1000, 1, '-1', 12, 0, '0'),
(46, 'Double Bed Room', 'thapanikita171@gmail.com', '2022-02-21', '2022-02-23', 0, 1200, 1, '-1', 0, 0, '0'),
(61, 'Double Bed Room', 'thapanikita171@gmail.com', '2022-02-26', '2022-02-28', 0, 1200, 0, '-1', 0, 0, '0'),
(24, 'Economy Room', 'praman@gmail.com', '2022-02-01', '2022-02-05', 0, 810, 1, '-1', 11, 0, '0'),
(43, 'Economy Room', 'thapanikita171@gmail.com', '2022-02-16', '2022-02-22', 111, 700, 1, '-1', 0, 0, '0'),
(42, 'Quarantine room', 'admin@email.com', '2022-02-17', '2022-02-23', 0, 700, 1, '-1', 0, 0, '0'),
(3, 'Quarantine room', 'sangam.thapa218@gmail.com', '2022-01-29', '2022-01-31', 111, 700, 1, '2', 11, 0, '0'),
(44, 'Quarantine room', 'thapanikita171@gmail.com', '2022-02-18', '2022-02-19', 0, 700, 1, '-1', 0, 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `buy`
--

CREATE TABLE `buy` (
  `user_id` int(11) NOT NULL,
  `item` varchar(150) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cancelled_bookings`
--

CREATE TABLE `cancelled_bookings` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `room_name` varchar(180) NOT NULL,
  `check_in_date` varchar(15) NOT NULL,
  `check_out_date` varchar(15) NOT NULL,
  `cancelled_on` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cancelled_bookings`
--

INSERT INTO `cancelled_bookings` (`id`, `username`, `room_name`, `check_in_date`, `check_out_date`, `cancelled_on`) VALUES
(17, 'sangam.thapa218@gmail.com', '', '2022-02-16', '2022-02-17', '2022-02-15'),
(1, 'sangam.thapa218@gmail.com', 'Quarantine room', '2022-02-16', '2022-02-19', '2022-02-15'),
(8, 'sangam.thapa218@gmail.com', 'Double Bed Room', '2022-02-17', '2022-02-19', '2022-02-15'),
(11, 'sangam.thapa218@gmail.com', 'gold', '2022-02-18', '2022-02-26', '2022-02-15'),
(14, 'sangam.thapa218@gmail.com', 'silver', '2022-02-19', '2022-02-21', '2022-02-15'),
(18, 'sangam.thapa218@gmail.com', '', '2022-02-22', '2022-02-23', '2022-02-15'),
(13, 'sangam.thapa218@gmail.com', 'silver', '2022-02-24', '2022-02-28', '2022-02-15'),
(15, 'sangam.thapa218@gmail.com', '', '2022-02-25', '2022-02-27', '2022-02-15'),
(10, 'sangam.thapa218@gmail.com', 'gold', '2022-02-25', '2022-02-28', '2022-02-15'),
(25, 'sangam.thapa218@gmail.com', 'Single Bed Room', '2022-02-27', '2022-03-11', '1644908805'),
(24, 'sangam.thapa218@gmail.com', 'Double Bed Room', '2022-02-28', '2022-03-01', '1644908748'),
(21, 'sangam.thapa218@gmail.com', 'Single Deluxe Room', '2022-03-04', '2022-03-11', '2022-02-15'),
(26, 'thapanikita171@gmail.com', 'Double Bed Room', '2022-03-04', '2022-03-07', '1645249244');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `username` varchar(100) NOT NULL,
  `comments` text NOT NULL,
  `booking_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` int(11) NOT NULL,
  `food_name` varchar(80) NOT NULL,
  `cost` double NOT NULL,
  `food_photo` varchar(100) NOT NULL,
  `category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `food_name`, `cost`, `food_photo`, `category`) VALUES
(4, 'aaa', 213, '1642665938.jpg', 2),
(1, 'Pizza', 1234, '1642219408.png', 1),
(3, 'Tuborg', 190, '1642223366.png', 2);

-- --------------------------------------------------------

--
-- Table structure for table `food_category`
--

CREATE TABLE `food_category` (
  `id` int(11) NOT NULL,
  `category` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food_category`
--

INSERT INTO `food_category` (`id`, `category`) VALUES
(1, 'Lunch1'),
(2, 'drinks');

-- --------------------------------------------------------

--
-- Table structure for table `food_order`
--

CREATE TABLE `food_order` (
  `id` int(11) NOT NULL,
  `food_name` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date2` varchar(15) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL,
  `payment_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food_order`
--

INSERT INTO `food_order` (`id`, `food_name`, `user_id`, `date2`, `qty`, `price`, `payment_status`) VALUES
(1, 'Pizza', 1, '2022/02/25', 2, 1234, 0),
(2, 'Tuborg', 12, '2022/02/07', 3, 190, 0);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `role` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `role`, `status`) VALUES
(4, 'admin@email.com', 'Admin@123', 'admin', 1),
(11, 'praman@gmail.com', '123456', 'vendor', 1),
(1, 'sangam.thapa218@gmail.com', 'S@ng@m11', 'user', 1),
(12, 'sangisipa@gmail.com', '123456', 'user', 1),
(3, 'thapanikita171@gmail.com', 'S@ng@m11', 'user', 1),
(13, 'TTT2', 'first@11', 'vendor', 1),
(14, 'TTT2@allinonehotel.com', 'first@11', 'vendor', 1),
(15, 'TTT3@allinonehotel.com', 'first@11', 'vendor', 0);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `package_name` mediumtext NOT NULL,
  `check_in_date` varchar(15) NOT NULL,
  `check_out_date` varchar(15) NOT NULL,
  `price` float NOT NULL,
  `payment_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `package_name`, `check_in_date`, `check_out_date`, `price`, `payment_status`) VALUES
(1, 'sangam.thapa218@gmail.com', 'silver', '2022-02-16', '2022-02-19', 1235, 1),
(2, 'sangam.thapa218@gmail.com', 'platinum', '2022-01-30', '2022-02-04', 0, 0),
(4, 'sangam.thapa218@gmail.com', 'platinum', '2022-02-25', '2022-02-28', 2500, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `room_name` varchar(70) NOT NULL,
  `room_pic` varchar(70) NOT NULL,
  `price` double NOT NULL,
  `total_rooms` int(11) NOT NULL,
  `occupied_rooms` int(11) NOT NULL DEFAULT 0,
  `no_of_people` tinyint(4) NOT NULL,
  `rooms_created` int(11) NOT NULL DEFAULT 0,
  `wifi_status` varchar(4) NOT NULL DEFAULT '0',
  `room_service_status` varchar(4) NOT NULL DEFAULT '0',
  `single_person_room_status` varchar(4) NOT NULL DEFAULT '0',
  `Double_person_room_status` varchar(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `room_name`, `room_pic`, `price`, `total_rooms`, `occupied_rooms`, `no_of_people`, `rooms_created`, `wifi_status`, `room_service_status`, `single_person_room_status`, `Double_person_room_status`) VALUES
(6, 'Balcony Room', 'room_photo/1638865877.jpg', 1250, 0, 5, 0, 2, '1', '1', '0', '1'),
(2, 'Double Bed Room', 'room_photo/1638865707.jpg', 1200, 0, 3, 0, 3, '1', '1', '0', '1'),
(5, 'Double Deluxe Room', 'room_photo/1638865850.jpg', 1500, 0, 0, 0, 0, '1', '1', '0', '1'),
(3, 'Economy Room', 'room_photo/1638865762.jpg', 810, 0, 0, 0, 0, '1', '1', '1', '0'),
(7, 'Quarantine room', 'room_photo/1638865919.jpg', 700, 0, 6, 0, 3, '1', '1', '1', '0'),
(1, 'Single Bed Room', 'room_photo/1638865680.jpg', 1000, 0, 0, 0, 0, '1', '1', '1', '0'),
(4, 'Single Deluxe Room', 'room_photo/1638865795.jpg', 1250, 0, 0, 0, 0, '1', '1', '1', '0');

-- --------------------------------------------------------

--
-- Table structure for table `room_details`
--

CREATE TABLE `room_details` (
  `id` int(11) NOT NULL,
  `room_number` int(11) NOT NULL,
  `room_type` varchar(41) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `check_in_date` varchar(15) NOT NULL,
  `check_out_date` varchar(15) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_details`
--

INSERT INTO `room_details` (`id`, `room_number`, `room_type`, `status`, `check_in_date`, `check_out_date`, `price`) VALUES
(2, 101, 'Balcony Room', 0, '', '', 1250),
(7, 111, 'Quarantine room', 0, '', '', 700),
(8, 111, 'Quarantine room', 1, '2022-01-29', '2022-01-31', 0),
(11, 111, 'Quarantine room', 1, '2022-02-17', '2022-02-22', 0),
(5, 200, 'Double Bed Room', 1, '2022-01-27', '2022-01-31', 0),
(6, 200, 'Double Bed Room', 1, '2022-02-04', '2022-02-11', 0);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `user_id` int(11) NOT NULL,
  `transaction_code` varchar(50) NOT NULL,
  `bill_number` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`user_id`, `transaction_code`, `bill_number`) VALUES
(1, '0002UHE', 'DS0000001');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` int(11) NOT NULL,
  `full_name` varchar(150) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `address` tinytext NOT NULL,
  `contact` varchar(14) NOT NULL,
  `creation_date` varchar(15) NOT NULL,
  `verification_code` tinytext NOT NULL,
  `verification_status` varchar(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `full_name`, `username`, `password`, `address`, `contact`, `creation_date`, `verification_code`, `verification_status`) VALUES
(11, '', 'praman@gmail.com', '123456', 'Sipadol,Suryabinayak-8,Bhaktapur', '9851134732', '2022-02-01', 'BTymaOTb', '0'),
(1, '', 'sangam.thapa218@gmail.com', 'S@ng@m11', 'Sipadol,BKT', '2147483647', '2021-12-02', '8ZydXRaT', '0'),
(12, '', 'sangisipa@gmail.com', '123456', 'Basuki tar,Sipadol,Suryabinayak Na.Pa-8,Bhaktapur', '9841646450', '2022-02-02', '9OONOAYg', '0'),
(3, '', 'thapanikita171@gmail.com', 'S@ng@m11', 'Pikhel,changunarayan na pa-5', '9851192248', '2021-12-03', 'UDTS8UVc', '0');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `id` int(11) NOT NULL,
  `vendor_name` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `adventure_id` int(11) NOT NULL,
  `travel_cost` tinyint(1) NOT NULL DEFAULT 0,
  `lunch_breakfast` tinyint(1) NOT NULL DEFAULT 0,
  `stay_cost` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`id`, `vendor_name`, `price`, `adventure_id`, `travel_cost`, `lunch_breakfast`, `stay_cost`) VALUES
(1, 'TTT', 1234, 1, 1, 0, 0),
(2, 'TTT2', 123, 1, 0, 0, 0),
(3, 'TTT2@allinonehotel.com', 122, 1, 0, 0, 0),
(4, 'TTT3@allinonehotel.com', 123, 1, 1, 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adventure`
--
ALTER TABLE `adventure`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `adventure_booked`
--
ALTER TABLE `adventure_booked`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`amenity_name`),
  ADD UNIQUE KEY `photo` (`photo`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`room_name`(250),`username`(250),`check_in_date`,`check_out_day`,`room_number`,`status`) USING BTREE,
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `buy`
--
ALTER TABLE `buy`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `cancelled_bookings`
--
ALTER TABLE `cancelled_bookings`
  ADD PRIMARY KEY (`username`,`check_in_date`,`check_out_date`,`cancelled_on`) USING BTREE,
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`food_name`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `key2` (`food_photo`);

--
-- Indexes for table `food_category`
--
ALTER TABLE `food_category`
  ADD PRIMARY KEY (`category`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `food_order`
--
ALTER TABLE `food_order`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`room_name`),
  ADD UNIQUE KEY `room_pic` (`room_pic`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `room_details`
--
ALTER TABLE `room_details`
  ADD PRIMARY KEY (`room_number`,`room_type`,`check_in_date`,`check_out_date`) USING BTREE,
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `contact` (`contact`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adventure`
--
ALTER TABLE `adventure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `adventure_booked`
--
ALTER TABLE `adventure_booked`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `buy`
--
ALTER TABLE `buy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cancelled_bookings`
--
ALTER TABLE `cancelled_bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `food_category`
--
ALTER TABLE `food_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `food_order`
--
ALTER TABLE `food_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `room_details`
--
ALTER TABLE `room_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
