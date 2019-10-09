-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-10-2019 a las 00:17:21
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.3.6

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
(4, 'lenguas');

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
(2, 'medicina  familiar ', 1, 1, 3, 101, 301, '1', 401),
(3, 'pediatria\r\n', 6, 1, 5, 101, 301, '1', 402),
(4, 'traumatismo', 6, 1, 4, 104, 303, '1', 403);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cartas`
--

CREATE TABLE `cartas` (
  `idcartas` int(11) NOT NULL,
  `contenido` text DEFAULT NULL,
  `foto` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cartas`
--

INSERT INTO `cartas` (`idcartas`, `contenido`, `foto`) VALUES
(1, 'carta hecha por un pogramador desesperado', 'images/cartas/imgCartaEdit.jpg'),
(2, 'Otra carta hecha por el programador', 'images/cartas/imgCartaEdit.jpg'),
(3, 'carta malosa', 'images/cartas/carta1.jpg'),
(8, 'carta fea', 'images/cartas/carta1.jpg'),
(9, 'hola mundo', 'images/cartas/carta1.jpg'),
(10, 'hola mundo mundito', 'images/cartas/carta1.jpg'),
(11, 'hola hola', 'images/cartas/carta1.jpg'),
(12, 'hola hola hola', 'images/cartas/carta1.jpg'),
(13, 'holi ', 'images/cartas/carta1.jpg'),
(14, 'Carta 02', 'images/cartas/carta1.jpg'),
(15, 'Carajo, no me puedo morir', 'images/cartas/carta1.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escribir_subareas`
--

CREATE TABLE `escribir_subareas` (
  `idInscripcion` int(11) NOT NULL,
  `idSubArea` int(11) NOT NULL,
  `idNino` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `observaciones` varchar(250) DEFAULT NULL,
  `cartas_idcartas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `escribir_subareas`
--

INSERT INTO `escribir_subareas` (`idInscripcion`, `idSubArea`, `idNino`, `fecha`, `observaciones`, `cartas_idcartas`) VALUES
(13, 1, 1, '0000-00-00', 'none', 1),
(14, 1, 2, '2019-06-14', 'noce', 2),
(15, 1, 3, '2019-06-14', 'none', 3),
(26, 2, 4, '0000-00-00', 'observaciones', 8);

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
(1, 'Jaime', 'Escalante', 'jaimico', 'trueblade39@hotmail.com', '79383291', '4306891', 'Pasaje San cristobal', 1, 'images/fotos_perfil/perfil.jpg'),
(2, 'rudy', 'arriola', 'pokemon', 'trueblade39@hotmail.com', '12345678', '', 'rererere', 1, 'images/fotos_perfil/perfil.jpg'),
(3, 'nico', 'laquiere', '456', 'nico@mail.com', '888', '777', 'su casa', 1, 'images/fotos_perfil/perfil.jpg'),
(6, 'Especialista1', 'Especialista', '1234', 'Especialista@gmail.com', '1234', '1234', 'casa', 1, 'images/fotos_perfil/perfil.jpg'),
(7, 'as', 'asd', '70074', 'milerrojassiles@gmail.com', '12234546', '6482560', 'J. de los Rios nÂº2231', 1, 'images/fotos_perfil/perfil.jpg'),
(9, 'das', 'asd', '12312', 'milerrojassiles@gmail.com', '12367589', '6482560', 'J. de los Rios nÂº2231', 1, 'images/fotos_perfil/perfil.jpg');

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
  `correo` varchar(100) NOT NULL,
  `Mensaje` varchar(500) NOT NULL,
  `FechaEnvio` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(2, '111', 'mr Roboto', '222', 1, 'images/fotos_perfil/odkJgHYE_400x400.jpg'),
(3, '000', 'mr2', '14', 1, 'images/fotos_perfil/perfil.jpg'),
(4, '10', 'lalolanda', '8888', 1, 'images/fotos_perfil/perfil.jpg');

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
(1, 'medicina familiar', 1, 1, 1),
(2, 'psicología Emocional', 2, 1, 1),
(3, 'neurologia', 1, 3, 1);

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
(101, 'user1', '1234', 1, 1234, 'images/fotos_perfil/01677-500x500.jpg'),
(102, 'soila', '887', 2, 1, NULL),
(103, 'trueblade39@hotmail.com', 'pokemon', 2, 2, NULL),
(104, 'tru@gmail.com', '12345', 2, 0, NULL),
(105, 'Elcon', '1234', 3, 2020, 'images/fotos_perfil/perfil.jpg'),
(106, 'cubito@mail.com', '123', 2, 0, NULL),
(107, 'juan', '123', 4, 555, 'images/fotos_perfil/perfil.jpg'),
(108, 'asd@mail.com', '1234', 2, 0, NULL),
(123, 'ern@mail.com', '', 4, 0, NULL),
(124, 'asd@mail.com', '123', 4, 0, NULL),
(125, 'cubito@mail.com', '123', 4, 0, NULL),
(126, 'ern@mail.com', '123', 4, 0, NULL),
(127, 'nico@mail.com', '456', 2, 3, NULL),
(128, 'con@mail', '456', 4, 0, NULL),
(129, 'cubito@mail.com', '123', 4, 0, NULL),
(130, 'soila', '887', 3, 1, NULL),
(131, 'Robot@mail.com', '222', 3, 2, NULL),
(132, 'roboto@gg.com', '14', 3, 3, 'images/fotos_perfil/perfil.jpg'),
(133, 'lalolanda', '8888', 2, 4, NULL),
(134, 'asd@asd.com', '111', 2, 5, 'images/fotos_perfil/perfil.jpg'),
(135, 'lalolanda', '8888', 4, 4, NULL),
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
(152, 'ninonino', '123123', 3, 0, 'images/fotos_perfil/perfil.jpg');

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
-- Indices de la tabla `cartas`
--
ALTER TABLE `cartas`
  ADD PRIMARY KEY (`idcartas`);

--
-- Indices de la tabla `escribir_subareas`
--
ALTER TABLE `escribir_subareas`
  ADD PRIMARY KEY (`idInscripcion`),
  ADD KEY `idSubArea` (`idSubArea`),
  ADD KEY `idNino` (`idNino`),
  ADD KEY `idArea` (`idInscripcion`) USING BTREE,
  ADD KEY `fk_escribir_subareas_cartas1` (`cartas_idcartas`);

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
-- Indices de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD PRIMARY KEY (`idMensaje`);

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
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `areas`
--
ALTER TABLE `areas`
  MODIFY `idArea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `asignaciones`
--
ALTER TABLE `asignaciones`
  MODIFY `idAsignacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `cartas`
--
ALTER TABLE `cartas`
  MODIFY `idcartas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `escribir_subareas`
--
ALTER TABLE `escribir_subareas`
  MODIFY `idInscripcion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `especialistas`
--
ALTER TABLE `especialistas`
  MODIFY `idEspecialista` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `grupos`
--
ALTER TABLE `grupos`
  MODIFY `idGrupo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  MODIFY `idMensaje` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ninos`
--
ALTER TABLE `ninos`
  MODIFY `idNino` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `niveles`
--
ALTER TABLE `niveles`
  MODIFY `idNivel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `subareas`
--
ALTER TABLE `subareas`
  MODIFY `idSubArea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

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
-- Filtros para la tabla `escribir_subareas`
--
ALTER TABLE `escribir_subareas`
  ADD CONSTRAINT `fk_escribir_subareas_cartas1` FOREIGN KEY (`cartas_idcartas`) REFERENCES `cartas` (`idcartas`),
  ADD CONSTRAINT `inscripciones_SubAreas_ibfk_1` FOREIGN KEY (`idSubArea`) REFERENCES `subareas` (`idSubArea`),
  ADD CONSTRAINT `inscripciones_SubAreas_ibfk_2` FOREIGN KEY (`idNino`) REFERENCES `ninos` (`idNino`);

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
