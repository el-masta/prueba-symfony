-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 03-04-2020 a las 13:55:33
-- Versión del servidor: 5.7.29-0ubuntu0.18.04.1
-- Versión de PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `material`
--

CREATE TABLE `material` (
  `id` int(11) NOT NULL,
  `grupo` varchar(25) NOT NULL,
  `material` varchar(25) NOT NULL,
  `marca` varchar(25) NOT NULL,
  `venta_mes` int(11) NOT NULL,
  `mes` varchar(2) NOT NULL,
  `precio_compra` decimal(12,2) NOT NULL,
  `precio_venta` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `material`
--

INSERT INTO `material` (`id`, `grupo`, `material`, `marca`, `venta_mes`, `mes`, `precio_compra`, `precio_venta`) VALUES
(1, 'Maquinaria', 'Corta cesped', 'B&D', 13, '1', '100.00', '110.00'),
(2, 'Maquinaria', 'Camion', 'B&D', 43, '1', '233.00', '256.30'),
(3, 'Maquinaria', 'Hormigonera', 'B&D', 4, '1', '434.00', '477.40'),
(4, 'Tools', 'Alicate', 'B&D', 6, '1', '544.00', '598.40'),
(5, 'Tools', 'Destornillador', 'B&D', 5, '1', '32.00', '35.20'),
(6, 'Accesorios', 'Bombilla', 'B&D', 21, '1', '34.00', '37.40'),
(7, 'Accesorios', 'Cable', 'B&D', 3, '1', '432.00', '475.20'),
(8, 'Maquinaria', 'Corta cesped', 'Ninja', 3, '1', '2.00', '2.20'),
(9, 'Maquinaria', 'Camion', 'Ninja', 4, '1', '311.00', '342.10'),
(10, 'Maquinaria', 'Hormigonera', 'Ninja', 5, '1', '4343.00', '4777.30'),
(11, 'Tools', 'Alicate', 'Ninja', 6, '1', '2342.00', '2576.20'),
(12, 'Tools', 'Destornillador', 'Ninja', 1, '1', '1232.00', '1355.20'),
(13, 'Accesorios', 'Bombilla', 'Ninja', 3, '1', '1231.00', '1354.10'),
(14, 'Accesorios', 'Cable', 'Ninja', 0, '1', '13.00', '14.30'),
(15, 'Maquinaria', 'Corta cesped', 'B&D', 23, '2', '100.00', '110.00'),
(16, 'Maquinaria', 'Camion', 'B&D', 4, '2', '233.00', '256.30'),
(17, 'Maquinaria', 'Hormigonera', 'B&D', 4, '2', '434.00', '477.40'),
(18, 'Tools', 'Alicate', 'B&D', 43, '2', '544.00', '598.40'),
(19, 'Tools', 'Destornillador', 'B&D', 5, '2', '32.00', '35.20'),
(20, 'Accesorios', 'Bombilla', 'B&D', 45, '2', '34.00', '37.40'),
(21, 'Accesorios', 'Cable', 'B&D', 5, '2', '432.00', '475.20'),
(22, 'Maquinaria', 'Corta cesped', 'Ninja', 3, '2', '2.00', '2.20'),
(23, 'Maquinaria', 'Camion', 'Ninja', 0, '2', '311.00', '342.10'),
(24, 'Maquinaria', 'Hormigonera', 'Ninja', 0, '2', '4343.00', '4777.30'),
(25, 'Tools', 'Alicate', 'Ninja', 0, '2', '2342.00', '2576.20'),
(26, 'Tools', 'Destornillador', 'Ninja', 0, '2', '1232.00', '1355.20'),
(27, 'Accesorios', 'Bombilla', 'Ninja', 0, '2', '1231.00', '1354.10'),
(28, 'Accesorios', 'Cable', 'Ninja', 0, '2', '13.00', '14.30'),
(29, 'Maquinaria', 'Corta cesped', 'B&D', 13, '3', '100.00', '110.00'),
(30, 'Maquinaria', 'Camion', 'B&D', 342, '3', '233.00', '256.30'),
(31, 'Maquinaria', 'Hormigonera', 'B&D', 4, '3', '434.00', '477.40'),
(32, 'Tools', 'Alicate', 'B&D', 0, '3', '544.00', '598.40'),
(33, 'Tools', 'Destornillador', 'B&D', 0, '3', '32.00', '35.20'),
(34, 'Accesorios', 'Bombilla', 'B&D', 0, '3', '34.00', '37.40'),
(35, 'Accesorios', 'Cable', 'B&D', 0, '3', '432.00', '475.20'),
(36, 'Maquinaria', 'Corta cesped', 'Ninja', 0, '3', '2.00', '2.20'),
(37, 'Maquinaria', 'Camion', 'Ninja', 0, '3', '311.00', '342.10'),
(38, 'Maquinaria', 'Hormigonera', 'Ninja', 0, '3', '4343.00', '4777.30'),
(39, 'Tools', 'Alicate', 'Ninja', 0, '3', '2342.00', '2576.20'),
(40, 'Tools', 'Destornillador', 'Ninja', 0, '3', '1232.00', '1355.20'),
(41, 'Accesorios', 'Bombilla', 'Ninja', 0, '3', '1231.00', '1354.10'),
(42, 'Accesorios', 'Cable', 'Ninja', 0, '3', '13.00', '14.30'),
(43, 'Maquinaria', 'Corta cesped', 'B&D', 0, '4', '100.00', '110.00'),
(44, 'Maquinaria', 'Camion', 'B&D', 0, '4', '233.00', '256.30'),
(45, 'Maquinaria', 'Hormigonera', 'B&D', 434, '4', '434.00', '477.40'),
(46, 'Tools', 'Alicate', 'B&D', 6, '4', '544.00', '598.40'),
(47, 'Tools', 'Destornillador', 'B&D', 3, '4', '32.00', '35.20'),
(48, 'Accesorios', 'Bombilla', 'B&D', 21, '4', '34.00', '37.40'),
(49, 'Accesorios', 'Cable', 'B&D', 44, '4', '432.00', '475.20'),
(50, 'Maquinaria', 'Corta cesped', 'Ninja', 43, '4', '2.00', '2.20'),
(51, 'Maquinaria', 'Camion', 'Ninja', 43, '4', '311.00', '342.10'),
(52, 'Maquinaria', 'Hormigonera', 'Ninja', 5, '4', '4343.00', '4777.30'),
(53, 'Tools', 'Alicate', 'Ninja', 24, '4', '2342.00', '2576.20'),
(54, 'Tools', 'Destornillador', 'Ninja', 4, '4', '1232.00', '1355.20'),
(55, 'Accesorios', 'Bombilla', 'Ninja', 3, '4', '1231.00', '1354.10'),
(56, 'Accesorios', 'Cable', 'Ninja', 2, '4', '13.00', '14.30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20200403010527', '2020-04-03 01:06:24');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `material`
--
ALTER TABLE `material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
