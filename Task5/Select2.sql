-- Написать запрос, который бы выводил имя человека, который участвовал в передаче денег
-- наибольшее количество раз
/*
select p.fullname, count(*)
from persons p, transactions t
where p.id = t.from_person_id or p.id = t.to_person_id
group by p.fullname
*/

-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3307
-- Время создания: Ноя 29 2020 г., 11:38
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `testbase`
--

-- --------------------------------------------------------

--
-- Структура таблицы `p`
--

CREATE TABLE `p` (
  `id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `fullname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `p`
--

INSERT INTO `p` (`fullname`, `count(*)`) VALUES
('Bilbo Beggins', 1),
('Ivan Petrov', 2),
('Leo Klimovich', 2),
('Matea Kezhman', 2),
('Sebastian Haponenka', 4),
('Vasil Lutsevich', 3);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `p`
--
ALTER TABLE `p`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
