-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-12-2022 a las 01:17:44
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

CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarEjercicio` (`_idPlanFk` BIGINT, `_idClienteFK` BIGINT, `_idTipoEjercicioFK` BIGINT)   INSERT INTO ejercicio (idPlanFK, idClienteFk, idTipoEjercicioFK) VALUES (_idPlanFk, _idClienteFK, _idTipoEjercicioFK)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `consultarUsuario` (`_numDoc` BIGINT)   SELECT numDoc, tipoDoc, nombre, apellido, fechaNacimiento, edad, direccion, telefono, correo, Tipo_sangre, EPS, alergias, estado, sexo, rol, contraseña FROM usuario where numDoc = _numDoc$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarEjercicio` (`_idEjercicio` BIGINT)   DELETE FROM ejercicio WHERE idEjercicio = _idEjercicio$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `inhabilitarusuario` (`_numDoc` BIGINT)   UPDATE usuario SET estado = "Inactivo" where numDoc = _numDoc$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `listarUsuarios` ()   SELECT * FROM usuario$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `medida` (IN `_idPlanFK` BIGINT(20), IN `_CodigoFK` BIGINT(20), IN `_valorI` FLOAT, IN `_valorF` FLOAT, IN `_idUsuarioFk` BIGINT(20))   INSERT INTO medida (idPlanFK, idClienteFK, CodigoFK, valorI, valorF) SELECT _idPlanFK, idCliente, _CodigoFK , _valorI, _valorF FROM Cliente WHERE idUsuarioFK = _idUsuarioFk$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `nuevousuario` (`_numDoc` BIGINT, `_tipoDoc` ENUM('CC','TI','TE','CE','PAS'), `_nombre` VARCHAR(50), `_apellido` VARCHAR(50), `_fechaNacimiento` DATE, `_edad` INT, `_direccion` VARCHAR(50), `_telefono` BIGINT, `_correo` VARCHAR(50), `_Tipo_sangre` ENUM('A+','A-','B+','B-','AB+','AB-','O+','O-'), `_EPS` ENUM('Sura','Cruz Blanca','Convida','Famisanar','Sánitas','Capital Salud','Compensar'), `_alergias` VARCHAR(100), `_estado` VARCHAR(9), `_sexo` ENUM('M','F'), `_rol` VARCHAR(12), `_contraseña` VARCHAR(100))   INSERT INTO usuario(numDoc, tipoDoc, nombre, apellido, fechaNacimiento, edad, direccion, telefono, correo, Tipo_sangre, EPS, alergias, estado, sexo, rol,  contraseña) 

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

