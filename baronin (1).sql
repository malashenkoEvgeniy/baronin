-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 18 2021 г., 18:52
-- Версия сервера: 5.7.16
-- Версия PHP: 7.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `baronin`
--

-- --------------------------------------------------------

--
-- Структура таблицы `page`
--

CREATE TABLE `page` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `on_main_page` tinyint(1) NOT NULL DEFAULT '0',
  `sort_order` tinyint(4) NOT NULL DEFAULT '0',
  `live` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `page`
--

INSERT INTO `page` (`id`, `parent_id`, `url`, `banner`, `image`, `on_main_page`, `sort_order`, `live`, `created_at`, `updated_at`) VALUES
(1, NULL, 'o-nas', '/uploads/pages/1607335223services-bg.jpg', NULL, 0, 0, 1, '2020-12-07 08:00:23', '2021-02-11 08:39:06'),
(3, 7, 'design', '/uploads/pages/1607336539services-bg.jpg', '/uploads/pages/project_1.jpg', 1, 1, 1, '2020-12-07 08:22:19', '2021-02-10 10:59:08'),
(6, NULL, 'ceny', '/uploads/pages/1607343335services-bg.jpg', NULL, 0, 1, 1, '2020-12-07 10:15:35', '2021-02-11 12:36:06'),
(7, NULL, 'uslugi', '/uploads/pages/1607335223services-bg.jpg', '/uploads/pages/project_2.jpg', 0, 2, 1, '2020-12-07 10:19:06', '2021-02-14 06:07:20'),
(8, 7, 'repair-finishing-works', '/uploads/pages/1607420946services-bg.jpg', '/uploads/pages/project_2.jpg', 1, 2, 1, '2020-12-08 07:49:06', '2021-02-10 10:58:23'),
(9, 7, 'сonstruction-works', '/uploads/pages/1607420971services-bg.jpg', '/uploads/pages/project_3.jpg', 1, 3, 1, '2020-12-08 07:49:31', '2021-02-10 11:00:24'),
(10, 7, 'heating', NULL, '/uploads/pages/project_4.jpg', 1, 4, 1, '2020-12-08 07:50:55', '2021-02-10 11:01:50'),
(12, 3, 'interior_design', NULL, NULL, 0, 0, 1, NULL, NULL),
(13, 3, 'exterior_design', NULL, NULL, 0, 0, 1, NULL, NULL),
(14, 3, 'landscape_design', NULL, NULL, 0, 0, 1, NULL, NULL),
(15, 9, 'test-123', NULL, NULL, 0, 1, 1, '2021-02-15 10:25:12', '2021-02-15 10:25:12');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `page_url_unique` (`url`),
  ADD KEY `page_parent_id_index` (`parent_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `page`
--
ALTER TABLE `page`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
