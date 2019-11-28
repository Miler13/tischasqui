-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-10-2019 a las 16:02:38
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `chasqui`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas`
--

CREATE TABLE `areas` (
  `idArea` int(11) NOT NULL,
  `NombreArea` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `areas`
--

INSERT INTO `areas` (`idArea`, `NombreArea`) VALUES
(1, 'medicina '),
(2, 'psicologia'),
(4, 'lenguas'),
(6, 'test');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaciones`
--

CREATE TABLE `asignaciones` (
  `idAsignacion` int(11) NOT NULL,
  `Descripcion` varchar(100) NOT NULL,
  `idEspecialista` int(11) NOT NULL,
  `idSubArea` int(11) NOT NULL,
  `idGrupo` int(11) NOT NULL,
  `idTurno` int(11) NOT NULL,
  `idHorario` int(11) NOT NULL,
  `Estado` varchar(11) NOT NULL,
  `NumeroAsignacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `asignaciones`
--

INSERT INTO `asignaciones` (`idAsignacion`, `Descripcion`, `idEspecialista`, `idSubArea`, `idGrupo`, `idTurno`, `idHorario`, `Estado`, `NumeroAsignacion`) VALUES
(2, 'medicina  familiar ', 1, 1, 3, 101, 301, '0', 1),
(3, 'pediatria\r\n', 6, 1, 5, 101, 301, '1', 402),
(4, 'traumatismo', 6, 1, 4, 104, 303, '1', 403),
(10, 'es un buen doctor', 6, 3, 1, 0, 0, '1', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `boletin`
--

CREATE TABLE `boletin` (
  `idBoletin` int(11) NOT NULL,
  `nombreBoletin` varchar(45) DEFAULT NULL,
  `Descripcion` varchar(200) DEFAULT NULL,
  `fechaboletin` date DEFAULT NULL,
  `areas_idArea` int(11) NOT NULL,
  `Archivo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `boletin`
--

INSERT INTO `boletin` (`idBoletin`, `nombreBoletin`, `Descripcion`, `fechaboletin`, `areas_idArea`, `Archivo`) VALUES
(900, 'test', 'primertesr', '2019-10-17', 4, ''),
(901, 'asd', 'asdas', '2019-10-18', 4, 'test.pub'),
(902, 'werwer', 'ewerw', '2019-10-18', 2, 'test2.pub'),
(903, 'ejemplo ', 'testeee', '2019-10-18', 4, 'test4.pub'),
(904, 'medicina', 'test medicina', '2019-10-18', 2, 'test3.pub');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cartas`
--

CREATE TABLE `cartas` (
  `idcartas` int(11) NOT NULL,
  `contenido` text,
  `foto` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialistas`
--

CREATE TABLE `especialistas` (
  `idEspecialista` int(11) NOT NULL,
  `NombresEspecialista` varchar(50) NOT NULL,
  `ApellidosEspecialista` varchar(50) NOT NULL,
  `CedulaEspecialista` varchar(16) NOT NULL,
  `CorreoEspecialista` varchar(50) NOT NULL,
  `CelularEspecialista` varchar(8) NOT NULL,
  `TelefonoEspecialista` varchar(8) NOT NULL,
  `DireccionEspecialista` varchar(250) NOT NULL,
  `Estado` int(1) NOT NULL,
  `Foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `especialistas`
--

INSERT INTO `especialistas` (`idEspecialista`, `NombresEspecialista`, `ApellidosEspecialista`, `CedulaEspecialista`, `CorreoEspecialista`, `CelularEspecialista`, `TelefonoEspecialista`, `DireccionEspecialista`, `Estado`, `Foto`) VALUES
(1, 'Jaime', 'Escalante', 'jaimico', 'trueblade39@hotmail.com', '79383291', '4306891', 'Pasaje San cristobal n5', 1, 'images/fotos_perfil/perfil.jpg'),
(3, 'nico', 'laquiere', '456', 'nico@mail.com', '888', '777', 'su casa', 1, 'images/fotos_perfil/perfil.jpg'),
(6, 'Especialista1', 'Especialista', '1234', 'Especialista@gmail.com', '1234', '1234567', 'casa', 1, 'images/fotos_perfil/perfil.jpg'),
(7, 'as', 'asd', '70074', 'milerrojassiles@gmail.com', '12234547', '6482560', 'J. de los Rios nÂº2231', 1, 'images/fotos_perfil/perfil.jpg'),
(8, 'ae', 'asd', '123155', 'nuevo@gmail.com', '12555555', '1323123', '14124', 1, 'images/fotos_perfil/perfil.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupos`
--

CREATE TABLE `grupos` (
  `idGrupo` int(11) NOT NULL,
  `NumeroGrupo` varchar(50) NOT NULL,
  `NombreGrupo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `grupos`
--

INSERT INTO `grupos` (`idGrupo`, `NumeroGrupo`, `NombreGrupo`) VALUES
(1, '1 primero', 'grupo 1  elementos'),
(2, '2 segundo', 'grupo 2 Elementos'),
(3, '1 tercero', 'grupo 1 '),
(4, '1 Introducion', 'grupo 1  introduccion'),
(5, '2 Introduccion', 'grupo 2 introduccion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes`
--

CREATE TABLE `mensajes` (
  `idMensaje` int(11) NOT NULL,
  `Remitente` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `Mensaje` varchar(500) NOT NULL,
  `FechaEnvio` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mensajes`
--

INSERT INTO `mensajes` (`idMensaje`, `Remitente`, `foto`, `Mensaje`, `FechaEnvio`) VALUES
(808, 'Elcon', 'images/fog-of-war-3440x1440.jpg', 'czxzxc', '2019-10-17'),
(809, 'Elcon', 'images/fog-of-war-3440x1440.jpg', 'czxzxc', '2019-10-17'),
(810, 'oso12', 'images/fog-of-war-3440x1440.jpg', 'aDASDGFNH', '2019-10-17'),
(811, 'oso12', 'images/the-scenic-path-3440x1440.jpg', 'asdasdasd', '2019-10-17'),
(812, 'oso12', ' ', 'qasdasd', '2019-10-17'),
(813, 'oso12', ' ', 'asdasd', '2019-10-17'),
(814, 'oso12', ' ', '123123wrewerwerqweqweweq', '2019-10-17'),
(815, 'oso12', ' ', 'asdasdasdad', '2019-10-17'),
(816, 'oso12', 'images/30710941_1296234603847853_880423894308093952_n.jpg', 'asdasd', '2019-10-17'),
(817, 'oso12', ' ', 'asdasdads', '2019-10-17'),
(818, 'mono16', ' ', 'prueba de  mono16', '2019-10-17'),
(819, 'mono16', 'images/the-scenic-path-3440x1440.jpg', 'prube mono 16', '2019-10-17'),
(0, 'mono19', 'images/the-scenic-path-3440x1440.jpg', 'test  del mono 19 ', '2019-10-18'),
(0, 'mono11', 'images/fog-of-war-3440x1440.jpg', 'valeria 155', '2019-10-21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ninos`
--

CREATE TABLE `ninos` (
  `idNino` int(11) NOT NULL,
  `EdadNino` varchar(10) NOT NULL,
  `NombresNino` varchar(50) NOT NULL,
  `CedulaNino` varchar(16) NOT NULL,
  `Estado` int(1) NOT NULL,
  `Foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ninos`
--

INSERT INTO `ninos` (`idNino`, `EdadNino`, `NombresNino`, `CedulaNino`, `Estado`, `Foto`) VALUES
(1, '10', 'soila', '887', 1, 'images/fotos_perfil/perfil.jpg'),
(3, '000', 'mr2', '14', 1, 'images/fotos_perfil/perfil.jpg'),
(4, '10', 'lalolanda', '8888', 1, 'images/fotos_perfil/perfil.jpg'),
(105, '7', 'elcon', '5', 1, 'images/fotos_perfil/perfil.jpg'),
(148, '12', 'mono12', '12', 1, 'images/mono.png'),
(150, '12', 'perico12', '12', 1, 'images/perico.png'),
(151, '12', 'oso12', '12', 1, 'images/oso.png'),
(156, '12', 'oso12', '12', 1, 'images/oso.png'),
(157, '16', 'mono16', '16', 1, 'images/mono.png'),
(158, '19', 'mono19', '19', 1, 'images/mono.png'),
(159, '11', 'mono11', '11', 1, 'images/mono.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `niveles`
--

CREATE TABLE `niveles` (
  `idNivel` int(11) NOT NULL,
  `NombreNivel` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `niveles`
--

INSERT INTO `niveles` (`idNivel`, `NombreNivel`) VALUES
(1, 'primero'),
(2, 'segundo'),
(3, 'tercero'),
(4, 'cuarto'),
(5, 'quito'),
(6, 'sexto'),
(7, 'septimo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subareas`
--

CREATE TABLE `subareas` (
  `idSubArea` int(11) NOT NULL,
  `NombreSubArea` varchar(50) NOT NULL,
  `IdArea` int(11) NOT NULL,
  `IdGrupo` int(11) NOT NULL,
  `Idsemestre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `subareas`
--

INSERT INTO `subareas` (`idSubArea`, `NombreSubArea`, `IdArea`, `IdGrupo`, `Idsemestre`) VALUES
(1, 'medicina familiar', 1, 1, 0),
(3, 'psicologica', 1, 1, 0),
(5, 'qqw', 1, 1, 0),
(10, 'teseee', 6, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` smallint(6) NOT NULL,
  `NombreUsuario` varchar(50) NOT NULL,
  `PassUsuario` varchar(150) NOT NULL,
  `NivelUsuario` int(11) NOT NULL,
  `Codigo` int(11) NOT NULL,
  `Foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `NombreUsuario`, `PassUsuario`, `NivelUsuario`, `Codigo`, `Foto`) VALUES
(101, 'user1', '1234', 1, 1234, 'images/fotos_perfil/667ccbc0-104f-4ad8-8cf6-000df763715a.jpg'),
(105, 'Elcon', '1234', 3, 2020, 'images/fotos_perfil/perfil.jpg'),
(106, 'cubito@mail.com', '123', 2, 0, NULL),
(107, 'juan', '1234', 1, 0, 'images/fotos_perfil/perfil.jpg'),
(108, 'asd@mail.com', '1234', 2, 0, NULL),
(123, 'ern@mail.com', '', 4, 0, NULL),
(124, 'asd@mail.com', '12345', 1, 0, NULL),
(125, 'cubito@mail.com', '123', 4, 0, NULL),
(126, 'ern@mail.com', '123', 4, 0, NULL),
(127, 'mr2w', '14', 2, 3, NULL),
(128, 'con@mail', '456', 4, 0, NULL),
(129, 'cubito@mail.com', '123', 4, 0, NULL),
(130, 'soila', '12345', 3, 1, NULL),
(131, 'mr Roboto', '222', 3, 2, NULL),
(132, 'mr2w', '14', 3, 3, 'images/fotos_perfil/perfil.jpg'),
(133, 'lalolanda', '8888', 2, 4, NULL),
(134, 'asd@asd.com', '111', 2, 5, 'images/fotos_perfil/perfil.jpg'),
(135, 'lalolanda', '1234', 1, 0, NULL),
(136, 'panza@mail.com', '111', 4, 5, 'images/fotos_perfil/perfil.jpg'),
(137, 'lalolanda', '8888', 3, 4, 'images/fotos_perfil/perfil.jpg'),
(138, 'Especialista@gmail.com', '1234', 2, 6, 'images/fotos_perfil/perfil.jpg'),
(139, 'joseperes@gmail.com', '1234', 3, 5, 'images/fotos_perfil/perfil.jpg'),
(140, '123123', 'qwe', 1, 123123, 'images/fotos_perfil/perfil.jpg'),
(141, 'ana@gmail.com', '', 4, 0, 'images/fotos_perfil/perfil.jpg'),
(142, 'jojo@gmail.com', '', 4, 0, 'images/fotos_perfil/perfil.jpg'),
(143, 'zoe@gmail.com', '', 4, 0, 'images/fotos_perfil/perfil.jpg'),
(144, 'pepe@mail.com', '7889456333', 4, 0, 'images/fotos_perfil/perfil.jpg'),
(145, 'eren@gmail.com', '1234567880', 4, 0, 'images/fotos_perfil/perfil.jpg'),
(146, 'aaa@gmal.com', '1231231231', 4, 0, 'images/fotos_perfil/perfil.jpg'),
(147, 'pao@gmail.com', '1234', 4, 12, 'images/fotos_perfil/perfil.jpg'),
(148, 'karla@mail.com', '659832', 4, 13, 'images/fotos_perfil/perfil.jpg'),
(149, 'milerrojassiles@gmail.com', '70074', 2, 7, 'images/fotos_perfil/perfil.jpg'),
(150, 'koba@hotmail.com', '123456', 2, 8, 'images/fotos_perfil/perfil.jpg'),
(151, 'milerrojassiles@gmail.com', '12312', 2, 9, 'images/fotos_perfil/perfil.jpg'),
(152, 'joserpepepe@gmail.com', '565656565', 2, 10, 'images/fotos_perfil/perfil.jpg'),
(160, '12', 'd', 3, 45, 'oto'),
(161, 'oso12', '12', 3, 156, 'images/oso.png'),
(162, 'nuevo@gmail.com', '123155', 2, 8, 'images/fotos_perfil/perfil.jpg'),
(164, 'mono16', '16', 3, 157, 'images/mono.png'),
(165, 'editor', '1234', 4, 123, 'images/fotos_perfil/perfil.jpg'),
(166, 'mono19', '19', 3, 158, 'images/mono.png'),
(167, 'mono11', '11', 3, 159, 'images/mono.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valeria`
--

CREATE TABLE `valeria` (
  `idvaleria` int(11) NOT NULL,
  `valeriacol` varchar(45) DEFAULT NULL,
  `valeriacol1` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`idArea`);

--
-- Indices de la tabla `asignaciones`
--
ALTER TABLE `asignaciones`
  ADD PRIMARY KEY (`idAsignacion`),
  ADD KEY `idEspecialista` (`idEspecialista`),
  ADD KEY `idSubArea` (`idSubArea`),
  ADD KEY `idGrupo` (`idGrupo`);

--
-- Indices de la tabla `boletin`
--
ALTER TABLE `boletin`
  ADD PRIMARY KEY (`idBoletin`,`areas_idArea`),
  ADD KEY `fk_Boletin_areas1_idx` (`areas_idArea`);

--
-- Indices de la tabla `cartas`
--
ALTER TABLE `cartas`
  ADD PRIMARY KEY (`idcartas`);

--
-- Indices de la tabla `especialistas`
--
ALTER TABLE `especialistas`
  ADD PRIMARY KEY (`idEspecialista`);

--
-- Indices de la tabla `grupos`
--
ALTER TABLE `grupos`
  ADD PRIMARY KEY (`idGrupo`);

--
-- Indices de la tabla `ninos`
--
ALTER TABLE `ninos`
  ADD PRIMARY KEY (`idNino`);

--
-- Indices de la tabla `niveles`
--
ALTER TABLE `niveles`
  ADD PRIMARY KEY (`idNivel`);

--
-- Indices de la tabla `subareas`
--
ALTER TABLE `subareas`
  ADD PRIMARY KEY (`idSubArea`),
  ADD KEY `IdArea` (`IdArea`),
  ADD KEY `IdGrupo` (`IdGrupo`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`),
  ADD KEY `NivelUsuario` (`NivelUsuario`);

--
-- Indices de la tabla `valeria`
--
ALTER TABLE `valeria`
  ADD PRIMARY KEY (`idvaleria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `areas`
--
ALTER TABLE `areas`
  MODIFY `idArea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `asignaciones`
--
ALTER TABLE `asignaciones`
  MODIFY `idAsignacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `boletin`
--
ALTER TABLE `boletin`
  MODIFY `idBoletin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=905;

--
-- AUTO_INCREMENT de la tabla `especialistas`
--
ALTER TABLE `especialistas`
  MODIFY `idEspecialista` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `grupos`
--
ALTER TABLE `grupos`
  MODIFY `idGrupo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `ninos`
--
ALTER TABLE `ninos`
  MODIFY `idNino` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT de la tabla `niveles`
--
ALTER TABLE `niveles`
  MODIFY `idNivel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `subareas`
--
ALTER TABLE `subareas`
  MODIFY `idSubArea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asignaciones`
--
ALTER TABLE `asignaciones`
  ADD CONSTRAINT `asignaciones_ibfk_1` FOREIGN KEY (`idEspecialista`) REFERENCES `especialistas` (`idEspecialista`),
  ADD CONSTRAINT `asignaciones_ibfk_2` FOREIGN KEY (`idSubArea`) REFERENCES `subareas` (`idSubArea`),
  ADD CONSTRAINT `asignaciones_ibfk_3` FOREIGN KEY (`idGrupo`) REFERENCES `grupos` (`idGrupo`);

--
-- Filtros para la tabla `boletin`
--
ALTER TABLE `boletin`
  ADD CONSTRAINT `fk_Boletin_areas1` FOREIGN KEY (`areas_idArea`) REFERENCES `areas` (`idArea`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `subareas`
--
ALTER TABLE `subareas`
  ADD CONSTRAINT `SubAreas_ibfk_1` FOREIGN KEY (`IdArea`) REFERENCES `areas` (`idArea`),
  ADD CONSTRAINT `SubAreas_ibfk_2` FOREIGN KEY (`IdGrupo`) REFERENCES `grupos` (`idGrupo`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`NivelUsuario`) REFERENCES `niveles` (`idNivel`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;