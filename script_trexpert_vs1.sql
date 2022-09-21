-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-09-2022 a las 16:21:44
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
-- Base de datos: `gymsoft`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarusuario` (`_tipoDoc` ENUM('CC','TI','TE','CE','PAS'), `_nombre` VARCHAR(50), `_apellido` VARCHAR(50), `_fechaNacimiento` DATE, `_edad` INT, `_direccion` VARCHAR(50), `_telefono` BIGINT, `_correo` VARCHAR(50), `_Tipo_sangre` ENUM('A+','A-','B+','B-','AB+','AB-','O+','O-'), `_EPS` ENUM('Sura','Cruz Blanca','Convida','Famisanar','Sánitas','Capital Salud','Compensar'), `_alergias` VARCHAR(100), `_estado` VARCHAR(9), `_sexo` VARCHAR(1), `_rol` VARCHAR(12), `_contraseña` VARCHAR(100), `_numDoc` BIGINT)   UPDATE usuario set tipoDoc = _tipoDoc, nombre = _nombre, apellido = _apellido, fechaNacimiento = _fechaNacimiento, edad = _edad, direccion = _direccion, telefono = _telefono, correo = _correo, Tipo_sangre = _Tipo_sangre, EPS = _EPS, alergias = _alergias, estado = _estado, sexo = _sexo, rol = _rol, contraseña = _contraseña where numDoc=_numDoc$$

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
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` bigint(20) NOT NULL,
  `idUsuario` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejercicio`
--

CREATE TABLE `ejercicio` (
  `idEjercicio` bigint(20) NOT NULL,
  `idTrabajo` bigint(20) DEFAULT NULL,
  `nombreEjercicio` varchar(50) DEFAULT NULL,
  `descripcionEjercicio` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrenador`
--

