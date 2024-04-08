-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2023 at 12:50 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ads_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_about`
--

CREATE TABLE `tbl_about` (
  `id` varchar(255) NOT NULL,
  `about` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_about`
--

INSERT INTO `tbl_about` (`id`, `about`) VALUES
('01', '                    ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `user_id` varchar(255) NOT NULL DEFAULT 'A237893',
  `username` varchar(255) NOT NULL DEFAULT 'admin',
  `email` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'admin',
  `avatar` varchar(255) DEFAULT NULL,
  `reg_date` varchar(255) NOT NULL,
  `verified` varchar(255) NOT NULL DEFAULT 'YES'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`user_id`, `username`, `email`, `login`, `role`, `avatar`, `reg_date`, `verified`) VALUES
('A237893', 'admin', 'admin@admin.com', '$2y$10$uGPVtrzrg22.lZcMv6V9E.mbqXtezDzE5oIGgZSRkkEj7YRaRyqkO', 'admin', NULL, '04/11/2018 - 03:10:57', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ads`
--

CREATE TABLE `tbl_ads` (
  `enc_id` int(255) NOT NULL,
  `ad_id` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `ad_condition` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `fixed` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `short_desc` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `date_posted` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'inactive',
  `featured` varchar(255) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_alerts`
--

CREATE TABLE `tbl_alerts` (
  `id` int(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_alerts`
--

INSERT INTO `tbl_alerts` (`id`, `code`, `description`, `type`) VALUES
(1, '001', 'You have been registered successfully', 'success'),
(2, '002', 'Invalid email address or password', 'danger'),
(3, '003', 'Sorry, only JPG, JPEG, & PNG files are allowed.', 'warning'),
(4, '004', 'Sorry, your file is too large. avatar upload should be less than <strong>800KB</strong>', 'warning'),
(5, '005', 'Profile has been updated', 'success'),
(6, '006', 'Password has been updated', 'success'),
(7, '007', 'Image uploaded successfully', 'success'),
(8, '008', 'Ad has been updated successfully', 'success'),
(9, '009', 'Ad has been deleted successfully', 'success'),
(10, '010', 'Your image must have a width of <strong>750</strong> and a height of <strong>450</strong> ', 'warning'),
(11, '011', 'Your message has been sent', 'success'),
(12, '012', 'An error occurred while sending your message', 'warning'),
(13, '013', 'Account was not found', 'warning'),
(14, '014', 'Please check your email for more instructions', 'info'),
(15, '015', 'Unknown error occured', 'warning'),
(16, '016', 'Settings applied successfully', 'info'),
(17, '017', 'FAQ was added successfully', 'success'),
(18, '018', 'Email is already registered', 'warning'),
(19, '019', 'Email or username is already registered', 'warning'),
(20, '020', 'Username is already registered', 'warning');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bids`
--

CREATE TABLE `tbl_bids` (
  `bid` int(11) NOT NULL,
  `ad_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `bid_amt` int(20) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

CREATE TABLE `tbl_categories` (
  `id` int(255) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`id`, `category`) VALUES
(1, 'Books and Magazines'),
(2, 'Cars and Vehicles'),
(3, 'Electronics and Gadgets'),
(4, 'Fashion and Beauty'),
(5, 'Home Appliances'),
(7, 'Miscellaneous'),
(6, 'Mobiles'),
(8, 'Music and Arts'),
(9, 'Others'),
(11, 'Pets and Animals'),
(12, 'Real Estate'),
(13, 'Sports and Games');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cities`
--

CREATE TABLE `tbl_cities` (
  `id` int(255) NOT NULL,
  `city` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_cities`
--

INSERT INTO `tbl_cities` (`id`, `city`) VALUES
(1, 'Banglore'),
(2, 'Mumbai'),
(3, 'Delhi'),
(4, 'Udupi'),
(5, 'Chennai'),
(6, 'Kolkata'),
(7, 'Pune'),
(8, 'Jaipur'),
(9, 'Varanasi'),
(10, 'Shimoga'),
(11, 'Mysore'),
(12, 'Srinagar'),
(13, 'Noida'),
(14, 'Kochi'),
(15, 'Gulbarga'),
(16, 'Jammu'),
(17, 'Bhadravathi'),
(18, 'Tumkur'),
(19, 'Gaya'),
(20, 'Kashi'),
(21, 'Pandarapura'),
(22, 'Madurai'),
(23, 'Nagpura'),
(24, 'Puri'),
(25, 'Ambala'),
(28, 'Handeni');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faqs`
--

CREATE TABLE `tbl_faqs` (
  `id` int(255) NOT NULL,
  `quest` varchar(255) NOT NULL,
  `answ` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reset_tokens`
--

CREATE TABLE `tbl_reset_tokens` (
  `id` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `expires` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `verified` varchar(255) NOT NULL DEFAULT 'NO',
  `reg_date` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `username`, `email`, `login`, `role`, `verified`, `reg_date`, `avatar`) VALUES
('M765894', 'demouser', 'demouser@gmail.com', '$2y$10$KHOSUx5.RlXPxIBzzOoE2.HHbxGx0Yj6AjaeVSTBXFwoOMFyZlYpS', 'user', 'NO', '20/08/2023 - 01:40:51', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_about`
--
ALTER TABLE `tbl_about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `tbl_ads`
--
ALTER TABLE `tbl_ads`
  ADD PRIMARY KEY (`enc_id`);

--
-- Indexes for table `tbl_alerts`
--
ALTER TABLE `tbl_alerts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bids`
--
ALTER TABLE `tbl_bids`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD UNIQUE KEY `category` (`category`);

--
-- Indexes for table `tbl_cities`
--
ALTER TABLE `tbl_cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_faqs`
--
ALTER TABLE `tbl_faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_reset_tokens`
--
ALTER TABLE `tbl_reset_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_ads`
--
ALTER TABLE `tbl_ads`
  MODIFY `enc_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_alerts`
--
ALTER TABLE `tbl_alerts`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_bids`
--
ALTER TABLE `tbl_bids`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_cities`
--
ALTER TABLE `tbl_cities`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_faqs`
--
ALTER TABLE `tbl_faqs`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_reset_tokens`
--
ALTER TABLE `tbl_reset_tokens`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
