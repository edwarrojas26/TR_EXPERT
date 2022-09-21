-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-09-2022 a las 17:51:29
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `trexpert`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarusuario` (`_tipoDoc` ENUM('CC','TI','TE','CE','PAS'), `_nombre` VARCHAR(50), `_apellido` VARCHAR(50), `_fechaNacimiento` DATE, `_edad` INT, `_direccion` VARCHAR(50), `_telefono` BIGINT, `_correo` VARCHAR(50), `_Tipo_sangre` ENUM('A+','A-','B+','B-','AB+','AB-','O+','O-'), `_EPS` ENUM('Sura','Cruz Blanca','Convida','Famisanar','Sánitas','Capital Salud','Compensar'), `_alergias` VARCHAR(100), `_estado` VARCHAR(9), `_sexo` VARCHAR(1), `_rol` VARCHAR(12), `_contraseña` VARCHAR(100), `_numDoc` BIGINT)   UPDATE usuario set tipoDoc = _tipoDoc, nombre = _nombre, apellido = _apellido, fechaNacimiento = _fechaNacimiento, edad = _edad, direccion = _direccion, telefono = _telefono, correo = _correo, Tipo_sangre = _Tipo_sangre, EPS = _EPS, alergias = _alergias, estado = _estado, sexo = _sexo, rol = _rol, contraseña = _contraseña where numDoc=_numDoc$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `AREA` (`_area` VARCHAR(40))   INSERT INTO entrenador (area) VALUES (_area)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `consultarUsuario` (`_numDoc` BIGINT)   SELECT numDoc, tipoDoc, nombre, apellido, fechaNacimiento, edad, direccion, telefono, correo, Tipo_sangre, EPS, alergias, estado, sexo, rol, contraseña FROM usuario where numDoc = _numDoc$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `inhabilitarusuario` (`_numDoc` BIGINT)   UPDATE usuario SET estado = "Inactivo" where numDoc = _numDoc$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `listarUsuarios` ()   SELECT numDoc, tipoDoc, nombre, apellido, fechaNacimiento, edad, direccion, telefono, correo, Tipo_sangre, EPS, alergias, estado, sexo, rol FROM usuario$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `nuevousuario` (`_numDoc` BIGINT, `_tipoDoc` ENUM('CC','TI','TE','CE','PAS'), `_nombre` VARCHAR(50), `_apellido` VARCHAR(50), `_fechaNacimiento` DATE, `_edad` INT, `_direccion` VARCHAR(50), `_telefono` BIGINT, `_correo` VARCHAR(50), `_Tipo_sangre` ENUM('A+','A-','B+','B-','AB+','AB-','O+','O-'), `_EPS` ENUM('Sura','Cruz Blanca','Convida','Famisanar','Sánitas','Capital Salud','Compensar'), `_alergias` VARCHAR(100), `_estado` VARCHAR(9), `_sexo` VARCHAR(1), `_rol` VARCHAR(12), `_contraseña` VARCHAR(100))   INSERT INTO usuario(
		numDoc, 
		tipoDoc, 
		nombre, 
		apellido, 
		fechaNacimiento, 
		edad, 
		direccion,
		telefono,
		correo,
		Tipo_sangre,
		EPS,
		alergias,
		estado,
		sexo,
		rol, 
		contraseña) 

VALUES (
		_numDoc, 
		_tipoDoc, 
		_nombre, 
		_apellido, 
		_fechaNacimiento, 
		_edad, 
		_direccion, 
		_telefono, 
		_correo, 
		_Tipo_sangre, 
		_EPS, 
		_alergias, 
		_estado, 
		_sexo, 
		_rol, 
		_contraseña)$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actualizacionesusuario`
--

