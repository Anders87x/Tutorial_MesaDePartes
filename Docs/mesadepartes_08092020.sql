-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-09-2020 a las 07:58:08
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
(52, 131, 'rtest', '621587769.pdf', '2020-07-30', 1),
(53, 132, 'asdad', '1855405045.pdf', '2020-07-30', 1),
(54, 134, 'asd', '438546530.pdf', '2020-07-30', 1),
(55, 136, 'asdasd', '1451179890.pdf', '2020-07-30', 1);

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
(3, '#', 'fa fa-database', 'Test', 1),
(4, 'tesdt', 'test', 'test', 0),
(5, 'zzz', 'www', 'ccc', 0),
(6, 'asd', 'asd', 'az', 0),
(7, 'aa', 'aa', 'aa', 0),
(8, 'vvxc', 'xcvxc', 'xcvxcv', 0),
(9, 'asdasd', 'asdasd', 'asdasdasd', 0);

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
(131, 14, 'Test', 'Test', '2020-07-30', NULL, NULL, 1),
(132, 14, 'Test', 'test', '2020-07-30', NULL, NULL, 1),
(133, 14, NULL, NULL, '2020-07-30', NULL, NULL, 2),
(134, 14, 'asd', 'asd', '2020-07-30', NULL, NULL, 1),
(135, 14, NULL, NULL, '2020-07-30', NULL, NULL, 2),
(136, 14, 'asd', 'asd', '2020-07-30', NULL, NULL, 1),
(137, 14, NULL, NULL, '2020-07-30', NULL, NULL, 2),
(138, 14, NULL, NULL, '2020-08-22', NULL, NULL, 2),
(139, 14, NULL, NULL, '2020-08-22', NULL, NULL, 2),
(140, 14, NULL, NULL, '2020-08-22', NULL, NULL, 2),
(141, 14, NULL, NULL, '2020-08-22', NULL, NULL, 2),
(142, 14, NULL, NULL, '2020-08-22', NULL, NULL, 2),
(143, 14, NULL, NULL, '2020-08-22', NULL, NULL, 2),
(144, 14, NULL, NULL, '2020-08-25', NULL, NULL, 2),
(145, 14, NULL, NULL, '2020-08-25', NULL, NULL, 2),
(146, 14, NULL, NULL, '2020-08-25', NULL, NULL, 2),
(147, 14, NULL, NULL, '2020-09-08', NULL, NULL, 2);

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
(14, 'Davis', 'Anderson', 'davis_anderson_87@hotmail.com', '123456', NULL, NULL, NULL, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tm_detallepartes`
--
ALTER TABLE `tm_detallepartes`
  ADD PRIMARY KEY (`partd_id`);

--
-- Indices de la tabla `tm_menu`
--
ALTER TABLE `tm_menu`
  ADD PRIMARY KEY (`men_id`);

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
  MODIFY `partd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `tm_menu`
--
ALTER TABLE `tm_menu`
  MODIFY `men_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tm_partes`
--
ALTER TABLE `tm_partes`
  MODIFY `part_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT de la tabla `tm_usuario`
--
ALTER TABLE `tm_usuario`
  MODIFY `usu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
