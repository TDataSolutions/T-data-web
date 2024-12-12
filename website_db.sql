-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 12, 2024 at 07:15 PM
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
-- Database: `website_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `sent_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `email`, `subject`, `message`, `sent_at`) VALUES
(1, 'Bikram Sah', 'info@sahbikram.com.np', 'querry', 'best wishes sir', '2024-12-12 14:36:55'),
(3, 'Nepal Lion', 'rohit@gmail.com', 'just check', 'sakigoni', '2024-12-12 14:57:32'),
(4, 'Rohit', 'nikhil1111@gmail.com', 'noooo', 'warr', '2024-12-12 15:07:41');

-- --------------------------------------------------------

--
-- Table structure for table `package_messages`
--

CREATE TABLE `package_messages` (
  `id` int(11) NOT NULL,
  `package_type` varchar(50) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `company_address` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `sent_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `package_messages`
--

INSERT INTO `package_messages` (`id`, `package_type`, `company_name`, `email`, `phone_number`, `company_address`, `message`, `sent_at`) VALUES
(1, 'Gold Package', 'bnmd', 'bikramsah@gmail.com', '9802883933', 'biratnagar', 'old is gold', '2024-12-12 14:37:40'),
(3, 'Silver Package', 'rahul ranjan', 'rahul@gmail.com', '9812341234', 'indiaaaa', 'war hannum', '2024-12-12 15:26:33'),
(5, 'Silver Package', 'nepal lion', 'bikramsah@gmail.com', '9802883933', 'kathmandu', 'jjj', '2024-12-12 15:41:02'),
(7, 'Busy Software', 'Sujan Chapagain', 'rohit@gmail.com', '9832019203', 'sukhipur', 'sujan', '2024-12-12 17:25:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_messages`
--
ALTER TABLE `package_messages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `package_messages`
--
ALTER TABLE `package_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
