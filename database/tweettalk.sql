-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2021 at 04:23 AM
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
(20, 'enchong18', 'Img/uploads/@enchong18ProfilePix.jpg', 'he purpose of our lives is to be happy.', 0, '2021-11-13 03:01:46'),
(21, 'enchong18', 'Img/uploads/@enchong18ProfilePix.jpg', 'Get busy living or get busy dying.', 0, '2021-11-13 03:02:09'),
(22, 'enchong18', 'Img/uploads/@enchong18ProfilePix.jpg', 'You only live once, but if you do it right, once is enough.', 1, '2021-11-13 03:02:31'),
(23, 'levii', 'Img/uploads/@leviiProfilePix.jpg', 'Many of life’s failures are people who did not realize how close they were to success when they gave up.', 0, '2021-11-13 03:05:48'),
(24, 'assh', 'Img/uploads/@asshProfilePix.png', 'If you want to live a happy life, tie it to a goal, not to people or things', 0, '2021-11-13 03:08:30'),
(25, 'assh', 'Img/uploads/@asshProfilePix.png', 'Money and success don’t change people; they merely amplify what is already there', 0, '2021-11-13 03:08:39');

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
(18, 'Anonymous', 'anonymous', 'anknown', 'P@ssw0rd', 'Philippines', 'Information Tech', '1999-10-20', 'male', '09123456789', 'anknown@gmail.com', '2021-11-13 02:56:52', 'Img/uploads/@anknownProfilePix.jpg'),
(19, 'Levi Acherman', 'Levi', 'Levii', 'pass123', 'Attacl on titan', 'Speacial Force', '2021-11-13', 'male', '09123456709', 'levi@gmail.com', '2021-11-13 03:04:53', 'Img/uploads/@leviiProfilePix.jpg'),
(20, 'Ash ketchup', 'Ash', 'Assh', 'pass321', 'Pallettown', 'Pokemon Master', '2021-11-13', 'male', '09365412598', 'ash@gmail.com', '2021-11-13 03:08:03', 'Img/uploads/@asshProfilePix.png');

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
