-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2021 at 02:03 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `DBR_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Prakriti', 'Vikash', 2600, '2021-04-17 18:58:27'),
(2, 'Diksha', 'Anurag', 1200, '2021-04-17 19:00:31'),
(3, 'Diksha', 'Akash', 1000, '2021-04-17 19:01:32'),
(4, 'Tarun', 'Yash', 3500, '2021-04-17 19:06:15'),
(5, 'Yash', 'Naman', 600, '2021-04-17 19:28:24'),
(6, 'Yash', 'Ankit', 400, '2021-04-17 19:30:31'),
(7, 'Prakriti', 'Akash', 2300, '2021-04-17 19:31:22'),
(8, 'Akash', 'Ayan', 830, '2021-04-18 07:39:58'),
(9, 'Tarun', 'Prakriti', 5040, '2021-04-18 09:37:08'),
(10, 'Naman', 'Maan', 4100, '2021-04-18 11:52:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1643, 'Akash', 'singh@gmail.com', 196800),
(2974, 'Ankit', 'yadav@gmail.com', 47850),
(3045, 'Anurag', 'bhatt@gmail.com', 704780),
(4085, 'Ayan', 'giri@gmail.com',545800),
(5143, 'Diksha', 'mishra@gmail.com', 475000),
(5734, 'Maan', 'tiwari@gmail.com', 45500),
(6995, 'Naman', 'oberoy@gmail.com', 97440),
(7264, 'Prakriti', 'sharmaa@gmail.com', 973540),
(8656, 'Tarun', 'parihar@gmail.com', 65450),
(9573, 'Yash', 'kumar@gmail.com', 84650);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--f
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54655;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
