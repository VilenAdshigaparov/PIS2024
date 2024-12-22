-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Дек 22 2024 г., 18:15
-- Версия сервера: 5.7.24
-- Версия PHP: 8.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `urbanpulse`
--

-- --------------------------------------------------------

--
-- Структура таблицы `courier`
--

CREATE TABLE `courier` (
  `id` int(45) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `age` int(45) NOT NULL,
  `City` varchar(45) NOT NULL,
  `work` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `delivery`
--

CREATE TABLE `delivery` (
  `id` int(45) NOT NULL,
  `Adress` varchar(45) NOT NULL,
  `Customer` varchar(45) NOT NULL,
  `Type` varchar(45) NOT NULL,
  `Prise` int(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `favorite`
--

CREATE TABLE `favorite` (
  `id` int(11) NOT NULL,
  `login` varchar(45) NOT NULL,
  `Name` varchar(45) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `favorite`
--

INSERT INTO `favorite` (`id`, `login`, `Name`) VALUES
(1, '111', 'Nastya'),
(4, 'Sebiya', 'MOMJEANS'),
(5, 'Sebiya1', 'MOMJEANS'),
(6, 'Sebiya1', 'JIUJO');

-- --------------------------------------------------------

--
-- Структура таблицы `paymentcheck`
--

CREATE TABLE `paymentcheck` (
  `id` int(45) NOT NULL,
  `uniquecode` int(45) NOT NULL,
  `date` date NOT NULL,
  `customer` varchar(45) NOT NULL,
  `prise` int(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `producer`
--

CREATE TABLE `producer` (
  `id` int(45) NOT NULL,
  `Company` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `material` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `tovar`
--

CREATE TABLE `tovar` (
  `id` int(45) NOT NULL,
  `Type` varchar(45) NOT NULL,
  `PlatieCheck` varchar(45) NOT NULL,
  `JeansCheck` varchar(45) NOT NULL,
  `BluzkaCheck` varchar(45) NOT NULL,
  `Provider` varchar(45) NOT NULL,
  `Prise` varchar(45) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Cloth` varchar(45) NOT NULL,
  `Sezon` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tovar`
--

INSERT INTO `tovar` (`id`, `Type`, `PlatieCheck`, `JeansCheck`, `BluzkaCheck`, `Provider`, `Prise`, `Name`, `Cloth`, `Sezon`) VALUES
(1, 'Dress', '+', '-', '-', 'Italy', '30000', 'LIUJO', 'Jersy', 'All');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(45) NOT NULL,
  `login` varchar(45) CHARACTER SET utf8 NOT NULL,
  `password` varchar(45) CHARACTER SET utf8 NOT NULL,
  `City` varchar(45) CHARACTER SET utf8 NOT NULL,
  `e-mail` varchar(45) CHARACTER SET utf8 NOT NULL,
  `phone_number` varchar(45) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `City`, `e-mail`, `phone_number`) VALUES
(8, 'Admin', 'Admin', 'Admin', 'Admin', 'Admin'),
(11, 'Sebiya', 'sebIkka', 'Simferopol', 'Sebiya@gmail.com', '79786666666');

-- --------------------------------------------------------

--
-- Структура таблицы `zakaz`
--

CREATE TABLE `zakaz` (
  `id` int(45) NOT NULL,
  `Name` varchar(45) CHARACTER SET utf8 NOT NULL,
  `adress` varchar(45) CHARACTER SET utf8 NOT NULL,
  `check` varchar(45) CHARACTER SET utf8 NOT NULL,
  `Courier` varchar(45) CHARACTER SET utf8 NOT NULL,
  `city` varchar(45) CHARACTER SET utf8 NOT NULL,
  `Artikul` varchar(45) CHARACTER SET utf8 NOT NULL,
  `TypeOplati` varchar(45) CHARACTER SET utf8 NOT NULL,
  `Status` varchar(45) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `zakaz`
--

INSERT INTO `zakaz` (`id`, `Name`, `adress`, `check`, `Courier`, `city`, `Artikul`, `TypeOplati`, `Status`) VALUES
(5, 'Sebiya', 'Simferopol', '+', 'Alex', 'Sebiya', 'Наличными', 'MOMJEANS', 'получено'),
(6, 'Sebiya1', 'Simferopol', '', 'Sasha', 'Sebiya1', 'Безналичный расчет', 'JIUJO', '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `courier`
--
ALTER TABLE `courier`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `paymentcheck`
--
ALTER TABLE `paymentcheck`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `producer`
--
ALTER TABLE `producer`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tovar`
--
ALTER TABLE `tovar`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `zakaz`
--
ALTER TABLE `zakaz`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `courier`
--
ALTER TABLE `courier`
  MODIFY `id` int(45) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `delivery`
--
ALTER TABLE `delivery`
  MODIFY `id` int(45) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `favorite`
--
ALTER TABLE `favorite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `paymentcheck`
--
ALTER TABLE `paymentcheck`
  MODIFY `id` int(45) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `producer`
--
ALTER TABLE `producer`
  MODIFY `id` int(45) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tovar`
--
ALTER TABLE `tovar`
  MODIFY `id` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `zakaz`
--
ALTER TABLE `zakaz`
  MODIFY `id` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
