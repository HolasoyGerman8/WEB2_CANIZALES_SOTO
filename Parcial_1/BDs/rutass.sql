-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-09-2026 a las 18:29:11
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `rutas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calles`
--

CREATE TABLE `calles` (
  `id_calle` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `distancia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `calles`
--

INSERT INTO `calles` (`id_calle`, `nombre`, `distancia`) VALUES
(1, 'Gema', 35),
(2, 'boulevard', 25),
(3, 'Rio', 15),
(4, 'verde', 5),
(5, 'agata', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `callesxruta`
--

CREATE TABLE `callesxruta` (
  `id_ruta` int(11) DEFAULT NULL,
  `id_calle` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `callesxruta`
--

INSERT INTO `callesxruta` (`id_ruta`, `id_calle`) VALUES
(1, 2),
(1, 3),
(1, 4),
(2, 2),
(2, 4),
(2, 5),
(5, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ruta`
--

CREATE TABLE `ruta` (
  `id_ruta` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ruta`
--

INSERT INTO `ruta` (`id_ruta`, `nombre`) VALUES
(1, 'Ruta_1'),
(2, 'Ruta_2'),
(3, 'Ruta_3'),
(4, 'Ruta_4'),
(5, 'morales-saucito');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `calles`
--
ALTER TABLE `calles`
  ADD PRIMARY KEY (`id_calle`);

--
-- Indices de la tabla `callesxruta`
--
ALTER TABLE `callesxruta`
  ADD KEY `id_ruta` (`id_ruta`),
  ADD KEY `id_calle` (`id_calle`);

--
-- Indices de la tabla `ruta`
--
ALTER TABLE `ruta`
  ADD PRIMARY KEY (`id_ruta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `calles`
--
ALTER TABLE `calles`
  MODIFY `id_calle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `ruta`
--
ALTER TABLE `ruta`
  MODIFY `id_ruta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `callesxruta`
--
ALTER TABLE `callesxruta`
  ADD CONSTRAINT `callesxruta_ibfk_1` FOREIGN KEY (`id_ruta`) REFERENCES `ruta` (`id_ruta`),
  ADD CONSTRAINT `callesxruta_ibfk_2` FOREIGN KEY (`id_calle`) REFERENCES `calles` (`id_calle`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
