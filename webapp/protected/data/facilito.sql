-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 10-09-2013 a las 05:22:51
-- Versión del servidor: 5.5.8
-- Versión de PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `facilito`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authassignment`
--

CREATE TABLE IF NOT EXISTS `authassignment` (
  `itemname` varchar(64) NOT NULL,
  `userid` varchar(64) NOT NULL,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`itemname`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `authassignment`
--

INSERT INTO `authassignment` (`itemname`, `userid`, `bizrule`, `data`) VALUES
('admin', '2', NULL, 'N;'),
('adminUser', '2', NULL, 'N;'),
('super', '2', NULL, 'N;');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authitem`
--

CREATE TABLE IF NOT EXISTS `authitem` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `authitem`
--

INSERT INTO `authitem` (`name`, `type`, `description`, `bizrule`, `data`) VALUES
('admin', 2, '', NULL, 'N;'),
('adminUser', 2, '', NULL, 'N;'),
('ee', 2, 'tesd', NULL, 'N;'),
('super', 2, 'This is a test', NULL, 'N;');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authitemchild`
--

CREATE TABLE IF NOT EXISTS `authitemchild` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `authitemchild`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cities`
--

CREATE TABLE IF NOT EXISTS `cities` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `countries_id` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Volcar la base de datos para la tabla `cities`
--

INSERT INTO `cities` (`id`, `name`, `countries_id`, `status`) VALUES
(1, 'Quito', 2, 1),
(2, 'Hipiales', 2, 1),
(3, 'Caracas', 6, 1),
(4, 'Merida', 6, 1),
(5, 'Bogotá', 1, 1),
(6, 'Barranquilla', 1, 1),
(7, 'Medellín', 1, 1),
(8, 'Cali', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Volcar la base de datos para la tabla `countries`
--

INSERT INTO `countries` (`id`, `name`, `status`) VALUES
(1, 'Colombia', 1),
(2, 'Ecuador', 1),
(3, 'Argentina', 0),
(6, 'Venezuela', 1),
(7, 'Bolivia', 1),
(8, 'España', 1),
(9, 'Argentina', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) CHARACTER SET latin1 NOT NULL,
  `password` varchar(128) CHARACTER SET latin1 NOT NULL,
  `email` varchar(128) CHARACTER SET latin1 NOT NULL,
  `birthday` date NOT NULL,
  `name` varchar(255) NOT NULL,
  `countries_id` int(10) NOT NULL,
  `cities_id` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Volcar la base de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `birthday`, `name`, `countries_id`, `cities_id`, `status`) VALUES
(2, 'Codigofacilito', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'facilto@example.com', '0000-00-00', '', 0, 0, 0),
(3, 'test3', 'pass3', 'test3@example.com', '0000-00-00', '', 0, 0, 0),
(4, 'test4', 'pass4', 'test4@example.com', '0000-00-00', '', 0, 0, 0),
(5, 'test5', 'pass5', 'test5@example.com', '0000-00-00', '', 0, 0, 0),
(6, 'test6', 'pass6', 'test6@example.com', '0000-00-00', '', 0, 0, 0),
(7, 'test7', 'pass7', 'test7@example.com', '0000-00-00', '', 0, 0, 0),
(8, 'test8', 'pass8', 'test8@example.com', '0000-00-00', '', 0, 0, 0),
(9, 'test9', 'pass9', 'test9@example.com', '0000-00-00', '', 0, 0, 0),
(10, 'test10', 'pass10', 'test10@example.com', '0000-00-00', '', 0, 0, 0),
(11, 'test11', 'pass11', 'test11@example.com', '0000-00-00', '', 0, 0, 0),
(12, 'test12', 'pass12', 'test12@example.com', '0000-00-00', '', 0, 0, 0),
(13, 'test13', 'pass13', 'test13@example.com', '0000-00-00', '', 0, 0, 0),
(14, 'test14', 'pass14', 'test14@example.com', '0000-00-00', '', 0, 0, 0),
(15, 'test15', 'pass15', 'test15@example.com', '0000-00-00', '', 0, 0, 0),
(16, 'test16', 'pass16', 'test16@example.com', '0000-00-00', '', 0, 0, 0),
(17, 'test17', 'pass17', 'test17@example.com', '0000-00-00', '', 0, 0, 0),
(18, 'test18', 'pass18', 'test18@example.com', '0000-00-00', '', 0, 0, 0),
(19, 'test19', 'pass19', 'test19@example.com', '0000-00-00', '', 0, 0, 0),
(20, 'test20', 'pass20', 'test20@example.com', '0000-00-00', '', 0, 0, 0),
(21, 'test21', 'pass21', 'test21@example.com', '0000-00-00', '', 0, 0, 0),
(22, 'This is test', '123355', 'miemail@gmail.com', '0000-00-00', '', 0, 0, 0);

--
-- Filtros para las tablas descargadas (dump)
--

--
-- Filtros para la tabla `authassignment`
--
ALTER TABLE `authassignment`
  ADD CONSTRAINT `authassignment_ibfk_1` FOREIGN KEY (`itemname`) REFERENCES `authitem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `authitemchild`
--
ALTER TABLE `authitemchild`
  ADD CONSTRAINT `authitemchild_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `authitem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `authitemchild_ibfk_2` FOREIGN KEY (`child`) REFERENCES `authitem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;
