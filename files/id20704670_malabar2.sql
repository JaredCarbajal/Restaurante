-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-05-2023 a las 05:13:49
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
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `idAdministrador` int(11) NOT NULL,
  `Usuario` int(11) NOT NULL,
  `Contraseña` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'Flautas', '154', 'menu1', 0, 'http://localhost/webpage/img/flautas.jpg'),
(2244, 'Omelette Malabar', '79.99', 'Lorem ipsum es el texto que se usa habitualmente en diseño gráfico en demostraciones de tipografías.', 23, 'http://localhost/webpage/img/brownie.jpg'),
(2255, 'Chilaquiles Verdes', '69.99', 'Lorem ipsum es el texto que se usa habitualmente en diseño gráfico en demostraciones de tipografías.', 35, 'http://localhost/webpage/img/hotcakes.jpg'),
(3322, 'Hot Cakes', '99.99', 'Lorem ipsum es el texto que se usa habitualmente en diseño gráfico en demostraciones de tipografías.', 50, 'http://localhost/webpage/img/hamburguesas.jpg'),
(4345, 'Enchiladas Rojas', '69.99', 'Lorem ipsum es el texto que se usa habitualmente en diseño gráfico en demostraciones de tipografías.', 50, 'http://localhost/webpage/img/caldo.jpg'),
(4432, 'Chilaquiles Rojos', '69.99', 'Lorem ipsum es el texto que se usa habitualmente en diseño gráfico en demostraciones de tipografías.', 30, 'http://localhost/webpage/img/cenacombo.jpg'),
(4455, 'Capuchino', '49.99', 'Lorem ipsum es el texto que se usa habitualmente en diseño gráfico en demostraciones de tipografías.', 30, 'http://localhost/webpage/img/sandwich.jpg'),
(5666, 'Enchiladas Verdes', '69.99', 'Lorem ipsum es el texto que se usa habitualmente en diseño gráfico en demostraciones de tipografías.', 50, 'http://localhost/webpage/img/huvotocino.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cobropedidos`
--

CREATE TABLE `cobropedidos` (
  `idCobroPedido` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturacion`
--

CREATE TABLE `facturacion` (
  `id_factura` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `tel` varchar(10) NOT NULL,
  `rfc` varchar(20) NOT NULL,
  `cp` varchar(10) NOT NULL,
  `estado` varchar(25) NOT NULL,
  `img` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `facturacion`
--

INSERT INTO `facturacion` (`id_factura`, `nombre`, `correo`, `tel`, `rfc`, `cp`, `estado`, `img`) VALUES
(1, 'Nazario Andrade Reyna', '', '123425467', '654654654', '', 'Nuevo León', ''),
(2, 'Nazario Andrade Reyna', '', '9384012652', 'asd123', '', 'Nuevo León', 0x4172726179),
(3, 'asd', '', '123', 'QRY', '', 'QRY', 0x4172726179);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesas`
--

CREATE TABLE `mesas` (
  `idMesas` int(11) NOT NULL,
  `CantidadPersonas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `mesas`
--

INSERT INTO `mesas` (`idMesas`, `CantidadPersonas`) VALUES
(1, 5),
(2, 6),
(3, 4),
(4, 6),
(5, 8),
(6, 6),
(7, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `meseros`
--

CREATE TABLE `meseros` (
  `idMeseros` int(11) NOT NULL,
  `usuariomesero` varchar(50) NOT NULL,
  `contrasenames` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `idPedidos` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `HoraLlegada` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`idPedidos`, `Fecha`, `HoraLlegada`) VALUES
(1224, '2023-05-10', '04:43:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idProductos` int(11) NOT NULL,
  `NombreProducto` varchar(45) NOT NULL,
  `Familia` varchar(30) NOT NULL,
  `Unidad` varchar(30) NOT NULL,
  `Cantidad` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idProductos`, `NombreProducto`, `Familia`, `Unidad`, `Cantidad`) VALUES
(123, 'Leche', 'Lacteos', 'Pieza 1 litro', '35'),
(124, 'Huevo', 'Proteina', 'Capa 40 piezas', '10'),
(1111, 'Lechuga', 'Verduras', 'pieza', '30'),
(1122, 'Pechuga Pollo', 'Carnes', 'Pieza', '25'),
(1212, 'Carne Hamburguesa', 'Carnes', 'Pieza', '45'),
(1235, 'Tomates', 'Verduras', 'pieza', '35'),
(1255, 'Cebolla', 'Verduras', 'Pieza', '25'),
(1344, 'Zanahoria', 'Verduras', 'pieza', '15'),
(1444, 'Alitas Pollo', 'Carnes', 'Pieza', '100'),
(3211, 'Queso Mozarela ', 'Lacteos ', 'Pieza 160gr', '40'),
(4352, 'Pan Hamburgesa', 'Integrales', 'Pieza', '40'),
(4433, 'Queso Manchego', 'Lácteos ', 'Pieza 150gr', '20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `idProveedor` int(11) NOT NULL,
  `nombre_fiscal` varchar(45) NOT NULL,
  `empresa` varchar(25) NOT NULL,
  `tipo_proveedor` varchar(20) NOT NULL,
  `tel` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `cp` varchar(5) NOT NULL,
  `direccion` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`idProveedor`, `nombre_fiscal`, `empresa`, `tipo_proveedor`, `tel`, `email`, `cp`, `direccion`) VALUES
(1, 'Cafés Marqués', 'Cafés Marqués', 'Bienes', '9993478273', 'CafesMarques@gmail.com', '24123', 'Calle 31, s/n arroja - Valencia'),
(2, 'José Pérez', 'Frutos con sabor a méxico', 'Bienes', '7229266076', 'contacto@frutosmexico.com', '24124', 'Boulevard Ixtapan-Tonatico km 2 #1918'),
(3, 'Nazario', 'Nazario & CO', 'Fruta', '78945612', 'naza_0295@gmail.com', '4561', 'Monterrey, Nuevo León');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `contraseña` varchar(8) NOT NULL,
  `email` varchar(69) NOT NULL,
  `tel` varchar(10) NOT NULL,
  `direccion` varchar(80) NOT NULL,
  `nombre` varchar(69) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `contraseña`, `email`, `tel`, `direccion`, `nombre`) VALUES
(1, '', 'lmblla@hotmail.com', '9383886986', 'Col. manigua', 'Laura Bautista'),
(2, '', 'annge@hotmail.com', '9381234567', 'col.obrera', 'Angelica Lopez'),
(3, '', 'lopez@hotmail.com', '9387654087', 'col. reforma', 'Enrique Matos');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`idAdministrador`);

--
-- Indices de la tabla `alimentosprep`
--
ALTER TABLE `alimentosprep`
  ADD PRIMARY KEY (`idAlimentos`);

--
-- Indices de la tabla `cobropedidos`
--
ALTER TABLE `cobropedidos`
  ADD PRIMARY KEY (`idCobroPedido`);

--
-- Indices de la tabla `facturacion`
--
ALTER TABLE `facturacion`
  ADD PRIMARY KEY (`id_factura`);

--
-- Indices de la tabla `mesas`
--
ALTER TABLE `mesas`
  ADD PRIMARY KEY (`idMesas`);

--
-- Indices de la tabla `meseros`
--
ALTER TABLE `meseros`
  ADD PRIMARY KEY (`idMeseros`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`idPedidos`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idProductos`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`idProveedor`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `idAdministrador` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cobropedidos`
--
ALTER TABLE `cobropedidos`
  MODIFY `idCobroPedido` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `facturacion`
--
ALTER TABLE `facturacion`
  MODIFY `id_factura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `mesas`
--
ALTER TABLE `mesas`
  MODIFY `idMesas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `meseros`
--
ALTER TABLE `meseros`
  MODIFY `idMeseros` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `idPedidos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1225;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `idProveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
