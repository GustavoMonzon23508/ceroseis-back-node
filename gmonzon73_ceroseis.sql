-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql-gmonzon73.alwaysdata.net
-- Generation Time: Jun 30, 2024 at 05:18 AM
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
-- Table structure for table `clientes`
--

CREATE TABLE `clientes` (
  `ID` int(10) NOT NULL,
  `nombre y apellido` varchar(60) NOT NULL,
  `DNI` int(10) NOT NULL,
  `email` varchar(60) NOT NULL,
  `domicilio` varchar(80) NOT NULL,
  `telefono` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clientes`
--

INSERT INTO `clientes` (`ID`, `nombre y apellido`, `DNI`, `email`, `domicilio`, `telefono`) VALUES
(100, 'Santiago Emanuel', 35162784, 'santiago10@gmail.com', 'Calle publica A 6282 Barrio Los Robles de Horizonte.', '54+11-6955-5555'),
(101, 'Luciana Martinez', 35162784, 'Lucianamartinez23@hotmail.com', 'Menendez Pidal 2345 Barrio Cerro de las Rosas.', '54+11-6955-5555'),
(102, 'Carolina Lozada', 35198890, 'Carolozada234@gmail.com', 'Calle publica A 6788 Barrio Altamira', '54+11-6955-5555'),
(103, 'Bautista Mulla', 35136789, 'Baumulla26@hotmail.com', 'Juan B Justo 4567 Barrio Alta Cba', '54+11-6955-5555'),
(104, 'Jorge Gomez', 35162890, 'JG@gmail.com', 'Campillo 1234 Barrio Cofico', '54+11-6955-5555'),
(105, 'Esteban Gutierrez', 35129891, 'EstebanG@gmail.com', 'Manzana 30 Lote 17 Barrio Parque de la Vega 1', '54+11-6955-5555'),
(106, 'Jose Peñaloza', 34567890, 'JPeñaloza@gmail.com', 'Calle Uruguay 2345 Barrio Bolulogne', '54+11-6955-5555'),
(107, 'Cesar de la Torre', 35124569, 'LTorre@gmail.com', 'Calle Bermudas 340 Barrio Cabo Farina', '54+11-6955-5555'),
(108, 'Lucas Mercado', 35189807, 'Lucas_Mercado76@gmail.com', 'Calle ituzaingo 768 Barrio Nueva Cordoba', '54+11-6955-5555');

-- --------------------------------------------------------

--
-- Table structure for table `item_pedidos`
--

CREATE TABLE `item_pedidos` (
  `pedido` int(11) NOT NULL,
  `producto` varchar(60) NOT NULL,
  `cantidad` int(10) NOT NULL,
  `precio` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT current_timestamp(),
  `total` decimal(10,2) NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `codigo` int(10) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `caracteristicas` text NOT NULL,
  `precio` decimal(10,0) NOT NULL,
  `categorias_id` int(11) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`codigo`, `nombre`, `caracteristicas`, `precio`, `categorias_id`, `stock`) VALUES
(1, 'Apple MacBook', 'Air m2 PRO', 200, 1, 50),
(2, 'Notebook Asus', 'VIVO Book Ryzen 7', 200, 1, 75),
(3, 'Notebook HP', 'Pavillion 15.6', 200, 1, 100),
(4, 'Celular Samsung ', 'Galaxy A14 5G', 200, 3, 95),
(5, 'Celular Xaomi', 'Pocophone x3 PRO', 200, 3, 100),
(6, 'Celular Motorola', 'Moto G84 5G', 200, 3, 200),
(7, 'Tablet Samsung ', 'Galaxy Tab A7', 200, 2, 125),
(8, 'Tablet Apple', 'iPad Air', 200, 2, 100),
(9, 'Tablet VIVO', 'VIVO pad 2', 200, 2, 50),
(10, 'Apple MacBook', 'MacBook M3 MAX', 200, 1, 50),
(11, 'Celular Apple', 'Iphone 14 PRO MAX', 200, 3, 100),
(12, 'Computadora Apple', 'Apple Mac PRO', 200, 1, 200);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `item_pedidos`
--
ALTER TABLE `item_pedidos`
  ADD PRIMARY KEY (`pedido`);

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `item_pedidos`
--
ALTER TABLE `item_pedidos`
  MODIFY `pedido` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `codigo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
