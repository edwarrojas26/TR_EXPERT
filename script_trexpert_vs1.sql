-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-06-2022 a las 01:37:31
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.9

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` bigint(20) NOT NULL,
  `numDoc` int(11) DEFAULT NULL
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
  `numDoc` int(11) DEFAULT NULL,
  `area` varchar(40) DEFAULT NULL
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
  `idPlan` bigint(20) NOT NULL,
  `idTrabajo` bigint(20) DEFAULT NULL,
  `idMedida` bigint(20) DEFAULT NULL,
  `idEntrenador` bigint(20) DEFAULT NULL,
  `idCliente` bigint(20) DEFAULT NULL,
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
  `numDoc` int(11) NOT NULL,
  `tipoDoc` varchar(5) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `fechaIngreso` datetime DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `RH` varchar(3) DEFAULT NULL,
  `EPS` varchar(30) DEFAULT NULL,
  `alergias` varchar(100) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `rol` varchar(12) DEFAULT NULL,
  `contraseña` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valor`
--

CREATE TABLE `valor` (
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
  ADD KEY `numDoc` (`numDoc`);

--
-- Indices de la tabla `ejercicio`
--
ALTER TABLE `ejercicio`
  ADD PRIMARY KEY (`idEjercicio`),
  ADD KEY `idTrabajo` (`idTrabajo`);

--
-- Indices de la tabla `entrenador`
--
ALTER TABLE `entrenador`
  ADD PRIMARY KEY (`idEntrenador`),
  ADD KEY `numDoc` (`numDoc`);

--
-- Indices de la tabla `medida`
--
ALTER TABLE `medida`
  ADD PRIMARY KEY (`idMedida`);

--
-- Indices de la tabla `plan_entrenamiento`
--
ALTER TABLE `plan_entrenamiento`
  ADD PRIMARY KEY (`idPlan`),
  ADD KEY `idTrabajo` (`idTrabajo`),
  ADD KEY `idMedida` (`idMedida`),
  ADD KEY `idEntrenador` (`idEntrenador`),
  ADD KEY `idCliente` (`idCliente`);

--
-- Indices de la tabla `trabajo`
--
ALTER TABLE `trabajo`
  ADD PRIMARY KEY (`idTrabajo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`numDoc`);

--
-- Indices de la tabla `valor`
--
ALTER TABLE `valor`
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
-- AUTO_INCREMENT de la tabla `plan_entrenamiento`
--
ALTER TABLE `plan_entrenamiento`
  MODIFY `idPlan` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `trabajo`
--
ALTER TABLE `trabajo`
  MODIFY `idTrabajo` bigint(20) NOT NULL AUTO_INCREMENT;

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
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`numDoc`) REFERENCES `usuario` (`numDoc`);

--
-- Filtros para la tabla `ejercicio`
--
ALTER TABLE `ejercicio`
  ADD CONSTRAINT `ejercicio_ibfk_1` FOREIGN KEY (`idTrabajo`) REFERENCES `trabajo` (`idTrabajo`);

--
-- Filtros para la tabla `entrenador`
--
ALTER TABLE `entrenador`
  ADD CONSTRAINT `entrenador_ibfk_1` FOREIGN KEY (`numDoc`) REFERENCES `usuario` (`numDoc`);

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
