-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-06-2021 a las 02:12:32
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inwos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `ID_Categoria` int(6) UNSIGNED NOT NULL,
  `Nombre_Cat` enum('Salud y belleza','Reparaciones','Servicio doméstico','Organización de eventos','Mascotas','Niñera/Cuidadora de adultos','Escritor/Editor/Traductor','Otros servicios') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`ID_Categoria`, `Nombre_Cat`) VALUES
(1, 'Salud y belleza'),
(2, 'Reparaciones'),
(3, 'Servicio doméstico'),
(4, 'Organización de eventos'),
(5, 'Mascotas'),
(6, 'Niñera/Cuidadora de adultos'),
(7, 'Escritor/Editor/Traductor'),
(8, 'Otros servicios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `ID_Ciudad` varchar(20) NOT NULL,
  `Nombre_Ciu` enum('Bogotá/Usaquén','Bogotá/Chapinero','Bogotá/Santa Fe','Bogotá/San Cristóbal','Bogotá/Usme','Bogotá/Tunjuelito','Bogotá/Bosa','Bogotá/Kennedy','Bogotá/Fontibón','Bogotá/Engativá','Bogotá/Suba','Bogotá/	Barrios Unidos','Bogotá/Teusaquillo','Bogotá/Los Mártires','Bogotá/Antonio Nariño','Bogotá/Puente Aranda','Bogotá/La Candelaria','Bogotá/Rafael Uribe Uribe','Bogotá/Ciudad Bolívar') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`ID_Ciudad`, `Nombre_Ciu`) VALUES
('BOG01', 'Bogotá/Usaquén'),
('BOG02', 'Bogotá/Chapinero'),
('BOG03', 'Bogotá/Santa Fe'),
('BOG04', 'Bogotá/San Cristóbal'),
('BOG05', 'Bogotá/Usme'),
('BOG06', 'Bogotá/Tunjuelito'),
('BOG07', 'Bogotá/Bosa'),
('BOG08', 'Bogotá/Kennedy'),
('BOG09', 'Bogotá/Fontibón'),
('BOG10', 'Bogotá/Engativá'),
('BOG11', 'Bogotá/Suba'),
('BOG12', 'Bogotá/	Barrios Unidos'),
('BOG13', 'Bogotá/Teusaquillo'),
('BOG14', 'Bogotá/Los Mártires'),
('BOG15', 'Bogotá/Antonio Nariño'),
('BOG16', 'Bogotá/Puente Aranda'),
('BOG17', 'Bogotá/La Candelaria'),
('BOG18', 'Bogotá/Rafael Uribe Uribe'),
('BOG19', 'Bogotá/Ciudad Bolívar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `ID_Cliente` int(8) UNSIGNED NOT NULL,
  `Ciudad_Cli` varchar(45) NOT NULL,
  `Nombre_Cli` varchar(45) NOT NULL,
  `Apellido_Cli` varchar(45) NOT NULL,
  `Correo_Cli` varchar(45) NOT NULL,
  `Contrasena_Cli` varchar(45) NOT NULL,
  `Direccion_Cli` varchar(45) NOT NULL,
  `Telefono_Cli` varchar(12) NOT NULL,
  `Foto_Cli` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`ID_Cliente`, `Ciudad_Cli`, `Nombre_Cli`, `Apellido_Cli`, `Correo_Cli`, `Contrasena_Cli`, `Direccion_Cli`, `Telefono_Cli`, `Foto_Cli`) VALUES
