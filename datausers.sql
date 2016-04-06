-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Апр 06 2016 г., 20:25
-- Версия сервера: 10.1.9-MariaDB
-- Версия PHP: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `datausers`
--

-- --------------------------------------------------------

--
-- Структура таблицы `user_datainfo`
--

CREATE TABLE `user_datainfo` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL DEFAULT '',
  `last_name` varchar(255) NOT NULL DEFAULT '',
  `birthplace` varchar(255) NOT NULL DEFAULT '',
  `profession` varchar(255) NOT NULL DEFAULT '',
  `phonenumber` varchar(25) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user_datainfo`
--

INSERT INTO `user_datainfo` (`id`, `first_name`, `last_name`, `birthplace`, `profession`, `phonenumber`) VALUES
(1, 'John ', 'smith', 'london', 'System Architect', '090000'),
(2, 'John ', 'Johnns', 'washington', 'Accountant', '092238'),
(3, 'Tiger', 'Nixon', 'Edinburgh', 'Junior Technical Author', '092311'),
(4, 'Cedric', 'Kelly', 'Senior Javascript Developer', 'Senior Javascript Developer', '099233'),
(5, 'Airi ', 'Satou', 'Tokyo', 'Accountant', '800006'),
(6, 'Bradley', 'Greer', 'London', 'Software Engineer', '786655'),
(7, 'Angelica', 'Ramos', 'London', 'Chief Executive Officer', '453543'),
(8, 'Ashton', 'Cox', 'San Francisco', 'Junior Technical Author', '982313'),
(9, 'Brenden', 'Wagner', 'San Francisco', 'Software Engineer', '546645'),
(10, 'Brielle', 'Williamson', 'New York', 'Integration Specialist', '676767'),
(11, 'Bruno', 'Nash', 'London', 'Software Engineer', '456456'),
(12, 'Caesar', 'Vance', 'New York', 'Pre-Sales Support', '546475'),
(13, 'Cara', 'Stevens', 'New York', 'Sales Assistant', '567574'),
(14, 'Kelly', 'Nash', 'Moscow', 'Integration Specialist', '344534'),
(15, 'Rhona', 'Davidson', 'Tokyo', 'Integration Specialist', '456456'),
(16, 'Colleen', 'Hurst', 'San Francisco', 'Javascript Developer', '567575'),
(17, 'Sonya', 'Frost', 'Edinburgh', 'Software Engineer', '657578'),
(18, 'Jena', 'Gaines', 'London', 'Office Manager', '678779'),
(19, 'Quinn', 'Flynn', 'Keln', 'Support Lead', '444456'),
(20, 'Charde ', 'Marshall', 'San Francisco', 'Regional Director', '644789'),
(21, 'Tatyana', 'Fitzpatrick', 'London', 'Regional Director', '863365');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `user_datainfo`
--
ALTER TABLE `user_datainfo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `user_datainfo`
--
ALTER TABLE `user_datainfo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
