-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-10-2023 a las 15:52:32
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cusco little bees`
--
CREATE DATABASE IF NOT EXISTS `cusco little bees` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `cusco little bees`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `idcomentarios` int(11) NOT NULL,
  `idvisitas` int(11) DEFAULT NULL,
  `comentarios` varchar(45) DEFAULT NULL,
  `fecha_comentarios` datetime DEFAULT NULL,
  `calificacion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`idcomentarios`, `idvisitas`, `comentarios`, `fecha_comentarios`, `calificacion`) VALUES
(1, 1, 'Excelente lugar para visitar', '2023-10-08 10:30:00', '5 estrellas'),
(2, 2, 'Muy impresionante, definitivamente regresaré', '2023-10-08 11:45:00', '4 estrellas'),
(3, 3, 'Interesante experiencia', '2023-10-08 14:20:00', '4.5 estrellas'),
(4, 4, 'Buen lugar para pasar el día', '2023-10-08 16:15:00', '3.5 estrellas'),
(5, 5, 'Vistas espectaculares', '2023-10-08 12:10:00', '5 estrellas'),
(6, 6, 'Imprescindible en Cusco', '2023-10-08 09:50:00', '5 estrellas'),
(7, 7, 'Me encantó el mercado', '2023-10-08 13:30:00', '4 estrellas'),
(8, 8, 'Increíble caminata', '2023-10-08 07:00:00', '4.5 estrellas'),
(9, 9, 'Museo muy informativo', '2023-10-08 15:45:00', '4 estrellas'),
(10, 10, 'La plaza central es hermosa', '2023-10-08 18:30:00', '4 estrellas'),
(11, 11, 'Gran museo en Machu Picchu', '2023-10-08 12:05:00', '4.5 estrellas'),
(12, 12, 'Moray es fascinante', '2023-10-08 14:40:00', '4 estrellas'),
(13, 13, 'Visita obligada en Ollantaytambo', '2023-10-08 11:20:00', '4.5 estrellas'),
(14, 14, 'Maras es interesante', '2023-10-08 10:00:00', '3.5 estrellas'),
(15, 15, 'Arte precolombino asombroso', '2023-10-08 16:50:00', '5 estrellas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventoe`
--

CREATE TABLE `eventoe` (
  `ideventoE` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `fechaInicio` datetime DEFAULT NULL,
  `fechaFin` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `eventoe`
--

INSERT INTO `eventoe` (`ideventoE`, `nombre`, `fechaInicio`, `fechaFin`) VALUES
(1, 'Festival de la Luna', '2023-11-15 08:00:00', '2023-11-17 20:00:00'),
(2, 'Exposición de Arte Inca', '2023-10-20 10:00:00', '2023-10-25 18:00:00'),
(3, 'Fiesta de la Cosecha', '2023-09-05 12:00:00', '2023-09-07 22:00:00'),
(4, 'Carnaval de Cusco', '2024-02-10 09:00:00', '2024-02-13 23:59:59'),
(5, 'Semana Santa en Cusco', '2024-04-06 06:00:00', '2024-04-12 21:00:00'),
(6, 'Festival de Música Andina', '2023-12-20 16:00:00', '2023-12-22 23:00:00'),
(7, 'Feria Artesanal Cusco', '2024-07-15 10:00:00', '2024-07-20 19:00:00'),
(8, 'Fiesta de la Pachamama', '2024-08-30 08:00:00', '2024-09-01 18:00:00'),
(9, 'Cusco Trail Marathon', '2023-06-12 07:00:00', '2023-06-12 15:00:00'),
(10, 'Festival Gastronómico Cusqueño', '2024-11-05 12:00:00', '2024-11-08 23:59:59'),
(11, 'Cusco Tango Festival', '2023-07-28 18:00:00', '2023-07-30 23:00:00'),
(12, 'Festival de Cine Cusco', '2024-09-20 14:00:00', '2024-09-25 22:00:00'),
(13, 'Fiesta de los Farolitos', '2023-12-24 19:00:00', '2023-12-25 01:00:00'),
(14, 'Fiesta del Inti Raymi', '2024-06-24 09:00:00', '2024-06-24 17:00:00'),
(15, 'Cusco Fashion Week', '2024-03-30 16:00:00', '2024-04-02 23:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugarturisticevento`
--

CREATE TABLE `lugarturisticevento` (
  `idlugarTuristicEvento` int(11) NOT NULL,
  `idLugarTuristico` int(5) DEFAULT NULL,
  `idEventoE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `lugarturisticevento`
--

INSERT INTO `lugarturisticevento` (`idlugarTuristicEvento`, `idLugarTuristico`, `idEventoE`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugarturistico`
--

CREATE TABLE `lugarturistico` (
  `idLugarTuristico` int(5) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `idTipoAtraccion` int(11) DEFAULT NULL,
  `horaApertura` time DEFAULT NULL,
  `horaCierre` time DEFAULT NULL,
  `tarifa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `lugarturistico`
--

INSERT INTO `lugarturistico` (`idLugarTuristico`, `nombre`, `idTipoAtraccion`, `horaApertura`, `horaCierre`, `tarifa`) VALUES
(1, 'Museo de Arte de Cusco', 1, '09:00:00', '18:00:00', 20),
(2, 'Machu Picchu', 2, '06:00:00', '17:00:00', 50),
(3, 'Cristo Blanco', 3, '08:00:00', '19:00:00', 0),
(4, 'Parque de las Leyendas', 4, '10:00:00', '16:00:00', 10),
(5, 'Santuario de Sacsayhuamán', 2, '08:00:00', '17:00:00', 30),
(6, 'Templo del Sol (Coricancha)', 1, '09:00:00', '17:00:00', 25),
(7, 'Mercado de San Pedro', 1, '06:00:00', '18:00:00', 0),
(8, 'Montaña de Siete Colores', 3, '05:00:00', '15:00:00', 80),
(9, 'Museo Inka', 1, '10:00:00', '16:00:00', 15),
(10, 'Plaza de Armas de Cusco', 3, '00:00:00', '23:59:59', 0),
(11, 'Museo Machupicchu Casa Concha', 1, '08:00:00', '18:00:00', 25),
(12, 'Moray', 2, '08:00:00', '17:00:00', 20),
(13, 'Ollantaytambo', 2, '07:00:00', '17:00:00', 15),
(14, 'Maras', 2, '08:00:00', '17:00:00', 10),
(15, 'Museo de Arte Precolombino', 1, '09:00:00', '18:00:00', 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nacionalidad`
--

CREATE TABLE `nacionalidad` (
  `idnacionalidad` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `nacionalidad`
--

INSERT INTO `nacionalidad` (`idnacionalidad`, `nombre`) VALUES
(1, 'Peruano'),
(2, 'Extranjero'),
(3, 'Estadounidense'),
(4, 'Argentino'),
(5, 'Chileno'),
(6, 'Brasileño'),
(7, 'Español'),
(8, 'Francés'),
(9, 'Alemán'),
(10, 'Italiano'),
(11, 'Mexicano'),
(12, 'Canadiense'),
(13, 'Australiano'),
(14, 'Japonés'),
(15, 'Chino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temporada`
--

CREATE TABLE `temporada` (
  `idtemporada` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `temporada`
--

INSERT INTO `temporada` (`idtemporada`, `nombre`) VALUES
(1, 'Temporada Alta Verano'),
(2, 'Temporada Baja Otoño'),
(3, 'Temporada Media Invierno'),
(4, 'Temporada Alta Primavera'),
(5, 'Temporada Baja Invierno'),
(6, 'Temporada Media Verano'),
(7, 'Temporada Alta Otoño'),
(8, 'Temporada Baja Primavera'),
(9, 'Temporada Media Otoño'),
(10, 'Temporada Alta Invierno'),
(11, 'Temporada Baja Verano'),
(12, 'Temporada Media Primavera'),
(13, 'Temporada Alta Primavera'),
(14, 'Temporada Baja Otoño'),
(15, 'Temporada Media Verano');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoatracciones`
--

CREATE TABLE `tipoatracciones` (
  `idTipoAtracciones` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `tipoatracciones`
--

INSERT INTO `tipoatracciones` (`idTipoAtracciones`, `nombre`) VALUES
(1, 'Museo'),
(2, 'Ruina Arqueológica'),
(3, 'Mirador'),
(4, 'Parque Natural'),
(5, 'Santuario Arqueológico'),
(6, 'Monumento Histórico'),
(7, 'Mercado'),
(8, 'Montaña'),
(9, 'Museo de Arte'),
(10, 'Plaza de Armas'),
(11, 'Centro Histórico'),
(12, 'Sitio Histórico'),
(13, 'Templo'),
(14, 'Cascada'),
(15, 'Otros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `contraseña` varchar(45) DEFAULT NULL,
  `id_nacionalidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nombre`, `correo`, `contraseña`, `id_nacionalidad`) VALUES
(1, 'Juan Pérez', 'juan@example.com', 'contraseña123', 1),
(2, 'María Rodríguez', 'maria@example.com', 'password456', 2),
(3, 'Pedro González', 'pedro@example.com', 'secure789', 3),
(4, 'Ana López', 'ana@example.com', 'secret123', 4),
(5, 'Carlos Martínez', 'carlos@example.com', 'confidential456', 5),
(6, 'Laura Torres', 'laura@example.com', 'private789', 6),
(7, 'Diego Sánchez', 'diego@example.com', 'hidden123', 7),
(8, 'Sofía Ramírez', 'sofia@example.com', 'topsecret456', 8),
(9, 'Luis Rodríguez', 'luis@example.com', 'classified789', 9),
(10, 'Elena García', 'elena@example.com', 'encrypted123', 10),
(11, 'Javier Pérez', 'javier@example.com', 'unclassified456', 11),
(12, 'Marta González', 'marta@example.com', 'exposed789', 12),
(13, 'Raúl Fernández', 'raul@example.com', 'sensitive123', 13),
(14, 'Isabel Morales', 'isabel@example.com', 'restricted456', 14),
(15, 'Pablo Martínez', 'pablo@example.com', 'public789', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitas`
--

CREATE TABLE `visitas` (
  `idvisitas` int(11) NOT NULL,
  `idLugarTuristico` int(5) DEFAULT NULL,
  `idUsuario` int(11) DEFAULT NULL,
  `fecha_inicio` datetime DEFAULT NULL,
  `fecha_fin` datetime DEFAULT NULL,
  `idTemporada` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `visitas`
--

INSERT INTO `visitas` (`idvisitas`, `idLugarTuristico`, `idUsuario`, `fecha_inicio`, `fecha_fin`, `idTemporada`) VALUES
(1, 1, 1, '2023-11-01 09:00:00', '2023-11-01 15:00:00', 1),
(2, 2, 2, '2023-10-15 10:30:00', '2023-10-15 16:30:00', 2),
(3, 3, 3, '2023-09-05 14:00:00', '2023-09-05 20:00:00', 3),
(4, 4, 4, '2023-08-20 11:00:00', '2023-08-20 17:00:00', 4),
(5, 5, 5, '2024-02-14 09:30:00', '2024-02-14 15:30:00', 5),
(6, 6, 6, '2024-04-08 10:45:00', '2024-04-08 16:45:00', 6),
(7, 7, 7, '2023-12-25 12:00:00', '2023-12-25 18:00:00', 7),
(8, 8, 8, '2024-07-17 13:15:00', '2024-07-17 19:15:00', 8),
(9, 9, 9, '2024-09-01 14:30:00', '2024-09-01 20:30:00', 9),
(10, 10, 10, '2023-06-15 15:00:00', '2023-06-15 21:00:00', 10),
(11, 12, 11, '2024-11-07 16:45:00', '2024-11-07 22:45:00', 11),
(12, 14, 12, '2023-07-29 08:30:00', '2023-07-29 14:30:00', 12),
(13, 13, 13, '2024-09-23 12:15:00', '2024-09-23 18:15:00', 13),
(14, 14, 14, '2023-12-31 09:30:00', '2023-12-31 15:30:00', 14),
(15, 15, 15, '2024-06-25 10:00:00', '2024-06-25 16:00:00', 15);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`idcomentarios`),
  ADD KEY `fk_visitas_idx` (`idvisitas`);

--
-- Indices de la tabla `eventoe`
--
ALTER TABLE `eventoe`
  ADD PRIMARY KEY (`ideventoE`);

--
-- Indices de la tabla `lugarturisticevento`
--
ALTER TABLE `lugarturisticevento`
  ADD PRIMARY KEY (`idlugarTuristicEvento`),
  ADD KEY `eventoE_idx` (`idEventoE`),
  ADD KEY `fk_lugarturistico_idx` (`idLugarTuristico`);

--
-- Indices de la tabla `lugarturistico`
--
ALTER TABLE `lugarturistico`
  ADD PRIMARY KEY (`idLugarTuristico`),
  ADD KEY `fk_tipoatraccion_idx` (`idTipoAtraccion`);

--
-- Indices de la tabla `nacionalidad`
--
ALTER TABLE `nacionalidad`
  ADD PRIMARY KEY (`idnacionalidad`);

--
-- Indices de la tabla `temporada`
--
ALTER TABLE `temporada`
  ADD PRIMARY KEY (`idtemporada`);

--
-- Indices de la tabla `tipoatracciones`
--
ALTER TABLE `tipoatracciones`
  ADD PRIMARY KEY (`idTipoAtracciones`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`),
  ADD KEY `fk_nacionalidad_idx` (`id_nacionalidad`);

--
-- Indices de la tabla `visitas`
--
ALTER TABLE `visitas`
  ADD PRIMARY KEY (`idvisitas`),
  ADD KEY `fk_idusuario_idx` (`idUsuario`),
  ADD KEY `fk_lugarturistico_idx` (`idLugarTuristico`),
  ADD KEY `fk_temporada_idx` (`idTemporada`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `fk_visitas` FOREIGN KEY (`idvisitas`) REFERENCES `visitas` (`idvisitas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `lugarturisticevento`
--
ALTER TABLE `lugarturisticevento`
  ADD CONSTRAINT `fk_eventoE` FOREIGN KEY (`idEventoE`) REFERENCES `eventoe` (`ideventoE`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_lugarturistico1` FOREIGN KEY (`idLugarTuristico`) REFERENCES `lugarturistico` (`idLugarTuristico`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `lugarturistico`
--
ALTER TABLE `lugarturistico`
  ADD CONSTRAINT `fk_tipoatraccion` FOREIGN KEY (`idTipoAtraccion`) REFERENCES `tipoatracciones` (`idTipoAtracciones`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_nacionalidad` FOREIGN KEY (`id_nacionalidad`) REFERENCES `nacionalidad` (`idnacionalidad`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `visitas`
--
ALTER TABLE `visitas`
  ADD CONSTRAINT `fk_idusuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_lugarturistico` FOREIGN KEY (`idLugarTuristico`) REFERENCES `lugarturistico` (`idLugarTuristico`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_temporada` FOREIGN KEY (`idTemporada`) REFERENCES `temporada` (`idtemporada`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
