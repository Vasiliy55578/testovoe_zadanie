-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 04 2021 г., 17:44
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `bd_products`
--

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `ID` int(11) NOT NULL,
  `PRODUCT_ID` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `PRODUCT_NAME` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PRODUCT_PRICE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PRODUCT_ARTICLE` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `PRODUCT_QUANTITY` int(11) NOT NULL,
  `DATE_CREATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `HIDE_PRODUCT` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`ID`, `PRODUCT_ID`, `PRODUCT_NAME`, `PRODUCT_PRICE`, `PRODUCT_ARTICLE`, `PRODUCT_QUANTITY`, `DATE_CREATE`, `HIDE_PRODUCT`) VALUES
(1, 'TU76GrU', 'Свитер Lee Cooper', '999', 'Эта статья будет о том какой крутой этот свитер.', 210, '20.09.2020', '-'),
(2, 'gnu2000', 'Ботинки Janetta366', '1699,39', 'Качественные Ботинки Janetta366.', 60, '01.12.2020', '-'),
(3, 'АБВГДЕЁЖ?2000', 'Свитер Stone Island', '2999', 'Стильный, молодежный Свитер Stone Island\r\n', 3668, '02.01.2020', '-'),
(4, 'YOOU111', 'Кепка Женская', '399', 'Статья о кепке', 25, '09.05.2020', '-');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
