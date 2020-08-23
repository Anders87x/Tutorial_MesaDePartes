-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-08-2020 a las 04:33:25
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
-- Estructura de tabla para la tabla `tm_menu`
--

CREATE TABLE `tm_menu` (
  `men_id` int(11) NOT NULL,
  `men_ruta` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `men_icon` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `men_nom` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tm_menu`
--

INSERT INTO `tm_menu` (`men_id`, `men_ruta`, `men_icon`, `men_nom`, `est`) VALUES
(1, '../NuevoRegistro/', 'si si-compass', 'Nuevo Registro', 1),
(2, '../ConsultarStatus/', 'si si-puzzle', 'Consultar Status', 1),
(3, '#', 'fa fa-database', 'Test', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tm_menu`
--
ALTER TABLE `tm_menu`
  ADD PRIMARY KEY (`men_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tm_menu`
--
ALTER TABLE `tm_menu`
  MODIFY `men_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
