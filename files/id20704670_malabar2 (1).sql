-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-05-2023 a las 04:48:17
-- Versión del servidor: 8.0.33
-- Versión de PHP: 8.2.4

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

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarPedido` (IN `p_Fecha` DATE, IN `p_HoraLlegada` TIME)   BEGIN
    INSERT INTO pedidos (Fecha, HoraLlegada) VALUES (p_Fecha, p_HoraLlegada);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarProducto` (IN `p_NombreProducto` VARCHAR(45), IN `p_Familia` VARCHAR(30), IN `p_Unidad` VARCHAR(30), IN `p_Cantidad` VARCHAR(20))   BEGIN
    INSERT INTO productos (NombreProducto, Familia, Unidad, Cantidad)
    VALUES (p_NombreProducto, p_Familia, p_Unidad, p_Cantidad);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ObtenerMesero` (IN `p_idMeseros` INT)   BEGIN
    SELECT *
    FROM `meseros`
    WHERE `idMeseros` = p_idMeseros;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ObtenerProductos` ()   BEGIN
    SELECT * FROM productos;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ObtenerProveedor` (IN `p_idProveedor` INT)   BEGIN
    SELECT *
    FROM `proveedores`
    WHERE `idProveedor` = p_idProveedor;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_INSERTAR_USUARIO` (IN `p_contrasena` VARCHAR(40), IN `p_email` VARCHAR(69), IN `p_tel` VARCHAR(10), IN `p_direccion` VARCHAR(80), IN `p_nombre` VARCHAR(69), IN `p_nusuario` VARCHAR(40))   BEGIN
    DECLARE v_idUsuario INT;
    
    INSERT INTO usuarios (contrasena, email, tel, direccion, nombre, nusuario)
    VALUES (p_contrasena, p_email, p_tel, p_direccion, p_nombre, p_nusuario);
    
    SET v_idUsuario = LAST_INSERT_ID();
    
    SELECT v_idUsuario AS idUsuario;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `idAdministrador` int NOT NULL,
  `Usuario` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Contraseña` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`idAdministrador`, `Usuario`, `Contraseña`) VALUES
(1, 'Malabaradmi', 'malabar123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alimentosprep`
--

