-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-03-2021 a las 07:02:07
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectotutoria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `CodigoAlumno` varchar(11) NOT NULL,
  `DNI` char(8) DEFAULT NULL,
  `Apellidos` varchar(150) DEFAULT NULL,
  `Nombres` varchar(150) DEFAULT NULL,
  `Correo` varchar(250) DEFAULT NULL,
  `Celular` varchar(11) DEFAULT NULL,
  `idEscuela` int(11) DEFAULT NULL,
  `Foto` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`CodigoAlumno`, `DNI`, `Apellidos`, `Nombres`, `Correo`, `Celular`, `idEscuela`, `Foto`) VALUES
('171146', '89786512', 'Cuiro Peña', 'Alexis', '171146@unamba.edu.pe', '987897654', 12, '20321726.jpg'),
('171136', '76938521', 'Arevalo Quispe', 'Brandi', '171136@unamba.edu.pe', '987677890', 17, NULL),
('171151', '88888888', 'Arevalo Gomez', 'Juan ', '171151@unamba.edu.pe', '966828266', 3, '343154749.jpg'),
('171148', '78777777', 'Puma Ayala', 'Guino', 'guino@unamba.edu.pe', '966828266', 2, NULL),
('14523', '45789632', 'carbajal', 'yane', 'yane@gmail.com', '87452163', 2, '1460276325.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `idArea` int(11) NOT NULL,
  `TipoArea` varchar(150) DEFAULT NULL,
  `Descripcion` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`idArea`, `TipoArea`, `Descripcion`) VALUES
(1, 'OBA', 'MATEMATICAS'),
(2, 'ABO', 'LETRAS'),
(3, 'EOB', 'CIENCIAS SOCIALES');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_formatog`
--

CREATE TABLE `detalle_formatog` (
  `IdDetalleFG` int(11) NOT NULL,
  `IdFormatoG` int(11) DEFAULT NULL,
  `CodigoAlumno` varchar(11) DEFAULT NULL,
  `Llenado` bit(1) DEFAULT NULL,
  `Asistio` bit(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_formatoi`
--

