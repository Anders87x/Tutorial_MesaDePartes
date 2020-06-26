-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-06-2020 a las 09:02:42
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mesadepartes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_partes`
--

CREATE TABLE `tm_partes` (
  `part_id` int(11) NOT NULL,
  `usu_id` int(11) NOT NULL,
  `part_asun` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `part_desc` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fech_crea` date DEFAULT NULL,
  `fech_visto` date DEFAULT NULL,
  `fech_resp` date DEFAULT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tm_partes`
--

INSERT INTO `tm_partes` (`part_id`, `usu_id`, `part_asun`, `part_desc`, `fech_crea`, `fech_visto`, `fech_resp`, `est`) VALUES
(1, 1, 'as', 'awsd', NULL, NULL, NULL, 1),
(2, 1, NULL, NULL, '2020-06-26', NULL, NULL, 2),
(3, 1, NULL, NULL, '2020-06-26', NULL, NULL, 2),
(4, 1, NULL, NULL, '2020-06-26', NULL, NULL, 2),
(5, 1, NULL, NULL, '2020-06-26', NULL, NULL, 2),
(6, 1, NULL, NULL, '2020-06-26', NULL, NULL, 2),
(7, 1, NULL, NULL, '2020-06-26', NULL, NULL, 2),
(8, 1, NULL, NULL, '2020-06-26', NULL, NULL, 2),
(9, 1, NULL, NULL, '2020-06-26', NULL, NULL, 2),
(10, 1, NULL, NULL, '2020-06-26', NULL, NULL, 2),
(11, 1, '', '', '2020-06-26', NULL, NULL, 1),
(12, 1, NULL, NULL, '2020-06-26', NULL, NULL, 2),
(13, 1, 'asdasdasd', 'aaaaa', '2020-06-26', NULL, NULL, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tm_partes`
--
ALTER TABLE `tm_partes`
  ADD PRIMARY KEY (`part_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tm_partes`
--
ALTER TABLE `tm_partes`
  MODIFY `part_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
