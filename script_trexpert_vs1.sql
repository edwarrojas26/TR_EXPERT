-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-09-2022 a las 18:34:46
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
  `idUsuarioFK` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejercicios`
--

CREATE TABLE `ejercicios` (
  `idEjercicio` bigint(20) NOT NULL,
  `nombreEjercicio` varchar(50) DEFAULT NULL,
  `descripcionEjercicio` varchar(100) NOT NULL,
  `series` int(11) NOT NULL,
  `repeticiones` int(11) NOT NULL,
  `descanso` float NOT NULL,
  `peso` float NOT NULL
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medida`
--

CREATE TABLE `medida` (
  `idMedida` bigint(20) NOT NULL,
  `CodigoFK` bigint(20) DEFAULT NULL,
  `valorI` float DEFAULT NULL,
  `valorF` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plan_entrenamiento`
--

CREATE TABLE `plan_entrenamiento` (
  `idClienteFk` bigint(20) DEFAULT NULL,
  `idMedidaFK` bigint(20) NOT NULL,
  `idEjercicioFK` bigint(20) DEFAULT NULL,
  `idEntrenador` bigint(20) DEFAULT NULL,
  `oservaciones` varchar(100) DEFAULT NULL,
  `fechaCreacion` timestamp NOT NULL DEFAULT current_timestamp()
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
(1, 1025140348, 'CC', 'Edwar', 'Rojas', '2003-12-18', 18, 'Diagonal 59 sur #3B-72', 3235647223, 'edwarrojas2003@gmail.com', 'A+', 'Sánitas', 'Ninguna', 'Activo', 'M', 'Cliente', 'edwar', '2022-09-12 06:37:56'),
(2, 39765813, 'CC', 'Ana', 'Vargas', '1955-10-29', 66, 'Diagonal 59 sur #3B-72', 3178144300, 'edwarrojas@gmail.com', 'A-', 'Famisanar', 'Todas', 'Inactivo', 'M', 'Cliente', 'asdfghjklÃ±', '2022-09-12 06:51:01'),
(3, 19348706, 'TI', 'Mike', 'Galindo', '1995-03-15', 28, 'Diagonal 59 sur #3B-72', 3227123006, 'edwar@gmail.com', 'A-', 'Convida', 'Ninguna', 'Activo', 'M', 'Cliente', 'dfghjklÃ±', '2022-09-12 07:03:43');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indices de la tabla `ejercicios`
--
ALTER TABLE `ejercicios`
  ADD PRIMARY KEY (`idEjercicio`),
  ADD UNIQUE KEY `nombreEjercicio` (`nombreEjercicio`);

--
-- Indices de la tabla `entrenador`
--
ALTER TABLE `entrenador`
  ADD PRIMARY KEY (`idEntrenador`);

--
-- Indices de la tabla `medida`
--
ALTER TABLE `medida`
  ADD PRIMARY KEY (`idMedida`);

--
-- Indices de la tabla `plan_entrenamiento`
--
ALTER TABLE `plan_entrenamiento`
  ADD PRIMARY KEY (`idMedidaFK`);

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
-- AUTO_INCREMENT de la tabla `ejercicios`
--
ALTER TABLE `ejercicios`
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
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