CREATE TABLE `actualizacionesusuario` (
  `idUsuario` bigint(20) NOT NULL,
  `numDoc` bigint(20) NOT NULL,
  `tipoDoc` enum('CC','TI','TE','CE','PAS') NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `edad` int(11) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` bigint(20) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `Tipo_sangre` enum('A+','A-','B+','B-','AB+','AB-','O+','O-') NOT NULL,
  `EPS` enum('Sura','Cruz Blanca','Convida','Famisanar','Sánitas','Capital Salud','Compensar') NOT NULL,
  `alergias` varchar(100) NOT NULL,
  `estado` varchar(9) NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `rol` varchar(12) NOT NULL,
  `contraseña` varchar(100) NOT NULL,
  `fechaModificaciones` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `actualizacionesusuario`
--

INSERT INTO `actualizacionesusuario` (`idUsuario`, `numDoc`, `tipoDoc`, `nombre`, `apellido`, `fechaNacimiento`, `edad`, `direccion`, `telefono`, `correo`, `Tipo_sangre`, `EPS`, `alergias`, `estado`, `sexo`, `rol`, `contraseña`, `fechaModificaciones`) VALUES
(11, 76567876, 'CC', 'Edwar', 'Rojas', '2022-09-06', 18, 'Diagonal 59 sur #3B-72', 587654, 'plksid03@gmail.com', 'A+', 'Cruz Blanca', 'Todas', 'Activo', 'M', 'Entrenador', 'asdfghjklÃ±', '2022-09-19 16:59:44'),
(16, 1025140348, 'CC', 'Edwar', 'Rojas', '2022-08-30', 18, 'Diagonal 59 sur #3B-72', 39841236, 'dg@gmail.com', 'A-', 'Sura', 'Ninguna', 'Activo', 'M', 'Entrenador', 'sdfgh', '2022-09-21 14:20:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` bigint(20) NOT NULL,
  `idUsuarioFK` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejercicio`
--

CREATE TABLE `ejercicio` (
  `idEjercicio` bigint(20) NOT NULL,
  `idPlanFK` bigint(20) NOT NULL,
  `idClienteFk` bigint(20) NOT NULL,
  `idTipoEjercicioFK` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrenador`
--

CREATE TABLE `entrenador` (
  `idEntrenador` bigint(20) NOT NULL,
  `idUsuarioFK` bigint(20) NOT NULL,
  `area` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `entrenador`
--

INSERT INTO `entrenador` (`idEntrenador`, `idUsuarioFK`, `area`) VALUES
(21, 16, ''),
(28, 22, '');

--
-- Disparadores `entrenador`
--
DELIMITER $$
CREATE TRIGGER `Area` AFTER INSERT ON `entrenador` FOR EACH ROW BEGIN
IF new.idUsuarioFk = usuario.idUsuario  THEN
INSERT INTO Entrenador(area) values (new.area);
END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medida`
--

CREATE TABLE `medida` (
  `idMedida` bigint(20) NOT NULL,
  `idPlanFK` bigint(20) NOT NULL,
  `idClienteFK` bigint(20) NOT NULL,
  `CodigoFK` bigint(20) DEFAULT NULL,
  `valorI` float DEFAULT NULL,
  `valorF` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plan_entrenamiento`
--

CREATE TABLE `plan_entrenamiento` (
  `idPlan` bigint(20) NOT NULL,
  `idClienteFk` bigint(20) NOT NULL,
  `idEntrenadorFK` bigint(20) DEFAULT NULL,
  `observaciones` varchar(100) DEFAULT NULL,
  `fechaCreacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoejercicio`
--

CREATE TABLE `tipoejercicio` (
  `idTipoEjercicio` bigint(20) NOT NULL,
  `nombreEjercicio` varchar(50) DEFAULT NULL,
  `descripcionEjercicio` varchar(100) NOT NULL,
  `series` int(11) NOT NULL,
  `repeticiones` int(11) NOT NULL,
  `descanso` float NOT NULL,
  `peso` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipomedida`
--

CREATE TABLE `tipomedida` (
  `Codigo` bigint(20) NOT NULL,
  `nombreParte` varchar(50) NOT NULL,
  `categoria` enum('Tren superior','Tren Inferior','saludAlimentacion','factorRiesgo') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` bigint(20) NOT NULL,
  `numDoc` bigint(20) NOT NULL,
  `tipoDoc` enum('CC','TI','TE','CE','PAS') NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `edad` int(11) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` bigint(20) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `Tipo_sangre` enum('A+','A-','B+','B-','AB+','AB-','O+','O-') NOT NULL,
  `EPS` enum('Sura','Cruz Blanca','Convida','Famisanar','Sánitas','Capital Salud','Compensar') NOT NULL,
  `alergias` varchar(100) NOT NULL,
  `estado` varchar(9) NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `rol` varchar(12) NOT NULL,
  `contraseña` varchar(100) NOT NULL,
  `fechaIngreso` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `numDoc`, `tipoDoc`, `nombre`, `apellido`, `fechaNacimiento`, `edad`, `direccion`, `telefono`, `correo`, `Tipo_sangre`, `EPS`, `alergias`, `estado`, `sexo`, `rol`, `contraseña`, `fechaIngreso`) VALUES
(16, 1025140348, 'CC', 'Edwar', 'Rojas', '2022-08-30', 18, 'Diagonal 59 sur #3B-72', 39841236, 'dg@gmail.com', 'A-', 'Sura', 'Ninguna', 'Inactivo', 'M', 'Entrenador', 'sdfgh', '2022-09-21 03:43:56'),
(22, 48284848, 'CC', 'Edwar', 'Sanchez', '2022-08-28', 18, 'Diagonal 59 sur #3B-72', 3368855555, 'edwarrojas2003@gmail.com', 'B+', 'Sura', 'Ninguna', 'Activo', 'M', 'Entrenador', 'asdfgh', '2022-09-21 13:36:00');

--
-- Disparadores `usuario`
--
DELIMITER $$
CREATE TRIGGER `Usuario` AFTER INSERT ON `usuario` FOR EACH ROW BEGIN
IF new.rol = "Cliente" THEN
insert into cliente(idUsuarioFk) values (new.idUsuario);
	ELSE IF new.rol = "Entrenador" THEN 
INSERT INTO Entrenador(idUsuarioFk) values (new.idUsuario);

END IF;
END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `usuarios_despues_actualizar` BEFORE UPDATE ON `usuario` FOR EACH ROW BEGIN
insert into actualizacionesusuario(idUsuario, numDoc, tipoDoc, nombre, apellido, fechaNacimiento, edad, direccion, telefono, correo, Tipo_sangre, EPS, alergias, estado, sexo, rol, contraseña) values (old.idUsuario, old.numDoc, old.tipoDoc, old.nombre, old.apellido, old.fechaNacimiento, old.edad, old.direccion, old.telefono, old.correo, old.Tipo_sangre, old.EPS, old.alergias, old.estado, old.sexo, old.rol, old.contraseña);
END
$$
DELIMITER ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actualizacionesusuario`
--
ALTER TABLE `actualizacionesusuario`
  ADD UNIQUE KEY `numDoc` (`numDoc`),
  ADD UNIQUE KEY `telefono` (`telefono`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`),
  ADD KEY `idUsuarioFK` (`idUsuarioFK`);

--
-- Indices de la tabla `ejercicio`
--
ALTER TABLE `ejercicio`
  ADD PRIMARY KEY (`idEjercicio`,`idClienteFk`,`idPlanFK`),
  ADD KEY `idPlanFK` (`idPlanFK`),
  ADD KEY `idClienteFk` (`idClienteFk`),
  ADD KEY `idTipoEjercicioFK` (`idTipoEjercicioFK`);

--
-- Indices de la tabla `entrenador`
--
ALTER TABLE `entrenador`
  ADD PRIMARY KEY (`idEntrenador`),
  ADD KEY `idUsuarioFK` (`idUsuarioFK`);

--
-- Indices de la tabla `medida`
--
ALTER TABLE `medida`
  ADD PRIMARY KEY (`idMedida`,`idPlanFK`,`idClienteFK`),
  ADD KEY `idPlanFK` (`idPlanFK`),
  ADD KEY `idClienteFK` (`idClienteFK`),
  ADD KEY `CodigoFK` (`CodigoFK`);

--
-- Indices de la tabla `plan_entrenamiento`
--
ALTER TABLE `plan_entrenamiento`
  ADD PRIMARY KEY (`idPlan`,`idClienteFk`),
  ADD KEY `idClienteFk` (`idClienteFk`),
  ADD KEY `idEntrenadorFK` (`idEntrenadorFK`);

--
-- Indices de la tabla `tipoejercicio`
--
ALTER TABLE `tipoejercicio`
  ADD PRIMARY KEY (`idTipoEjercicio`),
  ADD UNIQUE KEY `nombreEjercicio` (`nombreEjercicio`);

--
-- Indices de la tabla `tipomedida`
--
ALTER TABLE `tipomedida`
  ADD PRIMARY KEY (`Codigo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`),
  ADD UNIQUE KEY `numDoc` (`numDoc`),
  ADD UNIQUE KEY `telefono` (`telefono`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ejercicio`
--
ALTER TABLE `ejercicio`
  MODIFY `idEjercicio` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `entrenador`
--
ALTER TABLE `entrenador`
  MODIFY `idEntrenador` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `medida`
--
ALTER TABLE `medida`
  MODIFY `idMedida` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `plan_entrenamiento`
--
ALTER TABLE `plan_entrenamiento`
  MODIFY `idPlan` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipoejercicio`
--
ALTER TABLE `tipoejercicio`
  MODIFY `idTipoEjercicio` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipomedida`
--
ALTER TABLE `tipomedida`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`idUsuarioFK`) REFERENCES `usuario` (`idUsuario`);

--
-- Filtros para la tabla `ejercicio`
--
ALTER TABLE `ejercicio`
  ADD CONSTRAINT `ejercicio_ibfk_1` FOREIGN KEY (`idPlanFK`) REFERENCES `plan_entrenamiento` (`idPlan`),
  ADD CONSTRAINT `ejercicio_ibfk_2` FOREIGN KEY (`idClienteFk`) REFERENCES `plan_entrenamiento` (`idClienteFk`),
  ADD CONSTRAINT `ejercicio_ibfk_3` FOREIGN KEY (`idTipoEjercicioFK`) REFERENCES `tipoejercicio` (`idTipoEjercicio`);

--
-- Filtros para la tabla `entrenador`
--
ALTER TABLE `entrenador`
  ADD CONSTRAINT `entrenador_ibfk_1` FOREIGN KEY (`idUsuarioFK`) REFERENCES `usuario` (`idUsuario`);

--
-- Filtros para la tabla `medida`
--
ALTER TABLE `medida`
  ADD CONSTRAINT `medida_ibfk_1` FOREIGN KEY (`idPlanFK`) REFERENCES `plan_entrenamiento` (`idPlan`),
  ADD CONSTRAINT `medida_ibfk_2` FOREIGN KEY (`idClienteFK`) REFERENCES `plan_entrenamiento` (`idClienteFk`),
  ADD CONSTRAINT `medida_ibfk_3` FOREIGN KEY (`CodigoFK`) REFERENCES `tipomedida` (`Codigo`);

--
-- Filtros para la tabla `plan_entrenamiento`
--
ALTER TABLE `plan_entrenamiento`
  ADD CONSTRAINT `plan_entrenamiento_ibfk_1` FOREIGN KEY (`idClienteFk`) REFERENCES `cliente` (`idCliente`),
  ADD CONSTRAINT `plan_entrenamiento_ibfk_2` FOREIGN KEY (`idEntrenadorFK`) REFERENCES `entrenador` (`idEntrenador`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
