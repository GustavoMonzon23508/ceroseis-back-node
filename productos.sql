-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql-gmonzon73.alwaysdata.net
-- Generation Time: Jul 02, 2024 at 12:55 AM
-- Server version: 10.6.17-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gmonzon73_ceroseis`
--

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `id` int(10) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `caracteristicas` text NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` int(10) NOT NULL,
  `categoria_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `caracteristicas`, `precio`, `stock`, `categoria_id`) VALUES
(1, 'Apple MacBook', 'Air m2 PRO', 200.00, 150, 1),
(2, 'Notebook Asus', 'VIVO Book Ryzen 7', 200.00, 175, 1),
(3, 'Notebook HP', 'Pavillion 15.6', 200.00, 100, 1),
(4, 'Celular Samsung ', 'Galaxy A14 5G', 200.00, 395, 3),
(5, 'Celular Xaomi', 'Pocophone x3 PRO', 200.00, 315, 3),
(6, 'Celular Motorola', 'Moto G84 5G', 200.00, 230, 3),
(7, 'Tablet Samsung ', 'Galaxy Tab A7', 200.00, 215, 2),
(8, 'Tablet Apple', 'iPad Air', 200.00, 28, 2),
(9, 'Tablet VIVO', 'VIVO pad 2', 200.00, 25, 2),
(10, 'Apple MacBook', 'MacBook M3 MAX', 200.00, 11, 1),
(11, 'Celular Apple', 'Iphone 14 PRO MAX', 200.00, 35, 3),
(12, 'Computadora Apple', 'Apple Mac PRO', 200.00, 19, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
