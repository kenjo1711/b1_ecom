-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2020 at 06:06 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `b1_ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Breakfast'),
(2, 'Lunch'),
(3, 'Dinner');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` char(50) NOT NULL,
  `price` float(10,2) NOT NULL,
  `description` char(100) NOT NULL,
  `image` char(255) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `price`, `description`, `image`, `category_id`) VALUES
(5, 'he', 2.00, '												Sweet and Sour', '../assets/images/Quad Sum (Python).png', 1),
(6, 'egjlakgjd', 13.00, '												Super Sour										', '', 3),
(21, 'LOL', 123.00, 'sfsces', '../assets/images/', 1),
(22, 'aawdawdaw', 12.00, 'wadawdwa', '../assets/images/', 1),
(23, '123123', 123.00, '3', '../assets/images/', 1),
(24, 'b', 1.00, '																																																																								avx																									', '../assets/images/', 1),
(26, 'Pepe Yay', 8.00, 'adgadgadg', '../assets/images/FindJobs Use Case Diagram - Ken.png', 1),
(27, 'sfhsfhsfhsfhsfh', 325.00, 'gadgadgadg', '../assets/images/obamaamabo (1).jpeg', 3),
(29, 'Chair', 1222.00, 'a plain chair, try me.', '../assets/images/image (4).png', 2),
(30, 'Batman Poster', 4300.00, 'fake lol', '../assets/images/obamaamabo (1).jpeg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `item_order`
--

CREATE TABLE `item_order` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `quantity` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item_order`
--

INSERT INTO `item_order` (`id`, `item_id`, `order_id`, `quantity`) VALUES
(5, 5, 2, '10'),
(6, 6, 2, '5'),
(7, 21, 2, '5'),
(8, 5, 3, '3'),
(9, 6, 3, '3'),
(10, 21, 3, '1'),
(11, 5, 4, '2'),
(12, 6, 4, '3'),
(13, 5, 5, '3'),
(14, 6, 5, '3'),
(15, 5, 6, '3'),
(16, 6, 6, '5'),
(17, 5, 7, '34'),
(18, 6, 7, '34'),
(19, 5, 8, '34'),
(20, 6, 8, '4'),
(21, 5, 9, '2'),
(22, 6, 9, '2'),
(23, 5, 10, '3'),
(24, 6, 10, '3'),
(25, 5, 11, '1'),
(26, 6, 11, '3'),
(27, 5, 12, '2'),
(28, 6, 12, '2'),
(29, 5, 13, '2'),
(30, 6, 13, '3'),
(31, 5, 14, '4'),
(32, 6, 14, '3'),
(33, 21, 15, '1'),
(34, 22, 15, '3'),
(35, 23, 15, '3'),
(36, 5, 16, '3'),
(37, 6, 16, '5'),
(38, 5, 17, '2'),
(39, 6, 17, '3'),
(40, 5, 18, '2'),
(41, 6, 18, '4'),
(42, 5, 19, '3'),
(43, 6, 19, '4'),
(44, 5, 20, '2'),
(45, 6, 20, '4'),
(46, 5, 21, '2'),
(47, 21, 21, '4'),
(48, 5, 22, '2'),
(49, 6, 22, '1'),
(50, 5, 23, '2'),
(51, 6, 23, '4'),
(52, 5, 24, '4'),
(53, 29, 25, '2'),
(54, 5, 26, '3'),
(55, 29, 26, '2'),
(56, 23, 26, '1'),
(57, 5, 27, '3'),
(58, 6, 27, '1'),
(59, 21, 27, '1'),
(60, 5, 28, '1'),
(61, 6, 28, '4'),
(62, 29, 28, '1'),
(63, 5, 29, '2'),
(64, 6, 29, '3'),
(65, 5, 30, '2'),
(66, 6, 30, '4'),
(67, 5, 31, '2'),
(68, 5, 32, '3'),
(69, 5, 33, '2'),
(70, 6, 33, '3'),
(71, 29, 34, '3'),
(72, 26, 34, '1'),
(73, 5, 35, '4'),
(74, 6, 35, '3'),
(75, 5, 36, '34'),
(76, 6, 36, '4'),
(77, 5, 37, '3'),
(78, 5, 38, '3'),
(79, 5, 39, '4'),
(80, 5, 40, '4'),
(81, 5, 41, '3'),
(82, 5, 42, '3'),
(83, 5, 43, '4'),
(84, 5, 44, '3'),
(85, 5, 45, '4'),
(86, 5, 46, '2'),
(87, 5, 47, '4'),
(88, 6, 47, '1');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total` float(10,2) NOT NULL,
  `date_purchased` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `isPaypal` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `total`, `date_purchased`, `isPaypal`) VALUES