(1, 'Bogotá', 'Alberto', 'Carrasquilla', 'AlbertCars@gmail.com	', 'Huevos1800', 'Cll 147 #65b 04', '3147568493', ''),
(2, 'Bogotá', 'Zaida ', 'Sampedro', 'ZaidSa@gmail.com	', '982aksu22', 'Cll 167 #60b 06', '3157555593', ''),
(3, 'Bogotá', 'Marcelino ', 'Morales', 'Marcelino23@gmail.com	', 'Marce1992', 'Cll 181 #11b 04', '3207566717', ''),
(4, 'Bogotá', 'Trinidad ', 'Quintero', 'TrinidadQui@gmail.com	', '8779292719', 'Cll 100 #45b 17', '3158501195', ''),
(5, 'Bogotá', 'Enriqueta ', 'Robles', 'EnriRobles@gmail.com	', 'Roble8271', 'Cll 102 #95a 01', '3117798292', ''),
(6, 'Bogotá', 'Francisco', 'Labrador', 'FrancisLab@gmail.com	', 'Frs9281', 'Cll 177 #41c 04', '3118674214', ''),
(7, 'Bogotá', 'Guillem ', 'Ponce', 'Gyuksbs@gmail.com	', 'gyuhjs', 'Cll 108 #102b 06', '3507678921', ''),
(8, 'Bogotá', 'Pascuala ', 'Adan', 'Adanwis@gmail.com	', 'uiwsh19ghyy', 'Cll 133 #11a 28', '3189792768', ''),
(9, 'Bogotá', 'Jamila ', 'Almagro', 'Jamisuw@gmail.com	', 'hueosp1u82', 'Cll 127 #68b 14', '3167528446', ''),
(10, 'Bogotá', 'Ines ', 'Sierra', 'Inesier@gmail.com	', 'iopquoo88', 'Cll 111 #15b 04', '3119877896', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `confirmacion_orden`
--

CREATE TABLE `confirmacion_orden` (
  `ID_Confirmacion` int(12) UNSIGNED NOT NULL,
  `Fecha_Conf` date NOT NULL,
  `Hora_Conf` time NOT NULL,
  `Aceptacion_Orden_Conf` tinyint(1) NOT NULL,
  `ID_Orden` int(12) UNSIGNED NOT NULL,
  `ID_Servicios` int(6) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `confirmacion_orden`
--

INSERT INTO `confirmacion_orden` (`ID_Confirmacion`, `Fecha_Conf`, `Hora_Conf`, `Aceptacion_Orden_Conf`, `ID_Orden`, `ID_Servicios`) VALUES
(1, '2021-05-28', '14:45:00', 1, 1, 1),
(2, '2021-05-28', '14:46:00', 0, 2, 2),
(3, '2021-05-28', '13:52:00', 1, 3, 2),
(4, '2021-05-28', '14:32:00', 1, 4, 3),
(5, '2021-05-28', '11:00:30', 1, 5, 4),
(6, '2021-05-28', '08:20:00', 1, 6, 11),
(7, '2021-05-28', '18:45:00', 1, 7, 10),
(8, '2021-05-28', '12:01:00', 1, 8, 9),
(9, '2021-05-28', '09:03:02', 1, 9, 8),
(10, '2021-05-28', '13:06:00', 1, 10, 8),
(11, '2021-05-28', '13:01:00', 1, 11, 7),
(12, '2021-05-28', '10:28:00', 1, 12, 5),
(13, '2021-05-28', '16:10:00', 1, 13, 5),
(14, '2021-05-28', '18:05:00', 1, 14, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuesta`
--

CREATE TABLE `encuesta` (
  `ID_Encuesta` int(10) UNSIGNED NOT NULL,
  `Comentarios_Enc` varchar(100) NOT NULL,
  `Nota_Servicio_Enc` tinyint(2) UNSIGNED ZEROFILL DEFAULT NULL CHECK (`Nota_Servicio_Enc` >= 0 and `Nota_Servicio_Enc` <= 10),
  `Nota_Presentacion_Enc` tinyint(2) UNSIGNED ZEROFILL DEFAULT NULL CHECK (`Nota_Presentacion_Enc` >= 0 and `Nota_Presentacion_Enc` <= 10),
  `ID_Orden` int(12) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `encuesta`
--

INSERT INTO `encuesta` (`ID_Encuesta`, `Comentarios_Enc`, `Nota_Servicio_Enc`, `Nota_Presentacion_Enc`, `ID_Orden`) VALUES
(1, 'Muy eficiente y serio, recomendado', 10, 09, 1),
(2, 'Muy cumplido, excelente técnico', 10, 10, 3),
(3, 'Muy buen peluquero, recomendadisimo y la calidad de atención es muy buena', 10, 10, 4),
(4, 'Recomendado, muy contenta con el servicio ', 10, 09, 5),
(5, 'Muy profesionales y atentos ', 10, 10, 6),
(6, 'excelente servicio, feliz con el resultado de mi peludito', 09, 08, 7),
(7, 'Muy bien', 10, 08, 8),
(8, 'Profesor recomendadísimo, muy atento y muy conocedor ', 09, 08, 9),
(9, 'excelente instructor con bases solidas en el idioma ingles ', 09, 09, 10),
(10, 'Contento con la atención prestada ', 08, 07, 11),
(11, 'Muy contenta y emocionada, gracias por el asesoramiento', 09, 08, 12),
(12, 'Muy caro', 07, 08, 13),
(13, 'muy contenta con cumplir mis metas gracias a esta empresa', 10, 09, 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especificacion_plan`
--

CREATE TABLE `especificacion_plan` (
  `ID_Especificacion_Plan` int(8) UNSIGNED NOT NULL,
  `Nombre_Plan` enum('Básico','Estándar','Premium') NOT NULL,
  `Descripcion_Plan` varchar(100) NOT NULL,
  `Duracion_Plan` varchar(60) NOT NULL,
  `Valor_Plan` enum('100.000','255.000','450.000','780.000','250.000','635.000','1''125.000','1''950.000','500.000','1''275.000','2''250.000','3''900.000') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `especificacion_plan`
--

INSERT INTO `especificacion_plan` (`ID_Especificacion_Plan`, `Nombre_Plan`, `Descripcion_Plan`, `Duracion_Plan`, `Valor_Plan`) VALUES
(1, 'Básico', '15 compradores por publicación, duración 24Hr', '1 Mes', '100.000'),
(2, 'Básico', '15 compradores por publicación, duración 24Hr', '3 Meses', '255.000'),
(3, 'Básico', '15 compradores por publicación, duración 24Hr', '12 Meses', '780.000'),
(4, 'Estándar', '20 compradores por publicación, duración 48Hrs, acceso a 5 publicaciones en sección ofertas', '1 Mes', '250.000'),
(5, 'Estándar', '20 compradores por publicación, duración 48Hrs, acceso a 5 publicaciones en sección ofertas', '3 Meses', '635.000'),
(6, 'Estándar', '20 compradores por publicación, duración 48Hrs, acceso a 5 publicaciones en sección ofertas', '6 Meses', '1\'125.000'),
(7, 'Estándar', '20 compradores por publicación, duración 48Hrs, acceso a 5 publicaciones en sección ofertas', '12 Meses', '1\'950.000'),
(8, 'Premium', '25 compradores por publicación, duración 48Hrs, acceso a 15 publicaciones en sección ofertas', '1 Mes', '500.000'),
(9, 'Premium', '25 compradores por publicación, duración 48Hrs, acceso a 15 publicaciones en sección ofertas', '3 Meses', '1\'275.000'),
(10, 'Premium', '25 compradores por publicación, duración 48Hrs, acceso a 15 publicaciones en sección ofertas', '6 Meses', '2\'250.000'),
(11, 'Premium', '25 compradores por publicación, duración 48Hrs, acceso a 15 publicaciones en sección ofertas', '12 Meses', '3\'900.000'),
(12, 'Básico', '25 compradores por publicación, duración 48Hrs, acceso a 15 publicaciones en sección ofertas', '6 Meses', '450.000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotosempresario`
--

CREATE TABLE `fotosempresario` (
  `ID_Foto` int(6) UNSIGNED NOT NULL,
  `Foto_Perfil` blob NOT NULL,
  `Foto_Empresa` blob NOT NULL,
  `Documento_Prov` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden`
--

CREATE TABLE `orden` (
  `ID_Orden` int(12) UNSIGNED NOT NULL,
  `Fecha_Ord` date NOT NULL,
  `Hora_Ord` time NOT NULL,
  `Direccion_Ord` varchar(45) NOT NULL,
  `Descripcion_Ord` varchar(150) NOT NULL,
  `Valor_Ord` float(8,2) DEFAULT NULL,
  `ID_Cliente` int(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `orden`
--

INSERT INTO `orden` (`ID_Orden`, `Fecha_Ord`, `Hora_Ord`, `Direccion_Ord`, `Descripcion_Ord`, `Valor_Ord`, `ID_Cliente`) VALUES
(1, '2021-05-28', '15:43:30', 'Cll 156# 87a 98', 'Mantenimiento PC', 30000.00, 1),
(2, '2021-05-28', '15:43:30', 'Cll 156# 87a 98', 'Instalación office', 40000.00, 1),
(3, '2021-05-28', '13:50:00', 'Cll 156# 87a 98', 'Instalación Office', 40000.00, 2),
(4, '2021-05-28', '14:30:00', 'Cll 167# 60b 06', 'Corte de cabello ', 15000.00, 2),
(5, '2021-05-28', '11:00:00', 'Cll 181# 11b 04', 'manicure', 8000.00, 3),
(6, '2021-05-28', '08:00:00', 'Cll 87# 128a 07', 'Diagnostico general canino', 50000.00, 3),
(7, '2021-05-28', '18:40:00', 'Cll 87# 128a 07', 'Corte perro mediano', 30000.00, 4),
(8, '2021-05-28', '12:00:00', 'Cll 87# 128a 07', 'Corte perro pequeño', 20000.00, 4),
(9, '2021-05-28', '09:00:00', 'Cll 44# 19a 02', 'Clase para examen TOELF', 5000.00, 6),
(10, '2021-05-28', '13:00:00', 'Cll 44# 19a 02', 'Clase para examen TOELF', 5000.00, 7),
(11, '2021-05-28', '13:00:00', 'Cll 44# 19a 02', 'Transcripción a ingles de documentos ', 150000.00, 7),
(12, '2021-05-28', '10:24:00', 'Cll 180# 34c 01', 'Asesoramiento babysitter', 20000.00, 8),
(13, '2021-05-28', '16:00:00', 'Cll 180# 34c 01', 'Asesoramiento babysitter', 20000.00, 9),
(14, '2021-05-28', '18:00:00', 'Cll 180# 34c 01', 'Curso babysitter', 1000000.00, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plan`
--

CREATE TABLE `plan` (
  `ID_Plan` int(8) UNSIGNED NOT NULL,
  `Estado_Plan` tinyint(1) NOT NULL,
  `Documento_Prov` varchar(45) NOT NULL,
  `ID_Especificacion_Plan` int(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `plan`
--

INSERT INTO `plan` (`ID_Plan`, `Estado_Plan`, `Documento_Prov`, `ID_Especificacion_Plan`) VALUES
(1, 1, '1001987678', 3),
(2, 1, '10010074521', 3),
(3, 1, '10019674589', 5),
(4, 1, '10029678286', 8),
(5, 1, '10055624533', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `Documento_Prov` varchar(20) NOT NULL,
  `ID_Ciudad` varchar(20) NOT NULL,
  `Nombre_Prov` varchar(45) NOT NULL,
  `Apellido_Prov` varchar(45) NOT NULL,
  `Correo_Prov` varchar(45) NOT NULL,
  `Contrasena_Prov` varchar(45) NOT NULL,
  `Nombre_Empresa_Prov` varchar(45) NOT NULL,
  `Descripcion_Empresa_Prov` varchar(200) NOT NULL,
  `Telefono_Prov` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`Documento_Prov`, `ID_Ciudad`, `Nombre_Prov`, `Apellido_Prov`, `Correo_Prov`, `Contrasena_Prov`, `Nombre_Empresa_Prov`, `Descripcion_Empresa_Prov`, `Telefono_Prov`) VALUES
('10010074521', 'BOG04', 'Ion ', 'Sarmiento', 'IonSar@gmail.com', 'miusj249', 'Ion Traducciones ', 'Se realizan traducciones de todo tipo de documentos y preparación para el examen TOELF', '3207565861'),
('10019674589', 'BOG10', 'Pancracio', 'Bolañoz', 'Pancraq@gmail.com', 'pusj282739', 'Cesar\'s peluquerias', 'Somos una empresa con más de 10 años de experiencia en el sector peluquero', '3117564768'),
('1001987678', 'BOG04', 'Roberto', 'Goméz', 'RobertGo@gmail.com', 'Rokju1820', 'Mr.PC', 'Mr.PC se especializa en la optimización de equipos mediante mantenimientos o en la actualización ya sea de hardware o software del mismo', '3204657892'),
('10029678286', 'BOG15', 'Desire ', 'Suarez', 'Suarez@gmail.com', '987272hsg1', 'BabySitter Colombia', 'Somos especialistas en realizar y acompañar a las mejores babysitter de Colombia para que puedas hacer realidad tus sueños ', '3147667732'),
('10055624533', 'BOG11', 'Joaquina ', 'Ortiz', 'Joahniq@gmail.com', 'juinuo821', 'Dogs and friends', 'Somos una empresa especializada en el cuidado de tu peludito, realizamos desde servicios de peluquería hasta servicios ambulatorios ', '3118767564');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `ID_Servicio` int(6) UNSIGNED NOT NULL,
  `Nombre_Ser` varchar(150) NOT NULL,
  `Condiciones_Ser` varchar(45) NOT NULL,
  `Estado_Ser` tinyint(1) NOT NULL,
  `Tiempo_Oferta_Ser` date NOT NULL,
  `Valor_Ser` float(8,2) NOT NULL,
  `ID_Categoria` int(6) UNSIGNED NOT NULL,
  `Documento_Prov` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`ID_Servicio`, `Nombre_Ser`, `Condiciones_Ser`, `Estado_Ser`, `Tiempo_Oferta_Ser`, `Valor_Ser`, `ID_Categoria`, `Documento_Prov`) VALUES
(1, 'Mantenimiento preventivo para tu pc', 'Después de 60 días no se responde por equipos', 0, '2021-05-28', 30000.00, 2, '1001987678'),
(2, 'Instalación de office', 'ninguna', 0, '2021-05-28', 40000.00, 2, '1001987678'),
(3, 'Todo tipo de cortes desde 15000 mil pesos en adelante', 'usar tapabocas durante la sesión de corte', 0, '2021-05-28', 15000.00, 1, '10019674589'),
(4, '\r\nManicure y pedicure desde 8000 mil pesos según el diseño ', 'usar tapabocas durante la sesión de corte', 0, '2021-05-28', 8000.00, 1, '10019674589'),
(5, 'Asesoramiento para ser Babysitter en otro país', 'ninguna', 0, '2021-05-28', 20000.00, 6, '10029678286'),
(6, 'Curso de Babysitter certificado', 'ser mayor de 18 años', 0, '2021-05-28', 1000000.00, 6, '10029678286'),
(7, 'Transcripción de documentos al idioma inglés', 'no se responde por trabajos luego de 30 días', 0, '2021-05-28', 150000.00, 7, '10010074521'),
(8, 'Preparación para el examen TOELF 5.000 por hora', 'ninguna', 0, '2021-05-28', 5000.00, 7, '10010074521'),
(9, 'Corte para perros pequeños 4-10kg', 'Todo trabajo se empieza con el 60% del valor ', 0, '2021-05-28', 20000.00, 5, '10055624533'),
(10, ' Corte para perros medianos 10-15kg', 'Todo trabajo se empieza con el 60% del valor ', 0, '2021-05-28', 30000.00, 5, '10055624533'),
(11, 'Diagnostico general para caninos', 'ninguna', 0, '2021-05-28', 50000.00, 5, '10055624533');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`ID_Categoria`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`ID_Ciudad`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`ID_Cliente`);

--
-- Indices de la tabla `confirmacion_orden`
--
ALTER TABLE `confirmacion_orden`
  ADD PRIMARY KEY (`ID_Confirmacion`),
  ADD KEY `fk_Confirmacion_Servicio_Orden1_idx` (`ID_Orden`),
  ADD KEY `fk_Confirmacion_Servicio_Servicios1_idx` (`ID_Servicios`);

--
-- Indices de la tabla `encuesta`
--
ALTER TABLE `encuesta`
  ADD PRIMARY KEY (`ID_Encuesta`),
  ADD KEY `fk_Encuesta_Orden1_idx` (`ID_Orden`);

--
-- Indices de la tabla `especificacion_plan`
--
ALTER TABLE `especificacion_plan`
  ADD PRIMARY KEY (`ID_Especificacion_Plan`);

--
-- Indices de la tabla `fotosempresario`
--
ALTER TABLE `fotosempresario`
  ADD PRIMARY KEY (`ID_Foto`),
  ADD KEY `fk_FotosEmpresario_Proveedores1_idx` (`Documento_Prov`);

--
-- Indices de la tabla `orden`
--
ALTER TABLE `orden`
  ADD PRIMARY KEY (`ID_Orden`),
  ADD KEY `fk_Orden_Clientes1_idx` (`ID_Cliente`);

--
-- Indices de la tabla `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`ID_Plan`),
  ADD KEY `fk_Plan_Proveedores1_idx` (`Documento_Prov`),
  ADD KEY `fk_Plan_Especificacion_Plan1_idx` (`ID_Especificacion_Plan`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`Documento_Prov`),
  ADD KEY `idCiudad_idx` (`ID_Ciudad`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`ID_Servicio`),
  ADD KEY `fk_Servicio_Categorias_idx` (`ID_Categoria`),
  ADD KEY `fk_Servicios_Proveedores1_idx` (`Documento_Prov`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `ID_Categoria` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `ID_Cliente` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `confirmacion_orden`
--
ALTER TABLE `confirmacion_orden`
  MODIFY `ID_Confirmacion` int(12) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `encuesta`
--
ALTER TABLE `encuesta`
  MODIFY `ID_Encuesta` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `especificacion_plan`
--
ALTER TABLE `especificacion_plan`
  MODIFY `ID_Especificacion_Plan` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `fotosempresario`
--
ALTER TABLE `fotosempresario`
  MODIFY `ID_Foto` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `orden`
--
ALTER TABLE `orden`
  MODIFY `ID_Orden` int(12) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `plan`
--
ALTER TABLE `plan`
  MODIFY `ID_Plan` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `ID_Servicio` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `confirmacion_orden`
--
ALTER TABLE `confirmacion_orden`
  ADD CONSTRAINT `fk_Confirmacion_Servicio_Orden1` FOREIGN KEY (`ID_Orden`) REFERENCES `orden` (`ID_Orden`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Confirmacion_Servicio_Servicios1` FOREIGN KEY (`ID_Servicios`) REFERENCES `servicios` (`ID_Servicio`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `encuesta`
--
ALTER TABLE `encuesta`
  ADD CONSTRAINT `fk_Encuesta_Orden1` FOREIGN KEY (`ID_Orden`) REFERENCES `orden` (`ID_Orden`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `fotosempresario`
--
ALTER TABLE `fotosempresario`
  ADD CONSTRAINT `fk_FotosEmpresario_Proveedores1` FOREIGN KEY (`Documento_Prov`) REFERENCES `proveedores` (`Documento_Prov`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `orden`
--
ALTER TABLE `orden`
  ADD CONSTRAINT `fk_Orden_Clientes1` FOREIGN KEY (`ID_Cliente`) REFERENCES `clientes` (`ID_Cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `plan`
--
ALTER TABLE `plan`
  ADD CONSTRAINT `fk_Plan_Especificacion_Plan1` FOREIGN KEY (`ID_Especificacion_Plan`) REFERENCES `especificacion_plan` (`ID_Especificacion_Plan`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Plan_Proveedores1` FOREIGN KEY (`Documento_Prov`) REFERENCES `proveedores` (`Documento_Prov`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD CONSTRAINT `idCiudad` FOREIGN KEY (`ID_Ciudad`) REFERENCES `ciudad` (`ID_Ciudad`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD CONSTRAINT `fk_Servicio_Categorias` FOREIGN KEY (`ID_Categoria`) REFERENCES `categorias` (`ID_Categoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Servicios_Proveedores1` FOREIGN KEY (`Documento_Prov`) REFERENCES `proveedores` (`Documento_Prov`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