CREATE DEFINER=`root`@`localhost` PROCEDURE `registrarMedida` (`_idPlanFK` BIGINT, `_idClienteFK` BIGINT, `_CodigoFK` BIGINT, `_valorI` FLOAT)   INSERT INTO medida (idPlanFK,idClienteFK,CodigoFK,valorI) VALUES (_idPlanFK, _idClienteFK, _CodigoFK, _valorI)$$

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
(66, 10181989, 'TI', 'Edwar', 'Rojas', '0000-00-00', 18, 'Diagonal', 328181, 'edwarpt@gmail.com', 'A-', 'Convida', 'Ninguna', 'Activo', 'M', 'Entrenador', 'edwar123', '2022-11-21 12:56:46'),
(22, 48284848, 'CC', 'Edwar', 'Sanchez', '2022-08-28', 18, 'Diagonal 59 sur #3B-72', 3368855555, 'edwarrojas2003@gmail.com', 'B+', 'Sura', 'Ninguna', 'Activo', 'M', 'Entrenador', 'asdfgh', '2022-09-22 00:44:28'),
(11, 76567876, 'CC', 'Edwar', 'Rojas', '2022-09-06', 18, 'Diagonal 59 sur #3B-72', 587654, 'plksid03@gmail.com', 'A+', 'Cruz Blanca', 'Todas', 'Activo', 'M', 'Entrenador', 'asdfghjklÃ±', '2022-09-19 16:59:44'),
(16, 1025140348, 'CC', 'Edwar', 'Rojas', '2022-08-30', 18, 'Diagonal 59 sur #3B-72', 39841236, 'dg@gmail.com', 'A-', 'Sura', 'Ninguna', 'Activo', 'M', 'Entrenador', 'sdfgh', '2022-09-21 14:20:48'),
(36, 1025320898, 'CC', 'Daniel Fernando ', 'Sierra Betancourt', '2004-09-12', 18, 'Carrera 137a #132f-09', 3102359610, 'dfsierra898@misena.edu.co', 'O+', 'Sura', 'Ibuprofeno', 'Activo', 'M', 'Cliente', 'danielsierra', '2022-10-20 07:44:11'),
(46, 13216848498, 'CC', 'Maria', 'Colorado', '2022-10-03', 24, 'Diagonal 59 sur #3B-72', 3235647223, 'asd@gmail.com', 'A+', 'Famisanar', 'Todas', 'Activo', 'F', 'Cliente', 'sdfghjklÃ±', '2022-10-23 16:09:01'),
(91, 48684619846, 'CC', 'Elver', 'Towers baby', '2022-11-09', 28, 'Diagonal 59 sur #8', 4861846, 'ahincapie845@misena.edu.co', 'A+', 'Convida', 'Todas', 'Activo', 'F', 'Cliente', '[B@2c18e66c', '2022-11-21 13:28:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` bigint(20) NOT NULL,
  `idUsuarioFK` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idCliente`, `idUsuarioFK`) VALUES
(1, 35),
(3, 38),
(4, 39),
(5, 40),
(6, 43),
(8, 45),
(9, 46),
(17, 76),
(18, 77),
(19, 78),
(20, 79),
(21, 80),
(29, 90);

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

--
-- Volcado de datos para la tabla `ejercicio`
--

INSERT INTO `ejercicio` (`idEjercicio`, `idPlanFK`, `idClienteFk`, `idTipoEjercicioFK`) VALUES
(13, 7, 9, 1),
(15, 7, 9, 3),
(16, 9, 3, 3),
(17, 11, 18, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrenador`
--

CREATE TABLE `entrenador` (
  `idEntrenador` bigint(20) NOT NULL,
  `idUsuarioFK` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `entrenador`
--

INSERT INTO `entrenador` (`idEntrenador`, `idUsuarioFK`) VALUES
(21, 16),
(60, 66);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medida`
--

CREATE TABLE `medida` (
  `idMedida` bigint(20) NOT NULL,
  `idPlanFK` bigint(20) NOT NULL,
  `idClienteFK` bigint(20) NOT NULL,
  `CodigoFK` bigint(20) NOT NULL,
  `valorI` float NOT NULL,
  `valorF` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `medida`
--

INSERT INTO `medida` (`idMedida`, `idPlanFK`, `idClienteFK`, `CodigoFK`, `valorI`, `valorF`) VALUES
(65, 7, 9, 1, 8, 0),
(66, 7, 9, 2, 25, 0),
(67, 7, 9, 1, 8, 0),
(68, 7, 9, 2, 25, 0),
(69, 7, 9, 1, 8, 0),
(70, 7, 9, 2, 25, 0),
(71, 9, 3, 1, 17, 0),
(72, 9, 3, 7, 36, 0),
(73, 7, 9, 2, 15, 0),
(74, 7, 9, 6, 25, 0),
(75, 7, 9, 49, 25, 0);

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

--
-- Volcado de datos para la tabla `plan_entrenamiento`
--

INSERT INTO `plan_entrenamiento` (`idPlan`, `idClienteFk`, `idEntrenadorFK`, `observaciones`, `fechaCreacion`) VALUES
(6, 9, 21, 'Creación de plan de entrenamiento ', '2022-11-14 19:30:37'),
(7, 9, 60, 'Creación de plan de entrenamiento', '2022-11-19 22:14:21'),
(9, 3, 60, 'Generacion de plan de entrenamiento', '2022-11-21 13:17:49'),
(10, 4, 60, 'Creacionde  plan de entrenamiento', '2022-12-04 12:38:39'),
(11, 18, 60, 'Creacion de plan towers', '2022-12-04 12:45:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_Rol` int(11) NOT NULL,
  `rolTipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_Rol`, `rolTipo`) VALUES
(1, 'Entrenador'),
(2, 'Cliente');

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
  `peso` float NOT NULL,
  `foto` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipoejercicio`
--

INSERT INTO `tipoejercicio` (`idTipoEjercicio`, `nombreEjercicio`, `descripcionEjercicio`, `series`, `repeticiones`, `descanso`, `peso`, `foto`) VALUES
(1, 'Remo menton ', 'Permite la hipertrofia', 4, 4, 5, 50, NULL),
(3, 'Encogimiento', 'Aumenta la masa muscular de los Triceps', 10, 4, 45, 5, NULL),
(4, 'Press militar', 'Mejora la forma de tu espalda', 8, 20, 45, 60, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipomedida`
--

CREATE TABLE `tipomedida` (
  `Codigo` bigint(20) NOT NULL,
  `nombreParte` varchar(50) NOT NULL,
  `categoria` enum('Tren superior','Tren Inferior') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipomedida`
--

INSERT INTO `tipomedida` (`Codigo`, `nombreParte`, `categoria`) VALUES
(1, 'Muslo Derecho', 'Tren Inferior'),
(2, 'Muslo Izquierdo', 'Tren Inferior'),
(3, 'Pierna Derecha', 'Tren Inferior'),
(4, 'Pierna Izquierda', 'Tren Inferior'),
(5, 'Cuello ', 'Tren superior'),
(6, 'Biacromial', 'Tren superior'),
(7, 'Toraxico', 'Tren superior'),
(8, 'Espalda', 'Tren superior'),
(9, 'Abdominal', 'Tren superior'),
(10, 'Biliaco', 'Tren superior'),
(11, 'Bitrocanterico', 'Tren superior'),
(12, 'Bicep Derecho', 'Tren superior'),
(13, 'Bicep Izquierdo', 'Tren superior'),
(14, 'Antebrazo derecho', 'Tren superior'),
(15, 'Antebrazo Izquierdo', 'Tren superior'),
(16, 'Muneca derecha', 'Tren superior'),
(17, 'muneca izquierda', 'Tren superior');

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
  `sexo` enum('M','F') DEFAULT NULL,
  `rol` varchar(12) NOT NULL,
  `contraseña` varchar(100) NOT NULL,
  `fechaIngreso` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `numDoc`, `tipoDoc`, `nombre`, `apellido`, `fechaNacimiento`, `edad`, `direccion`, `telefono`, `correo`, `Tipo_sangre`, `EPS`, `alergias`, `estado`, `sexo`, `rol`, `contraseña`, `fechaIngreso`) VALUES
(16, 1025140348, 'CC', 'Edwar', 'Rojas', '2022-08-30', 18, 'Diagonal 59 sur #3B-72', 39841236, 'dg@gmail.com', 'A-', 'Sura', 'Ninguna', 'Inactivo', 'M', 'Entrenador', 'sdfgh', '2022-09-21 03:43:56'),
(35, 4849614896, 'CC', 'Juan', 'Sanchez', '2022-09-14', 20, 'Diagonal 59 sur #3B-72', 36984123, 'jas2003@gmail.com', 'A+', 'Cruz Blanca', 'ninguna', 'Activo', 'F', 'Cliente', 'ctrvbyiunoiuyt', '2022-09-25 16:05:50'),
(38, 3164798, 'CC', 'Mike', 'Towers baby', '2000-12-31', 18, 'Diagonal 59 sur #3B-72', 3216448, 'Smith@gmail.com', 'A+', 'Sánitas', 'Ninguna', 'Activo', 'M', 'Cliente', 'edwar', '2022-09-26 13:10:30'),
(39, 46844988, 'CC', 'Mike', 'Towers baby', '2018-10-17', 28, 'Diagonal 59 sur #3B-72', 6184688161, 'Smit22@gmail.com', 'A+', 'Famisanar', 'Ibuprofeno', 'Activo', 'M', 'Cliente', 'edwar', '2022-09-26 13:31:26'),
(40, 2281848849, 'CC', 'Edwar', 'Sanchez', '2022-09-26', 1, 'Diagonal 59 sur #3B-72', 45765434567, 'rojas@gmail.com', 'A+', 'Sánitas', 'Ninguna', 'Activo', 'M', 'Cliente', '2346654323456', '2022-09-26 13:34:01'),
(43, 1031801387, 'CC', 'Juan Diego', 'Betancourth Ortiz', '2004-05-21', 18, 'Diagonal 100D sur #1D-87', 3138964354, 'jdbetancourth@misena.edu.co', 'B+', 'Convida', 'Gatos', 'Activo', 'M', 'Cliente', 'juandiegopt', '2022-09-26 14:27:36'),
(45, 1032797548, 'CC', 'Angelica', 'Hincapie', '2004-09-20', 18, 'Diagonal 62 #3 - 26', 3227123006, 'ah123@gmail.com', 'O+', 'Sánitas', 'Mani', 'Activo', 'F', 'Cliente', 'edwar123', '2022-10-21 20:39:51'),
(46, 13216848498, 'CC', 'Maria', 'Colorado', '2022-10-03', 24, 'Diagonal 59 sur #3B-72', 3235647223, 'asd@gmail.com', 'A+', 'Famisanar', 'Todas', 'Activo', 'F', 'Cliente', 'sd', '2022-10-21 20:47:41'),
(66, 10181989, 'TI', 'Edwar', 'Rojas', '0000-00-00', 18, 'Diagonal', 328181, 'edwar@gmail.com', 'A-', 'Convida', 'Ninguna', 'Activo', 'M', 'Entrenador', 'edwar123', '2022-10-23 14:49:49'),
(76, 8496132, 'CC', 'Edwar', 'Rojas', '2022-11-16', 19, 'Diagonal 59 sur #3B-71', 48613, 'edwarrojas2003@gmail.com', 'A+', 'Famisanar', 'Todas', 'Activo', 'M', 'Cliente', '[B@60c0e47c', '2022-11-14 17:46:09'),
(77, 48132, 'CC', 'Edwar', 'Towers baby', '2022-11-01', 28, 'Diagonal 60 sur #3B-71', 8414681486, 'angelicahincapie123@gmail.com', 'A+', 'Sura', 'Ninguna', 'Activo', 'F', 'Cliente', '[B@5d748496', '2022-11-14 17:48:42'),
(78, 348498498, 'CC', 'Juan Diego', 'Betancourth Ortiz', '2022-11-09', 18, 'Diagonal 98 sur #3B-71', 4896132, 'juandiegoletgo@gmail.com', 'A+', 'Cruz Blanca', 'ninguna', 'Activo', 'M', 'Cliente', '[B@5450ce82', '2022-11-14 17:53:29'),
(79, 84186496, 'CE', 'Daniel', 'Sierra', '2022-11-02', 24, 'Diagonal 59 sur #3', 41486468, 'dfsierra898@misena.edu.co', 'AB+', 'Famisanar', 'Ibuprofeno', 'Activo', 'M', 'Cliente', '[B@437385ee', '2022-11-14 18:06:52'),
(80, 11046284, 'CC', 'Lider', 'Gaindo', '2022-02-14', 18, 'Diagonal 9 sur #3B-72', 3222222222, 'leidergalindo2017@gmail.com', 'A+', 'Compensar', 'ninguna', 'Activo', 'M', 'Cliente', '[B@39d05f26', '2022-11-14 18:45:24'),
(81, 188866312, 'CC', 'Milena', 'Aristizabal ', '2022-02-14', 17, 'Diagonal 5 sur #3', 516849, 'milena05aristizabal@gmail.com', 'A+', 'Sánitas', 'Ninguna', 'Activo', 'F', 'Cliente', '[B@5e29b830', '2022-11-14 18:50:08'),
(90, 1033818675, 'CC', 'Cindy Dayana ', 'AndapiÃ±a Montano ', '2022-01-15', 23, 'Diagonal 1 sur #2', 98461648946, 'cdandapia5@misena.edu.co', 'B+', 'Convida', 'Todas', 'Activo', 'F', 'Cliente', '[B@1bf9d89b', '2022-11-15 20:23:38'),
(91, 48684619846, 'CC', 'Elver', 'Roj', '2022-11-09', 28, 'Diagonal 59 sur #8', 4861846, 'ahincapie845@misena.edu.co', 'A+', 'Convida', 'Todas', 'Activo', 'F', 'Cliente', '[B@2c18e66c', '2022-11-15 20:27:21'),
(93, 486148961, 'CC', 'Mike', 'Towers baby', '2022-11-09', 1, 'Diagonal 59 sur #2X', 1234556789, 'edrojas843@misena.edu.co', 'A+', 'Sánitas', 'Daniel', 'Activo', 'M', 'Cliente', 'edwar1234', '2022-11-21 03:12:42');

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
CREATE TRIGGER `Usuario_rol` AFTER INSERT ON `usuario` FOR EACH ROW BEGIN

IF new.rol = "Cliente" THEN
insert into usuario_rol(id_Rol, idUsuario) values (2, new.idUsuario);
    ELSE IF new.rol = "Entrenador" THEN 
INSERT INTO usuario_rol(id_Rol, idUsuario) values (1, new.idUsuario);

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_rol`
--

CREATE TABLE `usuario_rol` (
  `id_Rol` int(11) NOT NULL,
  `idUsuario` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario_rol`
--

INSERT INTO `usuario_rol` (`id_Rol`, `idUsuario`) VALUES
(2, 76),
(2, 77),
(2, 78),
(2, 79),
(2, 80),
(2, 81),
(2, 46),
(1, 66),
(2, 90),
(2, 91),
(2, 93),
(2, 38),
(1, 16);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actualizacionesusuario`
--
ALTER TABLE `actualizacionesusuario`
  ADD UNIQUE KEY `numDoc` (`numDoc`),
  ADD UNIQUE KEY `telefono` (`telefono`),
  ADD UNIQUE KEY `correo` (`correo`),
  ADD UNIQUE KEY `numDoc_2` (`numDoc`);

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
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_Rol`);

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
-- Indices de la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD KEY `id_Rol` (`id_Rol`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `ejercicio`
--
ALTER TABLE `ejercicio`
  MODIFY `idEjercicio` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `entrenador`
--
ALTER TABLE `entrenador`
  MODIFY `idEntrenador` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `medida`
--
ALTER TABLE `medida`
  MODIFY `idMedida` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de la tabla `plan_entrenamiento`
--
ALTER TABLE `plan_entrenamiento`
  MODIFY `idPlan` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_Rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipoejercicio`
--
ALTER TABLE `tipoejercicio`
  MODIFY `idTipoEjercicio` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tipomedida`
--
ALTER TABLE `tipomedida`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

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

--
-- Filtros para la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD CONSTRAINT `usuario_rol_ibfk_1` FOREIGN KEY (`id_Rol`) REFERENCES `rol` (`id_Rol`),
  ADD CONSTRAINT `usuario_rol_ibfk_2` FOREIGN KEY (`id_Rol`) REFERENCES `rol` (`id_Rol`),
  ADD CONSTRAINT `usuario_rol_ibfk_3` FOREIGN KEY (`id_Rol`) REFERENCES `rol` (`id_Rol`),
  ADD CONSTRAINT `usuario_rol_ibfk_4` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
