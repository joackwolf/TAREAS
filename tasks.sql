-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-09-2023 a las 02:56:56
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tasks_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks`
--

CREATE TABLE `tasks` (
  `ID` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `estado` varchar(100) NOT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tasks`
--

INSERT INTO `tasks` (`ID`, `titulo`, `descripcion`, `estado`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'Lavar el auto', 'No olvidarme', 'Pendiente', NULL, NULL, '2023-09-12 16:47:04'),
(2, 'Compras', 'Lista de compras...', 'Pendiente', NULL, NULL, NULL),
(4, 'Lavar cocina', 'Grasa', 'pendiente', '2023-09-11 18:46:42', '2023-09-11 18:46:42', NULL),
(5, 'Lavar cocina', 'Grasa', 'pendiente', '2023-09-12 00:23:44', '2023-09-12 00:23:44', NULL),
(6, 'Lavar cocina', 'Grasa', 'pendiente', '2023-09-12 00:24:24', '2023-09-12 00:24:24', NULL),
(7, 'Lavar cocina', 'Grasa', 'pendiente', '2023-09-12 00:29:42', '2023-09-12 00:29:42', NULL),
(8, 'Lavar cocina', 'Grasa', 'pendiente', '2023-09-12 00:30:13', '2023-09-12 00:30:13', NULL),
(9, 'Lavar cocina', 'Grasa', 'pendiente', '2023-09-12 00:31:04', '2023-09-12 00:31:04', NULL),
(10, 'Lavar cocina', 'Grasa', 'pendiente', '2023-09-12 00:31:46', '2023-09-12 00:31:46', NULL),
(11, 'Lavar cocina', 'Grasa', 'pendiente', '2023-09-12 00:32:28', '2023-09-12 00:32:28', NULL),
(12, 'Lavar baño', 'Caca', 'pendiente', '2023-09-12 00:34:08', '2023-09-12 00:34:08', NULL),
(13, 'Cocinar cumple SOL', 'Torta', 'completado', '2023-09-12 00:35:07', '2023-09-12 00:35:07', NULL),
(14, 'Cocinar cumple SOL', 'Torta', 'completado', '2023-09-12 00:36:22', '2023-09-12 00:36:22', NULL),
(15, 'FIESTA FIESTA', 'TODO', 'completado', '2023-09-12 00:37:03', '2023-09-12 00:37:03', NULL),
(16, 'FIESTA FIESTA 2', 'TODO', 'completado', '2023-09-12 00:40:14', '2023-09-12 00:40:14', NULL),
(17, 'Arreglar auto', 'Caha de cambio', 'completado', '2023-09-12 00:42:00', '2023-09-12 00:42:00', NULL),
(18, 'Arreglar SQL', 'Caha de cambio', 'completado', '2023-09-12 00:44:13', '2023-09-12 00:44:13', NULL),
(19, 'Arreglar SQL 2', 'Caha de cambio', 'completado', '2023-09-12 00:45:04', '2023-09-12 00:45:04', NULL),
(20, 'Arreglar SQL 2', 'Caha de cambio', 'completado', '2023-09-12 00:45:48', '2023-09-12 00:45:48', NULL),
(21, 'Arreglar SQL 3', 'Caha de cambio', 'completado', '2023-09-12 00:46:36', '2023-09-12 00:46:36', NULL),
(22, 'Arreglar SQL 3', 'Caha de cambio', 'completado', '2023-09-12 00:48:10', '2023-09-12 00:48:10', NULL),
(23, 'Solucionar DIAS TRANSCURRIDOS', 'RUTEO', 'en-progreso', '2023-09-12 21:34:38', '2023-09-12 21:34:38', NULL),
(24, 'Muestra de POST', 'POSTEANDO TAREA', 'pendiente', '2023-09-13 00:54:05', '2023-09-13 00:54:05', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tasks`
--
ALTER TABLE `tasks`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
