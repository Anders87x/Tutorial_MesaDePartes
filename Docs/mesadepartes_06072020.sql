-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-07-2020 a las 08:20:49
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
-- Estructura de tabla para la tabla `tm_detallepartes`
--

CREATE TABLE `tm_detallepartes` (
  `partd_id` int(11) NOT NULL,
  `part_id` int(11) NOT NULL,
  `partd_obs` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `partd_file` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `fech_crea` date NOT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tm_detallepartes`
--

INSERT INTO `tm_detallepartes` (`partd_id`, `part_id`, `partd_obs`, `partd_file`, `fech_crea`, `est`) VALUES
(35, 101, 'Ejemplo', '956546322.pdf', '2020-06-26', 0),
(36, 101, 'Ejemplo 2', '1684127876.pdf', '2020-06-26', 0),
(37, 101, 'asdasd', '829799564.pdf', '2020-06-26', 0),
(38, 101, 'asdasd', '1937284342.pdf', '2020-06-26', 0),
(39, 101, 'asdad', '1361483152.pdf', '2020-06-26', 1),
(40, 102, 'asd', '1047631237.pdf', '2020-06-26', 1),
(41, 103, 'asdasd', '1982566745.pdf', '2020-06-26', 0),
(42, 103, 'asdasd', '1324827659.pdf', '2020-06-26', 1),
(43, 105, 'asdasd', '849410159.docx', '2020-06-29', 0),
(44, 108, 'asdad', '1493445178.docx', '2020-06-29', 1),
(45, 109, '123123', '1126458871.docx', '2020-06-29', 0),
(46, 111, 'qqweqw', '2058492728.docx', '2020-06-29', 0),
(47, 113, 'asdasdas', '1868275468.docx', '2020-06-29', 1),
(48, 120, 'asd', '1845373198.docx', '2020-06-29', 1),
(49, 124, 'asdasd', '1767145049.docx', '2020-06-29', 1),
(50, 124, 'adasdad', '1125287175.docx', '2020-06-29', 1),
(51, 128, 'asdasdasd', '921314603.pdf', '2020-07-06', 0);

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
(101, 1, NULL, NULL, '2020-06-26', NULL, NULL, 2),
(102, 1, NULL, NULL, '2020-06-26', NULL, NULL, 2),
(103, 1, 'asdas', 'asdasd', '2020-06-26', NULL, NULL, 1),
(104, 1, NULL, NULL, '2020-06-26', NULL, NULL, 2),
(105, 1, 'asd', 'asd', '2020-06-29', NULL, NULL, 1),
(106, 1, NULL, NULL, '2020-06-29', NULL, NULL, 2),
(107, 1, NULL, NULL, '2020-06-29', NULL, NULL, 2),
(108, 1, 'asd', 'asdasd', '2020-06-29', NULL, NULL, 1),
(109, 1, '123', '12321', '2020-06-29', NULL, NULL, 1),
(110, 1, NULL, NULL, '2020-06-29', NULL, NULL, 2),
(111, 1, '123', '123', '2020-06-29', NULL, NULL, 1),
(112, 1, 'asdasd', 'asdasdasd', '2020-06-29', NULL, NULL, 1),
(113, 1, 'asd', 'asd', '2020-06-29', NULL, NULL, 1),
(114, 1, NULL, NULL, '2020-06-29', NULL, NULL, 2),
(115, 1, 'asd', 'asd', '2020-06-29', NULL, NULL, 1),
(116, 1, NULL, NULL, '2020-06-29', NULL, NULL, 2),
(117, 1, 'asd', 'asd', '2020-06-29', NULL, NULL, 1),
(118, 1, NULL, NULL, '2020-06-29', NULL, NULL, 2),
(119, 1, NULL, NULL, '2020-06-29', NULL, NULL, 2),
(120, 1, 'asd', 'asd', '2020-06-29', NULL, NULL, 1),
(121, 1, NULL, NULL, '2020-06-29', NULL, NULL, 2),
(122, 1, NULL, NULL, '2020-06-29', NULL, NULL, 2),
(123, 1, NULL, NULL, '2020-06-29', NULL, NULL, 2),
(124, 1, '23123', '123123123123123', '2020-06-29', NULL, NULL, 1),
(125, 1, NULL, NULL, '2020-06-29', NULL, NULL, 2),
(126, 1, NULL, NULL, '2020-06-29', NULL, NULL, 2),
(127, 1, NULL, NULL, '2020-07-06', NULL, NULL, 2),
(128, 1, NULL, NULL, '2020-07-06', NULL, NULL, 2),
(129, 1, NULL, NULL, '2020-07-06', NULL, NULL, 2),
(130, 1, NULL, NULL, '2020-07-06', NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_usuario`
--

CREATE TABLE `tm_usuario` (
  `usu_id` int(11) NOT NULL,
  `usu_nom` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `usu_ape` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `usu_correo` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `usu_pass` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `fech_crea` date DEFAULT NULL,
  `fech_modi` date DEFAULT NULL,
  `fech_elim` date DEFAULT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Tabla Usuario';

--
-- Volcado de datos para la tabla `tm_usuario`
--

INSERT INTO `tm_usuario` (`usu_id`, `usu_nom`, `usu_ape`, `usu_correo`, `usu_pass`, `fech_crea`, `fech_modi`, `fech_elim`, `est`) VALUES
(1, 'Anderson', 'Bastidas', 'davisanderson87@gmail.com', '123456', '2020-06-20', '0000-00-00', '0000-00-00', 1),
(2, 'Test', 'Test', 'test@test.com', '123456', '0000-00-00', NULL, NULL, 1),
(3, 'crea', 'cion', 'creacion@test.com', '123456', NULL, NULL, NULL, 1),
(4, '12', '12', '12@12.com', '12', NULL, NULL, NULL, 1),
(5, '13', '13', '13@13.com', '13', NULL, NULL, NULL, 1),
(6, '123', '12', 'a@a.com', '22', NULL, NULL, NULL, 1),
(10, 'ad', 'Anderson', 'davis_anderson_87@hotmail.com', '123456', NULL, NULL, NULL, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tm_detallepartes`
--
ALTER TABLE `tm_detallepartes`
  ADD PRIMARY KEY (`partd_id`);

--
-- Indices de la tabla `tm_partes`
--
ALTER TABLE `tm_partes`
  ADD PRIMARY KEY (`part_id`);

--
-- Indices de la tabla `tm_usuario`
--
ALTER TABLE `tm_usuario`
  ADD PRIMARY KEY (`usu_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tm_detallepartes`
--
ALTER TABLE `tm_detallepartes`
  MODIFY `partd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `tm_partes`
--
ALTER TABLE `tm_partes`
  MODIFY `part_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT de la tabla `tm_usuario`
--
ALTER TABLE `tm_usuario`
  MODIFY `usu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
