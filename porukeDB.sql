-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 19, 2020 at 12:05 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `porukeDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `poruke`
--

CREATE TABLE `poruke` (
  `id` int(11) NOT NULL,
  `user` varchar(45) NOT NULL,
  `message` varchar(512) DEFAULT NULL,
  `time` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `poruke`
--

INSERT INTO `poruke` (`id`, `user`, `message`, `time`) VALUES
(1, 'perica', 'nova poruka', '2019-10-20 10:15:08'),
(3, 'zika', 'nova poruka', '2019-10-20 10:18:49'),
(4, 'mika', 'opet poruka', '2019-10-20 10:19:34'),
(5, 'fdafad', 'dafdfadfadfa', '2020-11-18 22:53:50'),
(6, 'Djoka', 'Ajde bre vise', '2020-11-18 23:03:59'),
(7, 'fadfad', 'hhhhh', '2020-11-18 23:39:15'),
(8, 'DJoka', 'adgadgad', '2020-11-18 23:42:24'),
(9, 'dfafadfa', 'fdafaddgghh', '2020-11-18 23:49:12'),
(10, 'AAAd', 'gggfggg', '2020-11-18 23:51:07'),
(11, 'AAAAS', 'ghhjjj', '2020-11-18 23:51:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `poruke`
--
ALTER TABLE `poruke`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `poruke`
--
ALTER TABLE `poruke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
