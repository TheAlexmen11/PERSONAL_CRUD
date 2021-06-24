-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-06-2021 a las 06:52:55
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `crud2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_producto`
--

CREATE TABLE `tm_producto` (
  `prod_id` int(11) NOT NULL,
  `prod_nom` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `prod_desc` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `fech_crea` datetime NOT NULL,
  `fech_modi` datetime DEFAULT NULL,
  `fech_elim` datetime DEFAULT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tm_producto`
--

INSERT INTO `tm_producto` (`prod_id`, `prod_nom`, `prod_desc`, `fech_crea`, `fech_modi`, `fech_elim`, `est`) VALUES
(1, 'post', 'ninguna', '2021-06-21 22:28:10', '2021-06-23 23:27:03', NULL, 1),
(2, 'all in one hp', 'ninguna', '2021-06-21 22:30:03', NULL, '2021-06-23 22:58:15', 0),
(3, 'Laptop advance nv7554', 'ninguna', '2021-06-21 22:30:41', NULL, NULL, 1),
(4, 'monitor', 'ninguna', '0000-00-00 00:00:00', NULL, NULL, 0),
(5, '', 'ninguna', '2021-06-21 23:10:11', NULL, NULL, 0),
(6, 'monitor', 'ninguna', '0000-00-00 00:00:00', NULL, NULL, 0),
(7, 'test', 'ninguna', '2021-06-23 23:04:42', NULL, NULL, 1),
(8, 'monitor', 'ninguna', '0000-00-00 00:00:00', NULL, NULL, 0),
(9, 'wwww', 'ninguna', '2021-06-23 23:28:20', NULL, NULL, 1),
(10, 'monitor', 'ninguna', '0000-00-00 00:00:00', NULL, NULL, 0),
(11, 'rest', 'ninguna', '2021-06-23 23:29:42', NULL, NULL, 1),
(12, 'monitor', 'ninguna', '0000-00-00 00:00:00', NULL, NULL, 0),
(13, 'casd', 'ninguna', '2021-06-23 23:29:49', NULL, NULL, 1),
(14, 'monitor', 'ninguna', '0000-00-00 00:00:00', NULL, NULL, 0),
(15, 'aaassdd', 'ninguna', '2021-06-23 23:31:42', '2021-06-23 23:36:19', NULL, 1),
(16, 'monitor', 'ninguna', '0000-00-00 00:00:00', NULL, NULL, 0),
(17, 'test', 'ninguna', '2021-06-23 23:36:11', NULL, NULL, 1),
(18, 'monitor', 'ninguna', '0000-00-00 00:00:00', NULL, NULL, 0),
(19, '234', 'ninguna', '2021-06-23 23:36:25', NULL, NULL, 1),
(20, 'dsads', '2212112', '2021-06-23 23:50:52', '2021-06-23 23:50:58', '2021-06-23 23:51:02', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tm_producto`
--
ALTER TABLE `tm_producto`
  ADD PRIMARY KEY (`prod_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tm_producto`
--
ALTER TABLE `tm_producto`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
