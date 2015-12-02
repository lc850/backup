-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-12-2015 a las 03:28:16
-- Versión del servidor: 5.6.21-log
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `imss`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudades`
--

CREATE TABLE IF NOT EXISTS `ciudades` (
  `id_ciudad` decimal(10,0) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ciudades`
--

INSERT INTO `ciudades` (`id_ciudad`, `nombre`) VALUES
('1', 'Culiacán'),
('2', 'Mazatlan'),
('3', 'Mochis'),
('4', 'Guasave');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE IF NOT EXISTS `datos` (
  `id_usuario` int(11) NOT NULL,
  `user` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `pass` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `datos`
--

INSERT INTO `datos` (`id_usuario`, `user`, `pass`) VALUES
(1, 'lc850', '123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enfermedades`
--

CREATE TABLE IF NOT EXISTS `enfermedades` (
  `id` decimal(10,0) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `tipo` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `enfermedades`
--

INSERT INTO `enfermedades` (`id`, `nombre`, `tipo`) VALUES
('1', 'Hepatitis', 'medio'),
('2', 'Gripe', 'bajo'),
('3', 'Higado graso', 'alto'),
('4', 'Carie dental', 'bajo'),
('5', 'Diabates', 'alto'),
('6', 'Sida', 'alto'),
('7', 'Asma', 'medio'),
('8', 'Cancer', 'alto'),
('9', 'Anorexia', 'alto'),
('10', 'Obesidad', 'alto'),
('11', 'Alzheimer', 'bajo'),
('12', 'Lupus', 'alto'),
('13', 'Ebola', 'alto'),
('14', 'Poliomielitis', 'medio'),
('15', 'Tos', 'bajo'),
('16', 'Dolor de cabeza', 'bajo'),
('17', 'Influenza', 'alto'),
('18', 'Dolor de estomago', 'bajo'),
('19', 'Quemaduras', 'alto'),
('20', 'Gastritis', 'medio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE IF NOT EXISTS `pacientes` (
`id` int(11) NOT NULL,
  `nombre` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  `edad` int(11) NOT NULL,
  `id_ciudad` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `pacientes`
--

INSERT INTO `pacientes` (`id`, `nombre`, `edad`, `id_ciudad`) VALUES
(1, 'Juan', 34, 0),
(2, 'Zephania Gross', 76, 2),
(3, 'Gray Meadows', 78, 3),
(4, 'Reece Farmer', 50, 2),
(5, 'Rogan Jennings', 97, 3),
(6, 'Reuben Hess', 96, 3),
(7, 'Rahim Dunn', 94, 3),
(8, 'Thane Church', 40, 4),
(9, 'Gil Mathis', 70, 3),
(10, 'Donovan Hopper', 87, 3),
(11, 'Mohammad Summers', 82, 2),
(12, 'Kadeem Burke', 79, 1),
(13, 'Stone Padilla', 96, 3),
(14, 'Phillip Gates', 42, 4),
(15, 'Xanthus Thornton', 25, 2),
(16, 'Rogan Rasmussen', 73, 2),
(17, 'Kato Schroeder', 31, 3),
(18, 'Perry Jenkins', 92, 3),
(19, 'Lucius Owen', 3, 2),
(20, 'Noah Ramsey', 52, 1),
(21, 'Dale Velez', 8, 4),
(22, 'Hyatt Banks', 25, 1),
(23, 'Brian Hudson', 13, 1),
(24, 'Hakeem Walls', 70, 2),
(25, 'Gray Ruiz', 49, 1),
(26, 'Wylie Willis', 51, 1),
(27, 'Samuel Campbell', 96, 2),
(28, 'Luke Parsons', 61, 4),
(29, 'Kaseem Workman', 27, 4),
(30, 'Erich Knowles', 90, 1),
(31, 'Vernon Barrera', 54, 1),
(32, 'Elijah Montgomery', 90, 3),
(33, 'Lee Nicholson', 68, 2),
(34, 'Zeus Garza', 42, 1),
(35, 'Andrew Golden', 13, 3),
(36, 'Sawyer Woodard', 36, 3),
(37, 'Hop Wilkins', 97, 1),
(38, 'Erasmus Anthony', 26, 2),
(39, 'Brent Espinoza', 46, 4),
(40, 'Jackson Glenn', 81, 3),
(41, 'Wang Brooks', 36, 4),
(42, 'Lawrence Hines', 2, 2),
(43, 'Carlos Battle', 52, 3),
(44, 'Grady Hendricks', 28, 2),
(45, 'Zeph Wise', 46, 4),
(46, 'Axel Mueller', 26, 4),
(47, 'Ray Tran', 11, 4),
(48, 'Lamar Spencer', 49, 2),
(49, 'Jack Stanton', 50, 3),
(50, 'Tad Boyd', 95, 2),
(51, 'Marsden Fitzgerald', 85, 3),
(52, 'Bernard Wilkinson', 77, 4),
(53, 'Dolan Gamble', 84, 4),
(54, 'Tyler Manning', 63, 3),
(55, 'Anthony Fletcher', 63, 3),
(56, 'Nigel Johnson', 25, 1),
(57, 'Steven Morton', 15, 1),
(58, 'Marshall Mendoza', 21, 3),
(59, 'Randall Witt', 29, 1),
(60, 'Rudyard Howell', 79, 1),
(61, 'Channing Barker', 45, 1),
(62, 'Darius Langley', 34, 2),
(63, 'Tiger Christian', 50, 2),
(64, 'Brandon Coffey', 65, 4),
(65, 'Craig Cash', 64, 2),
(66, 'Laith Gallegos', 14, 2),
(67, 'Carl Ramirez', 35, 2),
(68, 'Carl Reed', 7, 3),
(69, 'Tobias Burgess', 72, 4),
(70, 'Timon Finch', 34, 1),
(71, 'Armand Nash', 88, 2),
(72, 'Christopher Bell', 92, 3),
(73, 'Valentine Walton', 28, 3),
(75, 'Solomon Hoffman', 86, 1),
(76, 'Kareem Huber', 96, 4),
(77, 'Tyler Daniels', 3, 4),
(78, 'Raymond Horton', 40, 2),
(79, 'Cedric Workman', 18, 3),
(80, 'Calvin Pitts', 41, 2),
(82, 'Simon Calhoun', 7, 2),
(83, 'Amos Byrd', 12, 3),
(84, 'Tyler Shelton', 94, 2),
(85, 'Alfonso Swanson', 45, 4),
(86, 'Salvador Kane', 87, 4),
(87, 'Malcolm Pearson', 49, 2),
(88, 'Zane Colon', 70, 1),
(89, 'Edward Mckee', 38, 3),
(90, 'Kaseem Hodge', 88, 2),
(91, 'Carl Neal', 87, 3),
(92, 'Fuller Hurley', 25, 1),
(93, 'Hop Trevino', 25, 1),
(94, 'Yardley Clark', 17, 2),
(95, 'Magee Roman', 2, 3),
(96, 'Colorado Daniel', 6, 4),
(97, 'Eric Vang', 27, 1),
(98, 'Hector Dejesus', 51, 4),
(99, 'Kennedy Moses', 32, 1),
(100, 'Kane Owen', 93, 2),
(101, 'Branden Mendez', 82, 2),
(108, 'eee', 45, 1),
(109, 'Carlos', 34, 1),
(110, 'lll', 11, 1),
(111, 'vvv', 454, 1),
(112, 'Carlo', 34, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes2`
--

CREATE TABLE IF NOT EXISTS `pacientes2` (
`id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `edad` int(11) NOT NULL,
  `id_ciudad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `p_e`
--

CREATE TABLE IF NOT EXISTS `p_e` (
  `id_paciente` decimal(10,0) NOT NULL,
  `id_enfermedad` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `p_e`
--

INSERT INTO `p_e` (`id_paciente`, `id_enfermedad`) VALUES
('72', '10'),
('96', '5'),
('9', '9'),
('69', '20'),
('40', '19'),
('75', '8'),
('69', '5'),
('32', '19'),
('88', '5'),
('2', '17'),
('23', '7'),
('35', '7'),
('22', '6'),
('93', '19'),
('44', '8'),
('78', '2'),
('29', '19'),
('100', '13'),
('57', '2'),
('53', '7'),
('94', '20'),
('46', '12'),
('81', '16'),
('40', '10'),
('74', '17'),
('30', '15'),
('27', '19'),
('48', '15'),
('56', '18'),
('75', '7'),
('27', '8'),
('85', '20'),
('35', '4'),
('55', '3'),
('25', '10'),
('68', '15'),
('90', '20'),
('54', '7'),
('41', '9'),
('43', '16'),
('67', '7'),
('87', '6'),
('72', '9'),
('51', '16'),
('81', '11'),
('57', '4'),
('12', '14'),
('83', '6'),
('36', '19'),
('50', '1'),
('64', '15'),
('10', '3'),
('50', '8'),
('12', '7'),
('11', '3'),
('2', '10'),
('28', '8'),
('27', '1'),
('56', '20'),
('22', '18'),
('46', '10'),
('37', '3'),
('52', '8'),
('86', '1'),
('15', '3'),
('23', '1'),
('8', '11'),
('92', '17'),
('94', '9'),
('8', '16'),
('72', '6'),
('24', '3'),
('1', '6'),
('43', '10'),
('33', '5'),
('6', '10'),
('29', '15'),
('11', '13'),
('88', '18'),
('59', '15'),
('67', '14'),
('47', '16'),
('81', '5'),
('83', '6'),
('96', '6'),
('73', '11'),
('53', '4'),
('84', '2'),
('62', '17'),
('7', '2'),
('86', '19'),
('68', '5'),
('6', '14'),
('95', '2'),
('24', '6'),
('57', '14'),
('12', '8'),
('11', '2'),
('98', '20'),
('2', '1'),
('15', '6'),
('18', '10'),
('85', '6'),
('62', '16'),
('39', '4'),
('21', '20'),
('55', '9'),
('69', '6'),
('62', '16'),
('61', '12'),
('71', '9'),
('51', '10'),
('4', '7'),
('15', '16'),
('14', '15'),
('84', '12'),
('67', '9'),
('72', '11'),
('70', '1'),
('46', '12'),
('91', '8'),
('8', '7'),
('4', '2'),
('19', '17'),
('94', '20'),
('86', '19'),
('17', '20'),
('99', '13'),
('79', '18'),
('23', '17'),
('52', '5'),
('100', '19'),
('33', '1'),
('14', '19'),
('5', '14'),
('12', '5'),
('82', '4'),
('76', '10'),
('33', '8'),
('95', '12'),
('17', '8'),
('2', '12'),
('31', '11'),
('82', '7'),
('6', '3'),
('61', '7'),
('28', '15'),
('6', '19'),
('34', '15'),
('92', '14'),
('80', '5'),
('48', '15'),
('42', '1'),
('88', '15'),
('84', '6'),
('89', '17'),
('86', '19'),
('65', '4'),
('100', '1'),
('57', '16'),
('97', '8'),
('51', '4'),
('47', '18'),
('20', '13'),
('66', '4'),
('94', '13'),
('82', '7'),
('5', '6'),
('38', '18'),
('40', '17'),
('79', '11'),
('40', '11'),
('4', '16'),
('59', '1'),
('17', '14'),
('27', '5'),
('65', '17'),
('86', '7'),
('67', '5'),
('68', '11'),
('49', '20'),
('20', '9'),
('61', '15'),
('63', '7'),
('35', '11'),
('4', '2'),
('77', '2'),
('4', '16'),
('85', '16'),
('73', '19'),
('57', '14'),
('46', '14'),
('82', '10'),
('66', '4'),
('50', '10'),
('48', '20'),
('18', '11'),
('75', '11'),
('12', '13'),
('51', '17'),
('49', '13'),
('93', '13'),
('28', '8'),
('43', '1'),
('46', '10'),
('100', '9'),
('98', '9'),
('87', '17'),
('64', '5'),
('78', '19'),
('19', '8'),
('35', '10'),
('31', '16'),
('96', '20'),
('10', '11'),
('67', '2'),
('66', '13'),
('48', '2'),
('80', '18'),
('100', '11'),
('11', '8'),
('30', '15'),
('2', '13'),
('74', '3'),
('41', '13'),
('33', '16'),
('58', '5'),
('84', '18'),
('49', '15'),
('15', '10'),
('68', '4'),
('67', '6'),
('26', '12'),
('35', '17'),
('69', '5'),
('30', '13'),
('59', '2'),
('69', '6'),
('18', '2'),
('26', '20'),
('47', '19'),
('30', '3'),
('78', '5'),
('96', '12'),
('59', '13'),
('37', '18'),
('32', '6'),
('17', '2'),
('80', '7'),
('31', '12'),
('76', '7'),
('68', '10'),
('87', '12'),
('47', '20'),
('73', '19'),
('55', '1'),
('72', '4'),
('42', '8'),
('15', '13'),
('58', '6'),
('8', '16'),
('14', '1'),
('54', '2'),
('37', '19'),
('2', '15'),
('34', '20'),
('45', '11'),
('32', '4'),
('91', '17'),
('60', '18'),
('8', '15'),
('44', '14'),
('93', '8'),
('59', '12'),
('56', '7'),
('6', '16'),
('89', '9'),
('60', '15'),
('26', '17'),
('12', '12'),
('95', '2'),
('76', '15'),
('9', '1'),
('47', '20'),
('80', '7'),
('17', '17'),
('39', '6'),
('56', '10'),
('12', '9'),
('46', '4'),
('79', '8'),
('61', '8'),
('12', '8'),
('11', '17'),
('100', '2'),
('35', '19'),
('99', '3'),
('77', '14'),
('5', '6'),
('2', '18'),
('26', '5'),
('54', '12'),
('77', '18'),
('57', '19'),
('51', '12'),
('11', '14'),
('66', '3'),
('37', '1'),
('33', '15'),
('29', '19'),
('30', '6'),
('87', '9'),
('13', '19'),
('77', '12'),
('22', '15'),
('42', '6'),
('8', '11'),
('25', '18'),
('59', '10'),
('87', '10'),
('65', '4'),
('62', '1'),
('66', '7'),
('45', '15'),
('56', '2'),
('93', '13'),
('63', '3'),
('91', '1'),
('46', '1'),
('12', '14'),
('81', '14'),
('42', '19'),
('41', '5'),
('25', '8'),
('84', '8'),
('52', '18'),
('50', '11'),
('50', '13'),
('96', '14'),
('25', '18'),
('41', '8'),
('10', '1'),
('55', '14'),
('39', '14'),
('57', '1'),
('88', '12'),
('6', '13'),
('9', '17'),
('46', '1'),
('34', '19'),
('68', '5'),
('72', '18'),
('97', '4'),
('10', '8'),
('64', '14'),
('99', '7'),
('10', '18'),
('79', '13'),
('86', '7'),
('17', '20'),
('84', '3'),
('18', '6'),
('34', '2'),
('31', '6'),
('71', '20'),
('14', '20'),
('2', '6'),
('97', '6'),
('99', '6'),
('22', '3'),
('53', '4'),
('21', '2'),
('35', '12'),
('85', '6'),
('93', '17'),
('86', '12'),
('32', '7'),
('48', '19'),
('74', '16'),
('9', '6'),
('12', '20'),
('68', '19'),
('7', '13'),
('72', '1'),
('15', '7'),
('23', '10'),
('80', '2'),
('68', '13'),
('78', '18'),
('13', '12'),
('100', '14'),
('16', '6'),
('67', '10'),
('11', '16'),
('95', '15'),
('76', '8'),
('10', '10'),
('100', '1'),
('52', '4'),
('92', '11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
`id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`) VALUES
(1, 'Luis Santillan');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ciudades`
--
ALTER TABLE `ciudades`
 ADD PRIMARY KEY (`id_ciudad`);

--
-- Indices de la tabla `enfermedades`
--
ALTER TABLE `enfermedades`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pacientes`
--
ALTER TABLE `pacientes`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pacientes2`
--
ALTER TABLE `pacientes2`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pacientes`
--
ALTER TABLE `pacientes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT de la tabla `pacientes2`
--
ALTER TABLE `pacientes2`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
