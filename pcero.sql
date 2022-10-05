-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-10-2022 a las 18:42:08
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
-- Base de datos: `pcero`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `almacenamiento`
--

CREATE TABLE `almacenamiento` (
  `ID` int(11) NOT NULL,
  `NOMBRE` varchar(20) NOT NULL,
  `TIPO` varchar(10) NOT NULL,
  `CAPACIDAD` int(11) NOT NULL,
  `VELOCIDAD_LECTURA` int(11) NOT NULL,
  `VELOCIDAD_ESCRITURA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fuente`
--

CREATE TABLE `fuente` (
  `ID` int(11) NOT NULL,
  `NOMBRE` varchar(20) NOT NULL,
  `POTENCIA` int(11) NOT NULL,
  `CERTIFICACION` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procesador`
--

CREATE TABLE `procesador` (
  `ID` int(11) NOT NULL,
  `NOMBRE` varchar(150) NOT NULL,
  `NUCLEOS` int(11) NOT NULL,
  `VELOCIDAD` float NOT NULL,
  `MARCA` varchar(20) NOT NULL,
  `SOCKET` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `procesador`
--

INSERT INTO `procesador` (`ID`, `NOMBRE`, `NUCLEOS`, `VELOCIDAD`, `MARCA`, `SOCKET`) VALUES
(1, 'AMD Ryzen 3 3200G', 4, 3.6, 'AMD', ' AM4'),
(2, 'Ryzen 5 5600G', 6, 3.9, 'AMD', 'Socket AM4'),
(3, 'Ryzen 7 5700G', 8, 3.8, 'AMD', 'AM4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ram`
--

CREATE TABLE `ram` (
  `ID` int(11) NOT NULL,
  `NOMBRE` varchar(20) NOT NULL,
  `CAPACIDAD` int(11) NOT NULL,
  `MARCA` varchar(20) NOT NULL,
  `VELOCIDAD` int(11) NOT NULL,
  `TIPO` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjeta_madre`
--

CREATE TABLE `tarjeta_madre` (
  `ID` int(11) NOT NULL,
  `NOMBRE` varchar(20) NOT NULL,
  `SOCKET` varchar(20) NOT NULL,
  `TIPO_MEMORIA` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjeta_video`
--

CREATE TABLE `tarjeta_video` (
  `ID` int(11) NOT NULL,
  `NOMBRE` varchar(20) NOT NULL,
  `MEMORIA` int(11) NOT NULL,
  `TIPO_MEMORIA` varchar(10) NOT NULL,
  `FRECUENCIA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `procesador`
--
ALTER TABLE `procesador`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `procesador`
--
ALTER TABLE `procesador`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
