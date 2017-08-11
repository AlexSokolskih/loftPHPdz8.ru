-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 11 2017 г., 10:47
-- Версия сервера: 5.5.50-log
-- Версия PHP: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `loftschool`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categorys`
--

CREATE TABLE IF NOT EXISTS `categorys` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `categorys`
--

INSERT INTO `categorys` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'стройматериалы', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `name`, `category_id`, `created_at`, `updated_at`) VALUES
(3, 'профлист2', 1, '2017-08-10 06:36:37', '2017-08-11 06:34:52'),
(4, 'краска', 1, '2017-08-10 06:53:56', '2017-08-10 06:53:56'),
(5, 'брус', 1, '2017-08-10 15:36:04', '2017-08-10 15:36:04'),
(8, 'цсияск2', 1, '2017-08-11 06:47:21', '2017-08-11 06:47:28');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `login` varchar(100) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `description` text,
  `photo` varchar(100) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip` varchar(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `name`, `age`, `description`, `photo`, `updated_at`, `created_at`, `deleted_at`, `ip`) VALUES
(5, 'qazw3', '$6$naborSimvolovFor$.1KC6nkoPZfpWnTFRdm4eJdUDLuzWZ0E/gCb38k6D1gRUyoXnckpl0nWZOYqHkQdKB2r3RhF3sXiZgLcpoUN8.', 'qddadasdasd', 12, '&quot;&quot;&quot;', '149035247074720.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(8, 'q2', '$6$naborSimvolovFor$s7j6Oyieq2YQ/O/vd52VtEQ.XuY1YQymDFZIC6TcsuJ0NQ0D34I30UayGAztBezxxsSZpV0vJPbHRUqRIE5AQ.', '1qw', 0, '&quot;adasd&quot;&quot;&quot;&quot;&quot;&quot;&quot;', '149036140395856.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(10, 'e1', '$6$naborSimvolovFor$xfKb0781TVprwm8smKJqRon2h.N8.UovSkVZacU1H/hP24HqcO4jKyfza6oFhQgQgpUKqBl5ZkOERKs5UHunj.', '', 0, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(11, 'q3', 'q3', '1qw', 0, '&quot;adasd&quot;&quot;&quot;&quot;&quot;&quot;&quot;', '149036140395856.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(12, 'g5', 'q5', NULL, NULL, NULL, NULL, '2017-06-28 07:27:58', '2017-06-28 07:27:58', '0000-00-00 00:00:00', NULL),
(13, 'q8', '$6$naborSimvolovFor$t33aBMsuVFaN6q8kfNT6xtWypnkJSjtEUt1iBiPdk7GURBU2R3jEkxQi2ajpi6F6tz.L.o4FXo/H0CxmE./3Y1', NULL, NULL, NULL, NULL, '2017-06-28 07:28:52', '2017-06-28 07:28:52', '0000-00-00 00:00:00', NULL),
(14, 'b1', '$6$naborSimvolovFor$zs6pDA6cloqSRND2QCfgM4YtTz7dzlmGZtabn4y7Y5lK9iMPh0FJBkdW3U17.ANcgEtqXDmeFD0bs1aoQJ.s1.', NULL, NULL, NULL, NULL, '2017-06-29 14:13:55', '2017-06-29 14:13:55', '0000-00-00 00:00:00', '1270'),
(15, 'b12', '$6$naborSimvolovFor$wO7E9QOB1Wy0LGpEZ615P0HQfzZFN8AEQcVs1tLjdPKwY4Cn/vZJ1okGmDRarWV63k.memtoT/N//NUjKZ5Bz1', NULL, NULL, NULL, NULL, '2017-06-29 14:15:18', '2017-06-29 14:15:18', '0000-00-00 00:00:00', '127.0.0.1');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `table_name_id_uindex` (`id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categorys`
--
ALTER TABLE `categorys`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