CREATE TABLE `alimentosprep` (
  `idAlimentos` int NOT NULL,
  `nombre` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CantidadInventario` int NOT NULL,
  `img` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
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
  `idCobroPedido` int NOT NULL,
  `Cantidad` int NOT NULL,
  `Total` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturacion`
--

CREATE TABLE `facturacion` (
  `id_factura` int NOT NULL,
  `nombre` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rfc` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cp` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `facturacion`
--

INSERT INTO `facturacion` (`id_factura`, `nombre`, `correo`, `tel`, `rfc`, `cp`, `estado`, `img`) VALUES
(1, 'Nazario Andrade Reyna', '', '123425467', '654654654', '', 'Nuevo León', ''),
(2, 'Nazario Andrade Reyna', '', '9384012652', 'asd123', '', 'Nuevo León', 0x4172726179),
(3, 'asd', '', '123', 'QRY', '', 'QRY', 0x4172726179),
(8, 'suemy matos', 'rrrr@gmail.com', '9381864220', '24154444', '24156', 'Campeche', 0xe299a12e6a7067),
(9, 'suemy matos', 'rrrr@gmail.com', '9381864220', '24154444', '24156', 'Campeche', 0xe299a12e6a7067),
(11, 'suemy matos', 'rrrr@gmail.com', 'n22222', '24154444', 'azf', 'Campeche', 0x6661637475726163696f6e2d696d67202831292e62696e),
(12, 'suemy matos', 'rrrr@gmail.com', 'n22222', '24154444', 'azf', 'Campeche', 0x6661637475726163696f6e2d696d67202831292e62696e);

--
-- Disparadores `facturacion`
--
DELIMITER $$
CREATE TRIGGER `TGR_VALIDAR_CORREO` BEFORE INSERT ON `facturacion` FOR EACH ROW BEGIN
    IF NEW.correo = '' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El campo correo no puede estar vacío';
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesas`
--

CREATE TABLE `mesas` (
  `idMesas` int NOT NULL,
  `CantidadPersonas` int NOT NULL
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
  `idMeseros` int NOT NULL,
  `usuariomesero` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `contrasenames` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `meseros`
--

INSERT INTO `meseros` (`idMeseros`, `usuariomesero`, `contrasenames`) VALUES
(1, 'mesero1', 'mesero123'),
(2, 'mesero2', 'mesero321'),
(3, 'mesero3', 'mesero333');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `idPedidos` int NOT NULL,
  `Fecha` date NOT NULL,
  `HoraLlegada` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`idPedidos`, `Fecha`, `HoraLlegada`) VALUES
(1224, '2023-05-10', '04:43:21'),
(1225, '2023-05-10', '19:29:06'),
(1226, '2023-05-23', '13:29:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idProductos` int NOT NULL,
  `NombreProducto` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Familia` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Unidad` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Cantidad` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
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

--
-- Disparadores `productos`
--
DELIMITER $$
CREATE TRIGGER `TGR_VALIDAR_CANTIDAD` BEFORE INSERT ON `productos` FOR EACH ROW BEGIN
    IF NEW.Cantidad <= 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'La cantidad debe ser mayor que cero';
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `idProveedor` int NOT NULL,
  `nombre_fiscal` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `empresa` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_proveedor` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cp` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`idProveedor`, `nombre_fiscal`, `empresa`, `tipo_proveedor`, `tel`, `email`, `cp`, `direccion`) VALUES
(1, 'Cafés Marqués', 'Cafés Marqués', 'Bienes', '9993478273', 'CafesMarques@gmail.com', '24123', 'Calle 31, s/n arroja - Valencia'),
(2, 'José Pérez', 'Frutos con sabor a méxico', 'Bienes', '7229266076', 'contacto@frutosmexico.com', '24124', 'Boulevard Ixtapan-Tonatico km 2 #1918'),
(3, 'Nazario', 'Nazario & CO', 'Fruta', '78945612', 'naza_0295@gmail.com', '4561', 'Monterrey, Nuevo León'),
(4, 'Moises Matos', 'La Costeña', 'Alimentos', '93387654', 'lopez@hotmail.com', '24133', 'Ciudad de Mexico');

--
-- Disparadores `proveedores`
--
DELIMITER $$
CREATE TRIGGER `proveedores_trigger` AFTER INSERT ON `proveedores` FOR EACH ROW BEGIN
        INSERT INTO `proveedores_log` (accion, fecha, idProveedor, nombre_fiscal, empresa, tipo_proveedor, tel, email, cp, direccion)
        VALUES ('INSERT', NOW(), NEW.idProveedor, NEW.nombre_fiscal, NEW.empresa, NEW.tipo_proveedor, NEW.tel, NEW.email, NEW.cp, NEW.direccion);
    END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `proveedores_trigger_delete` AFTER DELETE ON `proveedores` FOR EACH ROW BEGIN
        INSERT INTO `proveedores_log` (accion, fecha, idProveedor, nombre_fiscal, empresa, tipo_proveedor, tel, email, cp, direccion)
        VALUES ('DELETE', NOW(), OLD.idProveedor, OLD.nombre_fiscal, OLD.empresa, OLD.tipo_proveedor, OLD.tel, OLD.email, OLD.cp, OLD.direccion);
    END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `proveedores_trigger_update` AFTER UPDATE ON `proveedores` FOR EACH ROW BEGIN
        INSERT INTO `proveedores_log` (accion, fecha, idProveedor, nombre_fiscal, empresa, tipo_proveedor, tel, email, cp, direccion)
        VALUES ('UPDATE', NOW(), NEW.idProveedor, NEW.nombre_fiscal, NEW.empresa, NEW.tipo_proveedor, NEW.tel, NEW.email, NEW.cp, NEW.direccion);
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores_log`
--

CREATE TABLE `proveedores_log` (
  `idLog` int NOT NULL,
  `accion` varchar(10) NOT NULL,
  `fecha` datetime NOT NULL,
  `idProveedor` int NOT NULL,
  `nombre_fiscal` varchar(45) NOT NULL,
  `empresa` varchar(25) NOT NULL,
  `tipo_proveedor` varchar(20) NOT NULL,
  `tel` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `cp` varchar(5) NOT NULL,
  `direccion` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int NOT NULL,
  `contrasena` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(69) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(69) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nusuario` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `contrasena`, `email`, `tel`, `direccion`, `nombre`, `nusuario`) VALUES
(1, 'laura123', 'lmblla@hotmail.com', '9383886986', 'Col. manigua', 'Laura Bautista', 'laurabau'),
(2, '', 'annge@hotmail.com', '9381234567', 'col.obrera', 'Angelica Lopez', ''),
(3, '', 'lopez@hotmail.com', '9387654087', 'col. reforma', 'Enrique Matos', ''),
(16, 'ddddd', 'mmblmely@gmail.com', 'dddddd', 'ddd', 'mmm', 'ddddd'),
(17, 'suemy123', 'suemy@hotmail.com', '938888888', 'mi casa', 'suemy matos', 'suemyl'),
(18, 'lulu1234', 'lulu@gmail.com', '9381864220', 'babhjebsrdh', 'Lulu sanchez', 'lulu1'),
(19, 'jared123', 'jared@hotmail.com', '9381231234', 'col. miguel de la madrid', 'Jared Carbajal', 'jaredcarb'),
(20, 'nazario123', 'nazario.andrade95@gmail.com', '123466677', 'mariano escobedo', 'nazario andrade', 'nazarioa'),
(21, 'xrthxh', 'aaa@gmail.com', '12334444', 'fedgs', 'mmmm', 'hxhjhx'),
(22, '123456', 'nazario.andrade95@gmail.com', '9381864220', 'mi casa', 'suemy matos', 'mesero1'),
(23, 'laura321', 'kiomilenium@hotmail.com', '9381864220', 'mi casa', 'laura lopez', 'LauraBautista'),
(24, 'melanie1', '', '9381864220', 'mi casa', 'suemy matos', 'Malabaradmi');

--
-- Disparadores `usuarios`
--
DELIMITER $$
CREATE TRIGGER `TRG_VALIDAR_CORREO` BEFORE INSERT ON `usuarios` FOR EACH ROW BEGIN
    DECLARE numRegistros INT;
    
    SELECT COUNT(*) INTO numRegistros FROM usuarios WHERE email = NEW.email;
    
    IF numRegistros > 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El correo electrónico ya existe en la base de datos.';
    END IF;
END
$$
DELIMITER ;

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
-- Indices de la tabla `proveedores_log`
--
ALTER TABLE `proveedores_log`
  ADD PRIMARY KEY (`idLog`);

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
  MODIFY `idAdministrador` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cobropedidos`
--
ALTER TABLE `cobropedidos`
  MODIFY `idCobroPedido` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `facturacion`
--
ALTER TABLE `facturacion`
  MODIFY `id_factura` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `mesas`
--
ALTER TABLE `mesas`
  MODIFY `idMesas` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `meseros`
--
ALTER TABLE `meseros`
  MODIFY `idMeseros` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `idPedidos` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1227;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `idProveedor` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `proveedores_log`
--
ALTER TABLE `proveedores_log`
  MODIFY `idLog` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
