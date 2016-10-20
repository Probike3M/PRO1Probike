-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-10-2016 a las 18:11:21
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_proyecto1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anunci`
--

CREATE TABLE `anunci` (
  `anu_id` int(4) NOT NULL,
  `anu_titol` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `anu_data_anunci` date NOT NULL,
  `anu_data_robatori` date NOT NULL,
  `anu_ubicacio_robatori` varchar(35) COLLATE utf8_spanish_ci NOT NULL,
  `anu_descripcio_robatori` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `anu_marca` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `anu_model` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `anu_color` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `anu_antiguitat` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `anu_descripcio` text COLLATE utf8_spanish_ci NOT NULL,
  `anu_numero_serie` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `anu_foto` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `anu_compensacio` decimal(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `anunci`
--

INSERT INTO `anunci` (`anu_id`, `anu_titol`, `anu_data_anunci`, `anu_data_robatori`, `anu_ubicacio_robatori`, `anu_descripcio_robatori`, `anu_marca`, `anu_model`, `anu_color`, `anu_antiguitat`, `anu_descripcio`, `anu_numero_serie`, `anu_foto`, `anu_compensacio`) VALUES
(1, 'Bici decathlon robada', '2016-10-17', '2016-10-17', 'L''Hospitalet de Llobregat', 'La han robado delante del colegio joan 23 de bellvitge', 'BTWIN', 'ROCKRIDER 300', 'Negra', NULL, 'La bici estaba atada a un arbol en el parque enfrente del colegio joan 23 de bellvige.', '123456', '1.png', '50.00'),
(2, 'Bici Orbea loki robada', '2016-10-17', '2016-10-10', 'Hospitalet de llobregat', 'La bici estaba en frente de la sala salamandra', 'Orbea', 'Loki', 'Negra', 'Menos de 1 año', 'Me han robado una bici Orbea loki en la avinguda carrilet de hospitalet en frente de la sala salamandra , la deje alli el dia 10 de octubre.', '145236', '2.png', '25.00'),
(3, 'Bici Cannondale verde robada', '2016-10-17', '2016-10-01', 'Barcelona ', 'Estaba por ultima vez en frente del apolo', 'Cannondale', 'Caadx Tiagra', 'Verde', 'Menos de 1 año', 'El dia 1 de octubre perdí alguien me robó la bici, estaba bien atada cerca del teatro apolo de paralelo de barcelona. \nSe trata de una bici Cannondale Caadx Tiagra de color verde lima.\nSi alguien la encuentra que se ponga en contacto conmigo. Gracias.', '', '3.png', NULL),
(4, 'Por favor ayuda ! me han robado mi bici', '2016-10-17', '2016-10-16', 'Viladecans', 'Fui a comprar el pan y me la robaron en el barrio salas de viladecans', 'Orbita', 'Alfa', 'Blanca', 'Un par de años', 'La bici robada se trata de Orbita ALFA blanca para mujer de 18 velocidades. Si alguie la encuentra lo agradeceré. Gracias', 'B0189AP1HE', '4.png', '35.00'),
(5, 'bici amarilla robada', '2016-10-15', '2016-10-13', 'Barcelona', 'Unos extrangeros me obligaron a darles la bicicleta', 'Wizard Industry', 'Helliot Soho', 'Amarilla', '1 año', 'Por favor si alguien encuentra una bici Wizard Industry Helliot Soho amarilla q se ponga en contacto conmigo.', NULL, '5.png', '5.00'),
(6, 'Bici robada en castelldefels', '2016-10-12', '2016-10-09', 'Castelldefels', 'Fui a comprar a una tienda y la bici desapareció', 'Trek', 'Marlin', 'Naranja', '1 año', 'Perdi la bici en el paseo maritimo de castelldefels, es una bici Trek naranja.', NULL, '6.png', '15.00'),
(7, 'bici decathlon verde encontrada en sant boi', '2016-10-17', '2016-10-16', 'Sant Boi de llobregat', 'Bici robada encontrada cerca de la estacion de tren de sant boi', 'BTWIN', ' ROCKRIDER 340', 'Verde', 'un par de años', 'He encontrado una bici del decathlon verde en la estacion de sant boi.', NULL, '7.png', NULL),
(8, 'Bici robada de un primer piso', '2016-10-17', '2016-10-17', 'Sabadell', 'Bici robada en el balcon de un primer piso', 'Giant', 'Talon', 'Azul', 'nueva', 'La bici la robaron del balcon de mi casa en un primer piso, en el centro de sabadell', '', '8.png', '10.50'),
(9, 'Bici plegable Giant Expessway 2 Negra ', '2016-10-18', '2016-10-16', 'Barcelona', 'La bici estabada atada con tres candados en el párquing de bicis de la playa Bogatell. Enfrente del McDonalds.', 'Giant ', ' Expessway 2', 'Negra', 'un año', 'La bici estabada atada con tres candados en el párquing de bicis de la playa Bogatell. Enfrente del McDonalds.', '', '10.png', '15.00'),
(10, 'Bici de montaña robada ', '2016-10-17', '2016-10-15', 'El Prat de llobregat', 'Bici robada en Sant Cosme', 'MMR', 'Woki', 'Roja', 'un año', 'La robaron de mi garaje', '', '9.png', '10.50'),
(11, 'Bicicleta Urbana Cannondale Quick 5 ', '2016-10-17', '2015-10-15', 'Barcelona', 'Me robaron mientras estaba en el colegio, por la tarde', 'cannondale', 'Quick 5', 'Negra', NULL, 'Bicicleta cannondale azul de 1.60 metros de ruedas grandes y es bastante nueva', NULL, '11.png', '0.00'),
(12, 'BICICLETA RACINGBOY 320 B''TWIN', '2016-10-15', '2016-10-09', 'Sevilla', 'Me han robado la bici mienttras estaba en el parque jugando', 'BTWIN', 'Racingboy 320 rojo', 'roja', NULL, 'Bici roja pequeña roja con el manillar rojo y la foto de un aguila roja. ', NULL, '12.png', '10.00'),
(13, 'BTT ROCKRIDER 340 AMARILLO B''TWIN', '2016-10-18', '2016-10-03', 'Madrid', 'Me robaron la bici mientras esta en el trabajo, estaba atada en un arbol y rompieron el candado', 'BTWIN', 'BTT ROCKIDER', 'Amarillo', NULL, 'Bicicleta amarilla y negra grande, con ruedas grandes ', NULL, '13.png', '30.00'),
(14, 'BICICLETA PARA NIÑOS ROSA B''TWIN', '2016-10-17', '2016-10-08', 'Barcelona', 'La bici fue robada en el jardn de mi casa mientras no estabamos', 'BTWIN', 'TICHA ROSA', 'Rosa', NULL, 'Bicicleta pequeña para niños, de color  rosa y un dibujo de un gato', NULL, '14.png', NULL),
(15, 'CUBE Attain GTC', '2016-10-16', '2016-10-16', 'Murcia', 'La bici fue robada en el centro de murcia, fue robada por la noche', 'CUBE', 'Attain GTC', 'Blanca', NULL, 'Bicicleta blanca y negra de tamaño mediana', NULL, '15.png', NULL),
(16, 'CUBE LTD SL 27''5', '2016-10-15', '2016-10-11', 'Barcelona', 'Me han robado la bici mientras estba en el colegio en bellvitge. ', 'CUBE', 'LTD SL 27''5', 'Negra', NULL, 'Bicicleta de montaña negra y verde alta.', NULL, '16.png', '50.00'),
(17, 'CUBE REACTION GTC ', '2016-10-14', '2016-10-14', 'Zaragoza', 'El robo de la bici fue por la noche en la ciudad de zaragoza', 'CUBE', 'REACTION GTC', 'Negra', NULL, 'Bicicleta negra y azul grande.', NULL, '17.png', NULL),
(18, 'Brompton Amarilla', '2016-10-13', '2016-10-13', 'Girona', 'Robaron la bicicleta mientras estaba entrenando', 'Brompton', 'Brompton', 'Amarilla', NULL, 'Bicicleta amarilla con ruedas pequeñas y pesa unos 10 kg', NULL, '18.png', '99.99'),
(19, 'Brompton Cherry Blossom', '2016-10-14', '2016-10-14', 'Madrid', '3 personas de  unos 20 años me la robaron a la fuerza', 'Brompton', 'Cherry Blossom', 'Blanca', NULL, 'Bicicleta mediana, tiene las ruedas pequeñas y pesa unos 13 kg', NULL, '19.png', '50.00'),
(20, 'ORBEA ORDU M35', '2016-10-13', '2016-10-13', 'Barcelona', 'Me robaron la bici mietras trabajaba en el Gran Via 2', 'ORBEA', 'ORDU M35', 'Negra', NULL, 'Bicicleta de montaña ORBEA blanca y negra', NULL, '20.png', '35.00'),
(21, 'Bici de carretera Wiggle XL', '2016-10-18', '2016-10-18', 'Bilbao', 'La han robado durante las fiestas al medio día', 'Wiggle', 'Wiggle XL', 'Negra', NULL, 'La bici estaba con candado en una farola', '654321', '21.png', '40.00'),
(22, 'CUBE MTB Enduro', '2016-10-21', '2016-10-21', 'Girona', 'Me robaron la bicicleta de noche mientras dormía', 'CUBE', 'MTB Enduro', 'Azul', NULL, 'La bici estaba al aire libre', '754321', '22.png', '20.00'),
(23, 'CUBE Elite C68', '2016-10-20', '2016-10-19', 'Girona', 'A plena luz del día, por la fuerza', 'CUBE', 'Elite C68', 'Rosa', NULL, 'La bici estaba en mi patio', '354321', '23.png', '30.00'),
(24, 'CUBE Aerium C62', '2016-10-21', '2016-10-18', 'Huesca', 'A plena luz del día, mientras compraba', 'CUBE', 'Aerium C62', 'Verde', NULL, 'Bicicleta Verde lima de la marca CUBE', '354621', '24.png', '35.00'),
(25, 'TREK FUEL EX 9.9 29', '2016-10-18', '2016-10-17', 'Gijón', 'Por la tarde, mientras descansaba en el parque', 'TREK', 'FUEL EX 9.9 29', 'Negra', NULL, 'Bicleta Amarilla FUEL EX 9.9 29', '354624', '25.png', '25.00'),
(26, 'TREK FUEL EX 9.9 29', '2016-10-17', '2016-10-15', 'Valladolid', 'La robaron mientras pasaba el fin de  semana en el pueblo', 'TREK', 'Slash 9.8 29', 'Blanca', NULL, 'Bicleta Blanca Slash 9.8 29', '354424', '26.png', '30.00'),
(27, 'TREK Powerfly 9 LT Plus', '2016-10-19', '2016-10-19', 'Viladecans', 'Mientras la niña se columpiaba en el parque', 'TREK', 'Powerfly 9 LT Plus', 'Azul', NULL, 'Bicleta Rosa Powerfly 9 LT Plus', '352424', '27.png', '45.00'),
(28, 'ORBEA MX-KIDS', '2016-10-20', '2016-10-20', 'Teruel', 'Mientras el niño merendaba en la plaza', 'ORBEA', 'ORBEA MX-KIDS', 'Negra', NULL, 'Bicleta Negra ORBEA MX-KIDS', '352422', '28.png', '50.00'),
(29, 'ORBEA MX-KIDS', '2016-10-21', '2016-10-21', 'Hospitalet del Llobregat', 'Me la robaron cuando estudiaba en la biblioteca', 'ORBEA', 'KERAM-COMFORT', 'Negra', NULL, 'Bicleta Roja KERAM-COMFORT', '352421', '29.png', '40.00'),
(30, 'ORBEA MX-KIDS', '2016-10-20', '2016-10-19', 'Barcelona', 'Me la robaron paseando por la ciudad', 'ORBEA', 'OPTIMA-STREET', 'Azul', NULL, 'Bicleta Azul OPTIMA-STREET', '332421', '30.png', '50.00'),
(31, 'prueba', '2016-10-17', '2016-10-17', 'prueba', 'prueba', 'prueba', 'prueba', 'prueba', 'menos de un año', 'prueba', 'prueba', 'foto.png', '5.00'),
(32, 'prueba', '2016-10-17', '2016-10-17', 'prueba', 'prueba', 'prueba', 'prueba', 'prueba', 'menos de un año', 'prueba', 'prueba', 'foto.png', '5.00'),
(33, 'prueba', '2016-10-17', '2016-10-17', 'prueba', 'prueba', 'prueba', 'prueba', 'prueba', 'menos de un año', 'prueba', 'prueba', 'foto.png', '5.00'),
(34, 'prueba', '2016-10-17', '2016-10-17', 'prueba', 'prueba', 'prueba', 'prueba', 'prueba', 'menos de un año', 'prueba', 'prueba', 'foto.png', '5.00'),
(35, 'prueba2', '2016-10-17', '2016-10-17', 'prueba2', 'prueba2', 'prueba2', 'prueba2', 'prueba2', 'menos de un año', 'prueba2', 'prueba2', 'foto.png', '5.00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `anunci`
--
ALTER TABLE `anunci`
  ADD PRIMARY KEY (`anu_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `anunci`
--
ALTER TABLE `anunci`
  MODIFY `anu_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
