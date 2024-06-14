-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-05-2023 a las 06:21:25
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id20704670_malabar2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alimentosprep`
--

CREATE TABLE `alimentosprep` (
  `idAlimentos` int(11) NOT NULL,
  `nombre` varchar(35) NOT NULL,
  `precio` varchar(10) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `CantidadInventario` int(11) NOT NULL,
  `img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `alimentosprep`
--

INSERT INTO `alimentosprep` (`idAlimentos`, `nombre`, `precio`, `descripcion`, `CantidadInventario`, `img`) VALUES
(0, 'Flautas', '123', 'Antojitos Mexicanos', 34, '/webpage/img/flautas.jpg'),
(1, 'Enchilas Suizas', '80', 'Incluye Refresco o Agua de Frutas', 10, 'http://localhost/webpage/img/suizas.jpg'),
(2, 'Sushi', '210', '', 12, '/webpage/img/sushicombo.jpg'),
(3, 'Chalupas', '60', 'Incluye Refresco', 23, 'http://localhost/webpage/img/chalupas.jpg'),
(4, 'Lasaña', '125', 'Incluye Refresco', 11, 'http://localhost/webpage/img/lasañacombo.jpg'),
(5, 'Caldo Tlalpeño', '90', 'Incluye Refresco', 21, 'http://localhost/webpage/img/caldo.jpg'),
(6, 'Hamburguesas', '240', 'Incluye Refresco', 11, 'http://localhost/webpage/img/hamburguesas.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alimentosprep`
--
ALTER TABLE `alimentosprep`
  ADD PRIMARY KEY (`idAlimentos`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
