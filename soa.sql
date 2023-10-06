-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-10-2023 a las 21:00:10
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `soa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bookstore`
--

CREATE TABLE `bookstore` (
  `id` int(100) NOT NULL,
  `title` varchar(500) NOT NULL,
  `author` varchar(500) NOT NULL,
  `publication_year` varchar(500) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `bookstore`
--

INSERT INTO `bookstore` (`id`, `title`, `author`, `publication_year`, `price`) VALUES
(1, 'The Eye Of The World', 'Robert Jordan', '1985', 250.25),
(2, 'Hola', 'Paco', '2012', 10.5),
(3, 'The Great Adventure', 'John Smith', '2020', 19.99),
(4, 'The Great Adventure', 'John Smith', '2020', 19.99),
(5, 'The Great Adventure', 'John Smith', '2020', 19.99),
(6, 'A Mystery Unveiled', 'Jane Doe', '2018', 15.95),
(7, 'The Great Adventure', 'John Smith', '2020', 19.99),
(8, 'Science Explained', 'Michael Johnson', '2022', 24.5),
(9, 'Game Of Thrones', 'George R R Martin', '1980', 19.99),
(10, 'Lord Of The Flies', 'J R R Tolkien', '1914', 19.99),
(11, 'Harry Potter', 'Mary Shelly', '2020', 19.99),
(12, 'Lord Of The Flies', 'J R R Tolkien', '1914', 19.99),
(13, 'Game Of Thrones', 'George R R Martin', '1980', 19.99),
(14, 'Harry Potter', 'Mary Shelly', '2020', 19.99),
(15, 'Game Of Thrones', 'George R R Martin', '1980', 19.99),
(16, 'Harry Potter', 'Mary Shelly', '2020', 19.99),
(17, 'Lord Of The Flies', 'J R R Tolkien', '1914', 19.99),
(18, 'Lord Of The Flies', 'J R R Tolkien', '1914', 19.99),
(19, 'Game Of Thrones', 'George R R Martin', '1980', 19.99),
(20, 'Harry Potter', 'Mary Shelly', '2020', 19.99);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bookstore`
--
ALTER TABLE `bookstore`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bookstore`
--
ALTER TABLE `bookstore`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
