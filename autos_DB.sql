-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-08-2025 a las 01:50:01
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
-- Base de datos: `Loz-AutosDB`
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
(2, 'Toyota', 'Hilux', 'Hatchback', 'Negro', '2025-06-02', '19368.41', 'Nuevo', 'https://i.ytimg.com/vi/CpmnxD5D9cE/maxresdefault.jpg'),
(3, 'Toyota', 'RAV4', 'SUV', 'Azul', '2020-09-16', '53417.46', 'Nuevo', 'https://cdn.motor1.com/images/mgl/1Zz3oM/s1/toyota-rav4-2022-argentina-1.jpg'),
(4, 'Ford', 'EcoSport', 'SUV', 'Gris', '2010-12-31', '39745.03', 'Usado', 'https://cdncla.lavoz.com.ar/files/avisos/aviso_auto/aviso-auto-ford-ecosport-15501306.webp'),
(5, 'Toyota', 'Yaris', 'SUV', 'Azul', '2015-10-04', '60484.54', 'Nuevo', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQugLrtXB0mP-OPtRXRYoprhy7mMDY2Fdd7nA&s'),
(6, 'Volkswagen', 'Polo', 'SUV', 'Blanco', '2015-12-10', '58005.36', 'Nuevo', 'https://avcdn.av.by/advertpreview/0005/4497/8118.jpg'),
(8, 'Volkswagen', 'Gol', 'Coupé', 'Rojo', '2024-04-21', '79725.11', 'Nuevo', 'https://cdn.motor1.com/images/mgl/WVzpg/s3/en-el-garage-de-autoblog-volkswagen-gol-msi-tiptronic.jpg'),
(9, 'Toyota', 'Yaris', 'Sedán', 'Azul', '2020-10-10', '52584.51', 'Nuevo', 'https://motormagazine.com.ar/wp-content/uploads/2017/08/nuevo-toyota-yaris-1-1.jpg'),
(10, 'Chevrolet', 'Onix', 'Pickup', 'Rojo', '2016-11-06', '30918.63', 'Usado', 'https://acroadtrip.blob.core.windows.net/publicaciones-imagenes/Large/chevrolet/onix/ar/RT_PU_43df4f4dbb2546eaaed7a757612fe4e1.webp'),
(12, 'Chevrolet', 'S10', 'SUV', 'Verde', '2021-03-02', '57939.47', 'Nuevo', 'https://tormonline.com.ar/contenido/notas/chevrolet-s10-2025%20(5).jpg'),
(13, 'Chevrolet', 'Camaro', 'Pickup', 'Blanco', '2018-02-23', '125000.00', 'Usado', 'https://acnews.blob.core.windows.net/imgnews/large/NAZ_413ae14a0a134972a1bd9bef639d6a70.jpg'),
(15, 'Ford', 'Ranger', 'Sedán', 'Rojo', '2025-02-23', '44545.72', 'Usado', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1cnbT2TGjyMIBy8LipcdOJjuJXX7Ev-2TdQ&s'),
(21, 'Fiat', 'Uno', 'SUV', 'Rojo', '1998-08-19', '7000.00', 'Nuevo', 'https://resizer.iproimg.com/unsafe/1280x/filters:format(webp)/https://assets.iprofesional.com/assets/jpg/2022/07/538834.jpg'),
(22, 'Ford', 'Falcon Deluxe', 'SUV', 'Verde carajo', '1985-05-23', '5000.00', 'Usado', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5b/Ford_Falcon_Verde.jpg/640px-Ford_Falcon_Verde.jpg'),
(23, 'Peugeot', '208', 'Sedan', 'Amarillo patito', '2000-12-22', '9000.00', 'Usado', 'https://assets.autoweek.nl/m/0hwbhbzcjt96u8.jpg'),
(24, 'Peugeot', '504', 'Sedan', 'Blanco padre', '1979-10-30', '5000.00', 'Usado', 'https://upload.wikimedia.org/wikipedia/commons/6/6b/Peugeot_504_-_Flickr_-_Joost_J._Bakker_IJmuiden_%282%29.jpg'),
(25, 'Renault', 'Clio', 'Sedan', 'Azul', '2010-10-22', '9500.00', 'Nuevo', 'https://assets.adac.de/image/upload/v1/Autodatenbank/Fahrzeugbilder/im02063-1-renault-clio-iii.jpg');

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
  MODIFY `id_auto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
