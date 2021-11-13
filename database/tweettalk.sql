-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2021 at 05:27 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tweettalk`
--

-- --------------------------------------------------------

--
-- Table structure for table `tweets`
--

CREATE TABLE `tweets` (
  `id` int(10) NOT NULL,
  `tweeter_name` varchar(20) NOT NULL,
  `tweeter_img` varchar(50) NOT NULL,
  `tweet_content` text NOT NULL,
  `tweet_likes` int(100) NOT NULL,
  `tweet_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tweets`
--

INSERT INTO `tweets` (`id`, `tweeter_name`, `tweeter_img`, `tweet_content`, `tweet_likes`, `tweet_time`) VALUES
(23, 'levii', 'Img/uploads/@leviiProfilePix.jpg', 'Many of life’s failures are people who did not realize how close they were to success when they gave up.', 0, '2021-11-13 03:05:48'),
(24, 'assh', 'Img/uploads/@asshProfilePix.png', 'If you want to live a happy life, tie it to a goal, not to people or things', 1, '2021-11-13 03:08:30'),
(25, 'assh', 'Img/uploads/@asshProfilePix.png', 'Money and success don’t change people; they merely amplify what is already there', 1, '2021-11-13 03:08:39'),
(26, 'levii', 'Img/uploads/@leviiProfilePix.jpg', 'whahaha', 0, '2021-11-13 04:16:53'),
(27, 'lucii', 'Img/uploads/@luciiProfilePix.jpg', 'The way to get started is to quit talking and begin doing.', 0, '2021-11-13 04:26:11'),
(28, 'lucii', 'Img/uploads/@luciiProfilePix.jpg', 'The future belongs to those who believe in the beauty of their dreams', 0, '2021-11-13 04:26:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `othernames` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `course` varchar(50) NOT NULL,
  `birthday` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `profile_picture` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `othernames`, `username`, `password`, `address`, `course`, `birthday`, `gender`, `phone`, `email`, `reg_date`, `profile_picture`) VALUES
(19, 'Levi Acherman', 'Levi', 'Levii', 'pass123', 'Attacl on titan', 'Speacial Force', '2021-11-13', 'male', '09123456709', 'levi@gmail.com', '2021-11-13 03:04:53', 'Img/uploads/@leviiProfilePix.jpg'),
(20, 'Ash ketchup', 'Ash', 'Assh', 'pass321', 'Pallettown', 'Pokemon Master', '2021-11-13', 'male', '09365412598', 'ash@gmail.com', '2021-11-13 03:08:03', 'Img/uploads/@asshProfilePix.png'),
(21, 'Lucy Heartfilia', 'Lucy', 'Lucii', 'pass12345', 'Magnollia', 'Wizard', '2021-11-13', 'female', '09123456789', 'lucii@gmail.com', '2021-11-13 04:23:52', 'Img/uploads/@luciiProfilePix.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tweets`
--
ALTER TABLE `tweets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tweets`
--
ALTER TABLE `tweets`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
