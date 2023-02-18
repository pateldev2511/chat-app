-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2019 at 08:16 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_chat_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `msg_by` int(11) NOT NULL,
  `msg_to` int(11) NOT NULL,
  `msg_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `body`, `msg_by`, `msg_to`, `msg_time`) VALUES
(177, 'hi', 12, 9, '2018-07-23 14:13:26'),
(182, 'hey', 9, 13, '2019-11-18 05:29:26'),
(183, 'hey', 13, 14, '2019-11-18 05:31:29'),
(184, 'hello', 14, 13, '2019-11-18 05:31:35'),
(185, 'hey', 15, 13, '2019-11-18 06:39:33'),
(186, 'hello', 13, 15, '2019-11-18 06:39:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL,
  `reg_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `online` varchar(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `reg_time`, `online`) VALUES
(13, 'Dev Patel', 'abc1234@gmail.com', 'Axel', '$5$rounds=535000$0S0opLCybZubqYBC$9VM5z2F59HkpfN7a9F8pVx9Pe7zjytSFPOy8Vo/YnWC', '2019-11-18 05:27:14', '1'),
(14, 'Ghost', 'abc@123.com', 'Ghost', '$5$rounds=535000$/8N12PIuCpw.upcA$bZo80g6cgwruWC0tjX3AucPIlRc2RbmD9mVaTxa7Tq1', '2019-11-18 05:31:00', '1'),
(15, 'jeel', 'hello123@gmail.com', 'Recon', '$5$rounds=535000$dcDYnSStMKzFzxyY$YNAuFForcaGiape2tjVMpGYYVHNyhUv6atIH.euH/Z6', '2019-11-18 06:37:29', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
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
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
