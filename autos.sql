-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-08-2025 a las 00:52:43
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `concesionaria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autos`
--

CREATE TABLE `autos` (
  `id_auto` int(11) NOT NULL,
  `marca` varchar(20) DEFAULT NULL,
  `modelo` varchar(50) DEFAULT NULL,
  `tipo` varchar(30) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `fecha_fabricacion` date DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `url_img` varchar(4500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `autos`
--

INSERT INTO `autos` (`id_auto`, `marca`, `modelo`, `tipo`, `color`, `fecha_fabricacion`, `precio`, `estado`, `url_img`) VALUES
(2, 'Toyota', 'Hilux', 'Hatchback', 'Negro', '2025-06-02', '19368.41', 'Nuevo', 'https://acroadtrip.blob.core.windows.net/catalogo-imagenes/xl/RT_V_306e84f8dec84ba4ad1f3372499ac72e.jpg'),
(3, 'Toyota', 'RAV4', 'SUV', 'Azul', '2020-09-16', '53417.46', 'Nuevo', 'https://upload.wikimedia.org/wikipedia/commons/5/5f/Toyota_RAV4_2020.jpg'),
(4, 'Ford', 'EcoSport', 'SUV', 'Gris', '2010-12-31', '39745.03', 'Usado', 'https://upload.wikimedia.org/wikipedia/commons/4/4c/2018_Ford_EcoSport.jpg'),
(5, 'Toyota', 'Yaris', 'SUV', 'Azul', '2015-10-04', '60484.54', 'Nuevo', 'https://upload.wikimedia.org/wikipedia/commons/f/fb/2017_Toyota_Yaris.jpg'),
(6, 'Volkswagen', 'Polo', 'SUV', 'Blanco', '2015-12-10', '58005.36', 'Nuevo', 'https://upload.wikimedia.org/wikipedia/commons/8/89/VW_Polo_2018.jpg'),
(7, 'Chevrolet', 'Tracker', 'SUV', 'Rojo', '2024-11-11', '65075.79', 'Usado', 'https://upload.wikimedia.org/wikipedia/commons/d/d6/Chevrolet_Tracker_2020.jpg'),
(8, 'Volkswagen', 'Gol', 'Coupé', 'Rojo', '2024-04-21', '79725.11', 'Nuevo', 'https://upload.wikimedia.org/wikipedia/commons/f/f7/VW_Gol_2019.jpg'),
(9, 'Toyota', 'Yaris', 'Sedán', 'Azul', '2020-10-10', '52584.51', 'Nuevo', 'https://upload.wikimedia.org/wikipedia/commons/5/56/Toyota_Yaris_Sedan_2020.jpg'),
(10, 'Chevrolet', 'Onix', 'Pickup', 'Rojo', '2016-11-06', '30918.63', 'Usado', 'https://upload.wikimedia.org/wikipedia/commons/9/9c/Chevrolet_Onix_2019.jpg'),
(11, 'Volkswagen', 'Virtus', 'Sedán', 'Rojo', '2016-03-11', '48072.36', 'Nuevo', 'https://upload.wikimedia.org/wikipedia/commons/b/bd/VW_Virtus_2019.jpg'),
(12, 'Chevrolet', 'S10', 'SUV', 'Verde', '2021-03-02', '57939.47', 'Nuevo', 'https://upload.wikimedia.org/wikipedia/commons/9/9d/Chevrolet_S10_2020.jpg'),
(13, 'Chevrolet', 'Camaro', 'Pickup', 'Blanco', '2018-02-23', '20201.71', 'Usado', 'https://upload.wikimedia.org/wikipedia/commons/8/89/Chevrolet_Camaro_2018.jpg'),
(14, 'Ford', 'Ranger', 'Pickup', 'Azul', '2012-11-23', '19064.93', 'Usado', 'https://upload.wikimedia.org/wikipedia/commons/f/f0/Ford_Ranger_2019.jpg'),
(15, 'Ford', 'Ranger', 'Sedán', 'Rojo', '2025-02-23', '44545.72', 'Usado', 'https://upload.wikimedia.org/wikipedia/commons/f/f0/Ford_Ranger_2019.jpg'),
(16, 'Volkswagen', 'T-Cross', 'Sedán', 'Gris', '2016-07-17', '77113.25', 'Nuevo', 'https://upload.wikimedia.org/wikipedia/commons/7/7e/VW_T-Cross_2020.jpg'),
(17, 'Volkswagen', 'Polo', 'SUV', 'Gris', '2022-01-14', '54059.33', 'Usado', 'https://upload.wikimedia.org/wikipedia/commons/8/89/VW_Polo_2018.jpg'),
(18, 'Toyota', 'Hilux', 'Hatchback', 'Rojo', '2019-04-11', '52253.51', 'Nuevo', 'https://upload.wikimedia.org/wikipedia/commons/2/2a/2021_Toyota_Hilux.jpg'),
(19, 'Volkswagen', 'Amarok', 'Hatchback', 'Azul', '2021-04-03', '50410.78', 'Nuevo', 'https://upload.wikimedia.org/wikipedia/commons/5/5e/VW_Amarok_2020.jpg'),
(20, 'Chevrolet', 'Tracker', 'Coupé', 'Azul', '2012-03-16', '30251.60', 'Nuevo', 'https://upload.wikimedia.org/wikipedia/commons/d/d6/Chevrolet_Tracker_2020.jpg'),
(21, 'Fiat', 'Uno', 'SUV', 'Rojo', '1998-08-19', '7000.00', 'Nuevo', 'https://upload.wikimedia.org/wikipedia/commons/4/49/Fiat_Uno_2010.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autos`
--
ALTER TABLE `autos`
  ADD PRIMARY KEY (`id_auto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autos`
--
ALTER TABLE `autos`
  MODIFY `id_auto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