CREATE TABLE `detalle_formatoi` (
  `idDetalleFI` int(11) NOT NULL,
  `idArea` int(11) NOT NULL,
  `idFormatoI` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_tutorado`
--

CREATE TABLE `detalle_tutorado` (
  `idDetalle` int(11) NOT NULL,
  `CodigoAlumno` varchar(11) NOT NULL,
  `idTutorados` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle_tutorado`
--

INSERT INTO `detalle_tutorado` (`idDetalle`, `CodigoAlumno`, `idTutorados`) VALUES
(1, '171151', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes`
--

CREATE TABLE `docentes` (
  `CodigoDocente` varchar(11) NOT NULL,
  `Apellidos` varchar(150) DEFAULT NULL,
  `Nombres` varchar(200) DEFAULT NULL,
  `Correo` varchar(250) DEFAULT NULL,
  `Direccion` varchar(250) DEFAULT NULL,
  `Celular` varchar(250) DEFAULT NULL,
  `idEscuela` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `docentes`
--

INSERT INTO `docentes` (`CodigoDocente`, `Apellidos`, `Nombres`, `Correo`, `Direccion`, `Celular`, `idEscuela`) VALUES
('123', 'ramirez', 'juan', '87654326@unamba.edu.pe', 'av.este', '987897654', 4),
('12345677', 'Quispe Tupa', 'Jose antonio', '12345677@unamba.edu.pe', 'Jr. Puno', '956321212', 13),
('87654326', 'Gomez Huarhua', 'Eddy', '87654326@unamba.edu.pe', 'Jr. Ayacucho', '978567894', 1),
('12345676', 'IncaHuanaco Huaman', 'Cari', '12345676@unamba.edu.pe', 'Jr. Cusco', '985632145', 16),
('22222222', 'Bastidas Turpo', 'Micaela', '22222222@unamba.edu.pe', 'Jr. 2 de abril', '982235689', 8),
('23456789', 'Ibarra cabrera', 'Manuel', '23456789@unamba.edu.pe', 'Jr. Puno', '980343434', 5),
('nnn', 'ncxx', 'juan', 'nkdsj', 'av.este', '14759693', 4),
('51742', 'ramirez', 'juan', 'juan@gmail.com', 'av.este', '966828266', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escuelaprofesional`
--

CREATE TABLE `escuelaprofesional` (
  `idEscuela` int(11) NOT NULL,
  `NombreEscuela` varchar(300) DEFAULT NULL,
  `PaginaWeb` varchar(350) DEFAULT NULL,
  `Telefono` varchar(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `escuelaprofesional`
--

INSERT INTO `escuelaprofesional` (`idEscuela`, `NombreEscuela`, `PaginaWeb`, `Telefono`) VALUES
(2, 'Ingeniería Agroindustrial', 'www.EAPIA.edu.pe', '980101712'),
(3, 'Ingeniería Civil', 'www.EAPIC.edu.pe', '986325874'),
(13, 'Ingeniería de Minas', 'www.EAPIM.edu.pe', '958232520'),
(8, 'Administración de Empresas', 'www.EAPAE.edu.pe', '985236958'),
(9, 'Medicina Veterinaria y Zotecnia', 'www.EAPMVZ.edu.pe', '965825412'),
(12, 'Educación Inicial e Interculturalidad Bilingue', 'www.EAPEIIB.edu.pe', '985236987'),
(1, 'Ing.Sistemas', 'www.sistemas.com', '11111112');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formato_grupal`
--

CREATE TABLE `formato_grupal` (
  `IdFormatoG` int(11) NOT NULL,
  `Fecha` date DEFAULT NULL,
  `HoraInicio` time DEFAULT NULL,
  `HoraTermino` time DEFAULT NULL,
  `observaciones` varchar(350) DEFAULT NULL,
  `CodigoDocente` varchar(11) DEFAULT NULL,
  `idSemestre` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `formato_grupal`
--

INSERT INTO `formato_grupal` (`IdFormatoG`, `Fecha`, `HoraInicio`, `HoraTermino`, `observaciones`, `CodigoDocente`, `idSemestre`) VALUES
(1, '2021-03-06', '08:00:00', '09:00:00', 'no se nada', '22222222', 5),
(2, '2021-03-04', '09:00:00', '10:00:00', 'le falta rellenar algunos puntos', '12345677', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formato_individual`
--

CREATE TABLE `formato_individual` (
  `idFormatoI` int(11) NOT NULL,
  `Fecha` date DEFAULT NULL,
  `HoraInicio` time DEFAULT NULL,
  `HoraTermino` time DEFAULT NULL,
  `Observaciones` varchar(350) DEFAULT NULL,
  `IdDetalleFG` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `formato_individual`
--

INSERT INTO `formato_individual` (`idFormatoI`, `Fecha`, `HoraInicio`, `HoraTermino`, `Observaciones`, `IdDetalleFG`) VALUES
(1, '0000-00-00', '08:00:00', '09:00:00', 'hjjkjkkk', 1),
(2, '2021-03-03', '08:00:00', '10:00:00', 'falta adjuntar algunos documentos', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `semestre`
--

CREATE TABLE `semestre` (
  `idSemestre` int(11) NOT NULL,
  `Descripcion` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `semestre`
--

INSERT INTO `semestre` (`idSemestre`, `Descripcion`) VALUES
(1, 'es del primer ciclo'),
(5, 'es un alumno de 5 ciclo'),
(3, 'BLANCO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tutorados`
--

CREATE TABLE `tutorados` (
  `idTutorados` int(11) NOT NULL,
  `idSemestre` int(11) NOT NULL,
  `CodigoDocente` varchar(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tutorados`
--

INSERT INTO `tutorados` (`idTutorados`, `idSemestre`, `CodigoDocente`) VALUES
(1, 5, '1234'),
(2, 3, '51742'),
(3, 3, '22222222'),
(4, 5, '22222222');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`CodigoAlumno`),
  ADD KEY `RefEscuelaProfesional1` (`idEscuela`);

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`idArea`);

--
-- Indices de la tabla `detalle_formatog`
--
ALTER TABLE `detalle_formatog`
  ADD PRIMARY KEY (`IdDetalleFG`),
  ADD KEY `RefFormato_Grupal12` (`IdFormatoG`),
  ADD KEY `RefAlumno13` (`CodigoAlumno`);

--
-- Indices de la tabla `detalle_formatoi`
--
ALTER TABLE `detalle_formatoi`
  ADD PRIMARY KEY (`idDetalleFI`),
  ADD KEY `RefArea14` (`idArea`),
  ADD KEY `RefFormato_Individual15` (`idFormatoI`);

--
-- Indices de la tabla `detalle_tutorado`
--
ALTER TABLE `detalle_tutorado`
  ADD PRIMARY KEY (`idDetalle`),
  ADD KEY `RefAlumno5` (`CodigoAlumno`),
  ADD KEY `RefTutorados6` (`idTutorados`);

--
-- Indices de la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`CodigoDocente`),
  ADD KEY `RefEscuelaProfesional2` (`idEscuela`);

--
-- Indices de la tabla `escuelaprofesional`
--
ALTER TABLE `escuelaprofesional`
  ADD PRIMARY KEY (`idEscuela`);

--
-- Indices de la tabla `formato_grupal`
--
ALTER TABLE `formato_grupal`
  ADD PRIMARY KEY (`IdFormatoG`),
  ADD KEY `RefDocentes10` (`CodigoDocente`),
  ADD KEY `RefSemestre11` (`idSemestre`);

--
-- Indices de la tabla `formato_individual`
--
ALTER TABLE `formato_individual`
  ADD PRIMARY KEY (`idFormatoI`),
  ADD KEY `RefDetalle_FormatoG16` (`IdDetalleFG`);

--
-- Indices de la tabla `semestre`
--
ALTER TABLE `semestre`
  ADD PRIMARY KEY (`idSemestre`);

--
-- Indices de la tabla `tutorados`
--
ALTER TABLE `tutorados`
  ADD PRIMARY KEY (`idTutorados`),
  ADD KEY `RefSemestre3` (`idSemestre`),
  ADD KEY `RefDocentes4` (`CodigoDocente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `area`
--
ALTER TABLE `area`
  MODIFY `idArea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `detalle_formatog`
--
ALTER TABLE `detalle_formatog`
  MODIFY `IdDetalleFG` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_formatoi`
--
ALTER TABLE `detalle_formatoi`
  MODIFY `idDetalleFI` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_tutorado`
--
ALTER TABLE `detalle_tutorado`
  MODIFY `idDetalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `escuelaprofesional`
--
ALTER TABLE `escuelaprofesional`
  MODIFY `idEscuela` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `formato_grupal`
--
ALTER TABLE `formato_grupal`
  MODIFY `IdFormatoG` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `formato_individual`
--
ALTER TABLE `formato_individual`
  MODIFY `idFormatoI` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `semestre`
--
ALTER TABLE `semestre`
  MODIFY `idSemestre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tutorados`
--
ALTER TABLE `tutorados`
  MODIFY `idTutorados` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