(1, 2, 34340.00, '2020-09-29 06:52:04', 0),
(2, 2, 780.00, '2020-09-29 07:40:54', 0),
(3, 2, 192.00, '2020-09-30 01:12:29', 0),
(4, 2, 59.00, '2020-09-30 03:36:31', 0),
(5, 11, 69.00, '2020-09-30 08:15:00', 0),
(6, 11, 95.00, '2020-09-30 08:17:32', 0),
(7, 11, 782.00, '2020-09-30 08:24:11', 0),
(8, 11, 392.00, '2020-09-30 08:24:43', 0),
(9, 11, 46.00, '2020-09-30 08:26:02', 1),
(10, 11, 69.00, '2020-09-30 08:26:37', 1),
(11, 11, 49.00, '2020-09-30 08:28:33', 1),
(12, 11, 46.00, '2020-09-30 08:29:11', 0),
(13, 11, 59.00, '2020-09-30 08:30:04', 1),
(14, 11, 47.00, '2020-10-05 15:07:57', 0),
(15, 11, 528.00, '2020-10-05 17:56:13', 0),
(16, 11, 71.00, '2020-10-05 18:32:48', 0),
(17, 12, 0.00, '2020-10-06 11:45:20', 0),
(18, 12, 0.00, '2020-10-06 11:46:17', 0),
(19, 12, 0.00, '2020-10-06 11:47:23', 0),
(20, 12, 0.00, '2020-10-06 11:52:33', 1),
(21, 12, 0.00, '2020-10-06 11:57:24', 0),
(22, 12, 0.00, '2020-10-06 11:58:10', 0),
(23, 12, 56.00, '2020-10-06 12:04:04', 0),
(24, 12, 8.00, '2020-10-06 12:04:20', 0),
(25, 11, 2444.00, '2020-10-06 12:43:07', 0),
(26, 11, 2573.00, '2020-10-06 12:44:06', 0),
(27, 11, 142.00, '2020-10-06 12:57:46', 0),
(28, 11, 1276.00, '2020-10-06 13:04:42', 0),
(29, 11, 43.00, '2020-10-06 13:05:54', 0),
(30, 11, 0.00, '2020-10-06 13:07:38', 0),
(31, 11, 0.00, '2020-10-06 13:07:54', 0),
(32, 11, 6.00, '2020-10-06 13:09:23', 0),
(33, 11, 43.00, '2020-10-06 13:14:04', 0),
(34, 11, 3674.00, '2020-10-06 13:15:03', 0),
(35, 11, 47.00, '2020-10-06 13:21:02', 0),
(36, 11, 120.00, '2020-10-06 13:52:33', 1),
(37, 11, 6.00, '2020-10-06 13:55:04', 0),
(38, 11, 6.00, '2020-10-06 13:56:26', 0),
(39, 11, 8.00, '2020-10-06 13:57:12', 0),
(40, 11, 8.00, '2020-10-06 13:57:38', 0),
(41, 11, 6.00, '2020-10-06 13:59:43', 0),
(42, 11, 6.00, '2020-10-06 14:01:27', 0),
(43, 11, 8.00, '2020-10-06 14:06:17', 1),
(44, 11, 6.00, '2020-10-06 14:07:49', 0),
(45, 11, 8.00, '2020-10-06 14:09:51', 0),
(46, 17, 4.00, '2020-10-06 15:03:49', 0),
(47, 17, 21.00, '2020-10-06 15:04:22', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `isAdmin`) VALUES
(2, 'John ', 'Doe', 'johndoe123', 'johndoe@gmail.com', '88ea39439e74fa27c09a4fc0bc8ebe6d00978392', 0),
(3, 'admin', 'admin', 'admin123', 'admin@gmail.com', '88ea39439e74fa27c09a4fc0bc8ebe6d00978392', 1),
(4, 'John ', 'Doe', 'admin123', 'johndoe@gmail.com', '88ea39439e74fa27c09a4fc0bc8ebe6d00978392', 0),
(5, 'Asher', 'Chan', 'johndoe123', 'johndoe@gmail.com', '88ea39439e74fa27c09a4fc0bc8ebe6d00978392', 0),
(7, 'jojo', 'jojo', 'jojojojo', 'jojojojo@gmail.com', 'e5191e0ff4ad464b8c47e14617aeffc56b1c33fb', 0),
(11, 'Arthur', 'Fleck', 'jokerIsAtPlay', 'jokerisatplay@gmail.com', '64d23b3bda544748fd1f86e4e2a09b332efda9dd', 0),
(12, 'robin', 'rey', 'rbnrey600', 'rbnrey600@gmail.com', '64d23b3bda544748fd1f86e4e2a09b332efda9dd', 0),
(17, 'Kenrick', 'Jairaj', 'kejavuDanger', 'kenrickjairaj@gmail.com', '64d23b3bda544748fd1f86e4e2a09b332efda9dd', 0),
(23, 'Hello', 'There', 'javascriptIsCool', 'hellothere@javascript.com', 'f9a4d6c9b146c1e4a8e9ed904e2f9da5564baed6', 0),
(24, 'Robin', 'Roy', 'rbnroy600', 'rbnroy600@gmail.com', '64d23b3bda544748fd1f86e4e2a09b332efda9dd', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_ibfk_1` (`category_id`);

--
-- Indexes for table `item_order`
--
ALTER TABLE `item_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=380;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `item_order`
--
ALTER TABLE `item_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `item_order`
--
ALTER TABLE `item_order`
  ADD CONSTRAINT `item_order_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `item_order_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