CREATE TABLE `entrenador` (
  `idEntrenador` bigint(20) NOT NULL,
  `idUsuario` bigint(20) DEFAULT NULL,
  `area` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medida`
--

CREATE TABLE `medida` (
  `idMedida` bigint(20) NOT NULL,
  `nombreMedida` varchar(50) DEFAULT NULL,
  `valor` float DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `tipoMedida` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plan_entrenamiento`
--

CREATE TABLE `plan_entrenamiento` (
  `idCliente` bigint(20) NOT NULL,
  `idTrabajo` bigint(20) DEFAULT NULL,
  `idMedida` bigint(20) DEFAULT NULL,
  `idEntrenador` bigint(20) DEFAULT NULL,
  `infoPlan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajo`
--

CREATE TABLE `trabajo` (
  `idTrabajo` bigint(20) NOT NULL,
  `series` int(11) DEFAULT NULL,
  `repeticiones` int(11) DEFAULT NULL,
  `descanso` float DEFAULT NULL,
  `peso` float DEFAULT NULL
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
(8, 1025140348, 'TI', 'Edwar ', 'Rojas', '2022-08-29', 18, 'Diagonal 59 sur #3B-72', 3227123006, 'edwarrojas2003@gmail.com', 'AB+', 'Sura', 'Ninguna', 'Inactivo', 'm', 'Cliente', 'Cliente', '2022-09-08 00:48:25'),
(9, 39765813, 'TI', 'Cristian', 'Avila', '2003-12-18', 18, 'Diagonal 59 sur #3B-72', 48138184, 'edwarrojas@gmail.com', 'A+', 'Sura', 'Ninguna', 'Inactivo', 'M', 'Cliente', 'edwar', '2022-09-08 03:46:48'),
(10, 9632148, 'CC', 'Myke', 'Towers', '2003-12-15', 19, 'Diagonal 60 sur #3B-72', 74123698, 'edwarrojas20008@gmail.com', 'AB+', 'Famisanar', 'Todas', 'Activo', 'F', 'Cliente', 'angelica', '2022-09-08 03:49:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valor`
--

CREATE TABLE `valor` (
  `idValor` bigint(20) NOT NULL,
  `idMedida` bigint(20) DEFAULT NULL,
  `idCliente` bigint(20) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `valor` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valoracionmedidascliente`
--

CREATE TABLE `valoracionmedidascliente` (
  `idValoracion` bigint(20) NOT NULL,
  `idMedida` bigint(20) DEFAULT NULL,
  `observacion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Indices de la tabla `ejercicio`
--
ALTER TABLE `ejercicio`
  ADD PRIMARY KEY (`idEjercicio`),
  ADD UNIQUE KEY `nombreEjercicio` (`nombreEjercicio`),
  ADD KEY `idTrabajo` (`idTrabajo`);

--
-- Indices de la tabla `entrenador`
--
ALTER TABLE `entrenador`
  ADD PRIMARY KEY (`idEntrenador`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Indices de la tabla `medida`
--
ALTER TABLE `medida`
  ADD PRIMARY KEY (`idMedida`);

--
-- Indices de la tabla `plan_entrenamiento`
--
ALTER TABLE `plan_entrenamiento`
  ADD PRIMARY KEY (`idCliente`),
  ADD KEY `idTrabajo` (`idTrabajo`),
  ADD KEY `idMedida` (`idMedida`),
  ADD KEY `idEntrenador` (`idEntrenador`);

--
-- Indices de la tabla `trabajo`
--
ALTER TABLE `trabajo`
  ADD PRIMARY KEY (`idTrabajo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`),
  ADD UNIQUE KEY `numDoc` (`numDoc`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- Indices de la tabla `valor`
--
ALTER TABLE `valor`
  ADD PRIMARY KEY (`idValor`),
  ADD KEY `idMedida` (`idMedida`),
  ADD KEY `idCliente` (`idCliente`);

--
-- Indices de la tabla `valoracionmedidascliente`
--
ALTER TABLE `valoracionmedidascliente`
  ADD PRIMARY KEY (`idValoracion`),
  ADD KEY `idMedida` (`idMedida`);

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
  MODIFY `idEntrenador` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `medida`
--
ALTER TABLE `medida`
  MODIFY `idMedida` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `trabajo`
--
ALTER TABLE `trabajo`
  MODIFY `idTrabajo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `valor`
--
ALTER TABLE `valor`
  MODIFY `idValor` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `valoracionmedidascliente`
--
ALTER TABLE `valoracionmedidascliente`
  MODIFY `idValoracion` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`);

--
-- Filtros para la tabla `ejercicio`
--
ALTER TABLE `ejercicio`
  ADD CONSTRAINT `ejercicio_ibfk_1` FOREIGN KEY (`idTrabajo`) REFERENCES `trabajo` (`idTrabajo`);

--
-- Filtros para la tabla `entrenador`
--
ALTER TABLE `entrenador`
  ADD CONSTRAINT `entrenador_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`);

--
-- Filtros para la tabla `plan_entrenamiento`
--
ALTER TABLE `plan_entrenamiento`
  ADD CONSTRAINT `plan_entrenamiento_ibfk_1` FOREIGN KEY (`idTrabajo`) REFERENCES `trabajo` (`idTrabajo`),
  ADD CONSTRAINT `plan_entrenamiento_ibfk_2` FOREIGN KEY (`idMedida`) REFERENCES `medida` (`idMedida`),
  ADD CONSTRAINT `plan_entrenamiento_ibfk_3` FOREIGN KEY (`idEntrenador`) REFERENCES `entrenador` (`idEntrenador`),
  ADD CONSTRAINT `plan_entrenamiento_ibfk_4` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`);

--
-- Filtros para la tabla `valor`
--
ALTER TABLE `valor`
  ADD CONSTRAINT `valor_ibfk_1` FOREIGN KEY (`idMedida`) REFERENCES `medida` (`idMedida`),
  ADD CONSTRAINT `valor_ibfk_2` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`);

--
-- Filtros para la tabla `valoracionmedidascliente`
--
ALTER TABLE `valoracionmedidascliente`
  ADD CONSTRAINT `valoracionmedidascliente_ibfk_1` FOREIGN KEY (`idMedida`) REFERENCES `medida` (`idMedida`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
