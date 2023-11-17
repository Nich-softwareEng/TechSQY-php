-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2023 at 10:21 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `college_website_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(30) NOT NULL,
  `name` varchar(100) NOT NULL,
  `filename` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `filename`, `date_created`) VALUES
(1, 'Laptops', 'product_dis', '2023-10-24 15:24:00'),
(2, 'Computers', 'product_dis', '2023-10-24 15:24:00'),
(3, 'Phones', 'product_dis', '2023-10-24 15:24:00'),
(4, 'Hedphones', 'product_dis', '2023-10-24 15:24:00'),
(5, 'Digital watchs', 'product_dis', '2023-10-24 15:24:00'),
(6, 'Tablets', 'product_dis', '2023-10-24 15:24:00'),
(7, 'Smartphones', 'product_dis', '2023-10-25 10:30:00'),
(8, '4K Smart TV', 'product_dis', '2023-10-26 12:45:00'),
(9, 'Wireless Earbuds', 'product_dis', '2023-10-27 14:15:00'),
(10, 'Gaming Console', 'product_dis', '2023-10-28 16:30:00'),
(11, 'Smartwatch', 'product_dis', '2023-10-29 18:00:00'),
(12, 'Camera Kit', 'product_dis', '2023-10-30 20:15:00'),
(13, 'Home Theater System', 'product_dis', '2023-10-31 22:30:00'),
(14, 'Bluetooth Speaker', 'product_dis', '2023-11-01 08:45:00'),
(15, 'VR Headset', 'product_dis', '2023-11-02 11:00:00'),
(16, 'LED Bulb', 'product_dis', '2023-11-03 13:30:00'),
(17, 'Power Strip', 'product_dis', '2023-11-04 15:45:00'),
(18, 'Circuit Breaker', 'product_dis', '2023-11-05 17:00:00'),
(19, 'Multimeter', 'product_dis', '2023-11-06 19:15:00'),
(20, 'Solar Panel Kit', 'product_dis', '2023-11-07 21:30:00'),
(21, 'Electrical Tape Set', 'product_dis', '2023-11-08 09:45:00'),
(22, 'Smart Thermostat', 'product_dis', '2023-11-09 12:00:00'),
(23, 'Soldering Kit', 'product_dis', '2023-11-10 14:30:00'),
(24, 'Power Inverter', 'product_dis', '2023-11-11 16:45:00'),
(25, 'Digital Timer Switch', 'product_dis', '2023-11-12 19:00:00')
;


-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(30) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `datetime`) VALUES
(1, 'Update', 'We are thrilled to announce the arrival of the latest and greatest in electronics. Explore cutting-edge smartphones, powerful laptops, and innovative smart home solutions. Stay ahead of the tech curve with our handpicked selection that combines style and performance.', '2023-10-21 00:00:00'),
(2, 'today', 'Experience the future of home living with our new range of smart devices. From intelligent thermostats to automated lighting solutions, we are making it easier than ever to create a connected and efficient home environment.', '2023-11-20 00:00:00'),
(3, 'coming soon', 'Our commitment to innovation extends to the realm of electricals. Explore energy-efficient LED bulbs, reliable power strips, and advanced electrical tools. Elevate your home and workspace with quality electrical products designed to enhance your lifestyle.', '2023-11-16 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `filename` text NOT NULL,
  `date_crerated` int(11) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'TechSQY Technologies', 'nmutharimi4@gmail.com', '+2547 3339 9921', 'cp.jpg', '<p>Welcome to <strong>TechSQY Technologies</strong> - Your Ultimate Destination for Cutting-Edge Electronics</p> <p>At <strong>TechSQY Technologies</strong>, we bring you a world of innovation and technology, curated for your modern lifestyle. Step into a realm where quality meets functionality and discover a diverse range of electronic marvels that redefine the way you live, work, and play. </p> <p>Immerse yourself in the latest advancements in electronics. <strong> From state-of-the-art smartphones and smart home solutions to powerful laptops and entertainment systems</strong>, our collection is a testament to the ever-evolving world of technology. </p><p> We handpick each product to ensure it aligns with our commitment to quality, performance, and style. </p><p><strong>Stay Connected, Stay Ahead</strong></p> <p>Follow our blog and social media channels to stay updated on the latest tech trends, product launches, and exclusive offers. </p> <p><strong>Thank you for choosing TechSQY Technologies. Embrace innovation, embrace the future. </strong></p>');


-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 3 COMMENT '1=Admin,2=Staff, 3= subscriber'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`) VALUES
(1, 'Administrator', 'admin', '0192023a7bbd73250516f069df18b500', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
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
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
