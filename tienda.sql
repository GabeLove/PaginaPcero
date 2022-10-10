-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-10-2022 a las 01:22:15
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) CHARACTER SET latin1 NOT NULL,
  `precio` int(11) NOT NULL,
  `imagen` varchar(15) CHARACTER SET latin1 NOT NULL,
  `categoria` enum('juguetes','libros') CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `items`
--

INSERT INTO `items` (`id`, `nombre`, `precio`, `imagen`, `categoria`) VALUES
(2, 'Batman zombie', 550, 'juguete01.jpg', 'juguetes'),
(3, 'Capitán América', 260, 'juguete02.jpg', 'juguetes'),
(4, 'El principito', 300, 'libro01.jpg', 'libros'),
(5, 'El arte de amar', 350, 'libro02.jpg', 'libros'),
(6, 'Thanos', 260, 'juguete03.jpg', 'juguetes'),
(7, 'Misterio', 340, 'juguete04.jpg', 'juguetes'),
(8, 'Shazam', 340, 'juguete05.jpg', 'juguetes'),
(9, 'Stich', 200, 'juguete06.jpg', 'juguetes');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
