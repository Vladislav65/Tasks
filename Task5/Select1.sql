-- Написать запрос, который бы выводил полное имя и баланс человека на данный момент
/*
select p.fullname, 100 + sum(
case p.id
when t.from_person_id then - t.amount
else t.amount
end) as balance
from transactions t, persons p
where p.id = t.from_person_id or p.id = t.to_person_id
group by p.fullname
*/

-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3307
-- Время создания: Ноя 29 2020 г., 11:33
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

INSERT INTO `p` (`fullname`, `balance`) VALUES
('Bilbo Beggins', '113.0000'),
('Ivan Petrov', '95.9300'),
('Leo Klimovich', '77.0000'),
('Matea Kezhman', '90.5800'),
('Sebastian Haponenka', '112.4200'),
('Vasil Lutsevich', '111.0700');

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
