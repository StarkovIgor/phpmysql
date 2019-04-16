-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Фев 09 2019 г., 07:18
-- Версия сервера: 5.7.24-log
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `music`
--

-- --------------------------------------------------------

--
-- Структура таблицы `albums`
--

CREATE TABLE `albums` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `id_author` int(10) UNSIGNED NOT NULL,
  `year` date NOT NULL,
  `rating` float NOT NULL DEFAULT '0',
  `cover` varchar(20) NOT NULL DEFAULT 'nocover.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `albums`
--

INSERT INTO `albums` (`id`, `title`, `id_author`, `year`, `rating`, `cover`) VALUES
(1, 'Hybrid Theory', 1, '2000-10-24', 5, '00_Hybrid_Theory.jpg'),
(2, 'Meteora', 1, '2003-03-25', 5, '01_Meteora.jpg'),
(3, 'One More Light', 1, '2017-05-19', 4, '02_Onemore.jpg'),
(4, 'Fallen', 2, '2003-03-04', 5, '00_Fallen.jpg'),
(5, 'The Open Door', 2, '2006-10-03', 5, '01_The_open_door.jpg'),
(6, 'Evanescence', 2, '2011-10-11', 5, '02_Evanescense.jpg'),
(7, 'Stay Trippy', 3, '2013-08-27', 5, '00_Stay_trippy.jpg'),
(8, 'Rubba Band Business: The Album', 3, '2017-12-08', 5, '01_Ruba.jpg'),
(9, 'ShutDaFukUp', 3, '2018-01-15', 0, '02_Shut.jpg'),
(10, 'Атомы сознаниЯ', 4, '2002-02-07', 5, '00_Atomi.jpg'),
(11, 'За бесконечность Времени', 4, '2007-02-15', 5, '01_Zabeskonechn.jpg'),
(12, 'Реквием по реальности', 4, '2018-01-16', 5, '02_Requiem.jpg'),
(13, 'Recovery', 5, '2010-06-21', 5, '00_Recovery.jpg'),
(14, 'Revival', 5, '2017-12-15', 5, '01_Revival.jpg'),
(15, 'Kamikaze', 5, '2018-08-31', 5, '02_Kamikaze.jpg'),
(16, 'Natalia Oreiro', 6, '1998-07-14', 5, '00_Nat_Or.jpg'),
(17, 'Tu Veneno', 6, '2000-08-08', 5, '01_Unramito.jpg'),
(18, 'Turmalina', 6, '2002-06-01', 5, '02_Turmalina.jpg'),
(19, 'Adriano Celentano con Giulio Libano ', 7, '1960-02-06', 5, '00_TuoBacio.jpg'),
(20, 'Furore', 7, '1960-02-22', 5, '01_Furore.jpg'),
(21, 'Nostalrock', 7, '1973-02-25', 5, '02_Nostalrock.jpg'),
(22, 'Queen', 8, '1973-07-13', 5, '00_Queen.jpg'),
(23, 'Hot Space', 8, '1982-05-21', 5, '01_Hot_Space.jpg'),
(24, 'Innuendo', 8, '1991-02-04', 5, '02_Innuendo.jpg'),
(25, 'Appetite for Destruction', 9, '1987-07-21', 5, '00_Appetite.jpg'),
(26, 'G N\' R Lies', 9, '1988-11-29', 5, '01_Lies.jpg'),
(27, 'Use Your Illusion I', 9, '1991-09-17', 5, '02_Use_Your.jpg'),
(28, 'Got to Be There', 10, '1972-02-23', 5, '00_Gotobethere.jpg'),
(29, 'Ben', 10, '1972-11-08', 5, '01_Ben.jpg'),
(30, 'Music & Me', 10, '1973-06-28', 5, '02_Music_Me.jpg'),
(31, 'Kill \'Em All', 11, '1983-07-25', 5, '00_Kill.jpg'),
(32, 'Ride the Lightning', 11, '1984-07-27', 5, '01_Ride.jpg'),
(33, 'Master of Puppets', 11, '1986-03-03', 5, '02_Master.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `authors`
--

CREATE TABLE `authors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `authors`
--

INSERT INTO `authors` (`id`, `name`) VALUES
(1, 'Linkin Park'),
(2, 'Evanescense'),
(3, 'Juicy J'),
(4, 'Многоточие'),
(5, 'Eminem'),
(6, 'Natalia Oreiro'),
(7, 'Adriano Celentano '),
(8, 'Queen'),
(9, 'Guns N\' Roses'),
(10, 'Michael Jackson'),
(11, 'Metallica');

-- --------------------------------------------------------

--
-- Структура таблицы `stars`
--

CREATE TABLE `stars` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_author` int(11) NOT NULL,
  `description` varchar(500) NOT NULL,
  `star_image` varchar(50) NOT NULL DEFAULT 'noimage.jpg',
  `promo_image` varchar(50) NOT NULL DEFAULT 'noimage.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `stars`
--

INSERT INTO `stars` (`id`, `id_author`, `description`, `star_image`, `promo_image`) VALUES
(1, 1, '', '00_Linkin_Park.jpg', '00_Linkin_Park_promo.jpg'),
(2, 3, '', '02_Juicy_J.jpg', '02_Juicy_J_promo.jpg'),
(3, 5, '', '04_Eminem.jpg', '04_Eminem_promo.jpg'),
(4, 6, '', '05_Nata_Or.jpg', '05_Nata_Or_promo.jpg'),
(5, 7, '', '06_Chelentano.jpg', '06_Celentano_promo.jpg'),
(6, 8, '', '07_Queen.jpg', '07_Queen_promo.jpg'),
(7, 9, '', '08_Guns-n-roses.jpg', '08_Guns-n-roses_promo.jpg'),
(8, 11, '', '10_Metallica.jpg', '10_Metallica_promo.jpg');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `stars`
--
ALTER TABLE `stars`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT для таблицы `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `stars`
--
ALTER TABLE `stars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
