-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 19 2021 г., 16:53
-- Версия сервера: 8.0.19
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
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
-- Структура таблицы `contact`
--

CREATE TABLE `contact` (
  `id` bigint UNSIGNED NOT NULL,
  `phone_1` char(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_2` char(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_3` char(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `viber` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telegram` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `facebook` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `contact`
--

INSERT INTO `contact` (`id`, `phone_1`, `phone_2`, `phone_3`, `viber`, `telegram`, `email`, `banner`, `created_at`, `updated_at`, `facebook`, `instagram`) VALUES
(1, '066-1-888-286', '099-000-55-89', '099-774-66-89', '4353', '35354535', 'baronindima84@gmail.com', '/uploads/contact/1607349850banner.jpg', '2020-12-07 11:54:45', '2021-02-11 11:50:35', 'asda', 'asd');

-- --------------------------------------------------------

--
-- Структура таблицы `contact_translation`
--

CREATE TABLE `contact_translation` (
  `id` bigint UNSIGNED NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seo_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contact_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `contact_translation`
--

INSERT INTO `contact_translation` (`id`, `title`, `address`, `language`, `seo_title`, `seo_description`, `seo_keywords`, `contact_id`, `created_at`, `updated_at`) VALUES
(1, 'Контакты', 'г.Днепр ул Старокозацкая 25', 'ru', 'Контакты', '<p>Контакты</p>', NULL, 1, '2020-12-07 11:54:45', '2020-12-08 08:48:01'),
(2, 'Контакты', 'г.Днепр ул Старокозацкая 25', 'en', 'Контакты', '<p>Контакты</p>', NULL, 1, '2021-02-10 09:03:35', '2021-02-10 09:03:35');

-- --------------------------------------------------------

--
-- Структура таблицы `design_images`
--

CREATE TABLE `design_images` (
  `id` int UNSIGNED NOT NULL,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `design_images`
--

INSERT INTO `design_images` (`id`, `url`, `page_id`, `created_at`, `updated_at`) VALUES
(1, '/uploads/disign/img1.jpg', 12, '2021-02-13 22:00:00', '2021-02-13 22:00:00'),
(2, '/uploads/disign/img2.jpg', 12, NULL, NULL),
(3, '/uploads/disign/img3.jpg', 12, NULL, NULL),
(4, '/uploads/disign/img4.jpg', 12, NULL, NULL),
(5, '/uploads/disign/img5.jpg', 12, NULL, NULL),
(6, '/uploads/disign/img6.jpg', 12, NULL, NULL),
(7, '/uploads/disign/img21.jpg', 12, NULL, NULL),
(8, '/uploads/disign/img7.jpg', 13, NULL, NULL),
(9, '/uploads/disign/img8.jpg', 13, NULL, NULL),
(10, '/uploads/disign/img9.jpg', 13, NULL, NULL),
(11, '/uploads/disign/img10.jpg', 13, NULL, NULL),
(12, '/uploads/disign/img11.jpg', 13, NULL, NULL),
(13, '/uploads/disign/img12.jpg', 13, NULL, NULL),
(14, '/uploads/disign/img20.jpg', 13, NULL, NULL),
(15, '/uploads/disign/img13.jpg', 14, NULL, NULL),
(16, '/uploads/disign/img14.jpg', 14, NULL, NULL),
(17, '/uploads/disign/img15.jpg', 14, NULL, NULL),
(18, '/uploads/disign/img16.jpg', 14, '2021-02-14 15:07:43', '2021-02-14 15:07:43'),
(19, '/uploads/disign/img17.jpg', 14, '2021-02-14 15:07:43', '2021-02-14 15:07:43'),
(20, '/uploads/disign/img18.jpg', 14, '2021-02-14 15:07:43', '2021-02-14 15:07:43'),
(21, '/uploads/disign/img19.jpg', 14, '2021-02-14 15:07:43', '2021-02-14 15:07:43'),
(24, '/uploads/image/1613700892rectangle-239.jpg', 1, '2021-02-19 00:14:52', '2021-02-19 00:14:52'),
(25, '/uploads/image/1613700899rectangle-240.jpg', 1, '2021-02-19 00:14:59', '2021-02-19 00:14:59'),
(26, '/uploads/image/1613700906rectangle-241.jpg', 1, '2021-02-19 00:15:06', '2021-02-19 00:15:06'),
(27, '/uploads/image/1613700915rectangle-242.jpg', 1, '2021-02-19 00:15:15', '2021-02-19 00:15:15'),
(28, '/uploads/image/1613700921rectangle-243.jpg', 1, '2021-02-19 00:15:21', '2021-02-19 00:15:21'),
(29, '/uploads/image/1613700928rectangle-244.jpg', 1, '2021-02-19 00:15:28', '2021-02-19 00:15:28'),
(30, '/uploads/image/1613705600rectangle-232.jpg', 7, '2021-02-19 01:33:20', '2021-02-19 01:33:20'),
(31, '/uploads/image/1613705605rectangle-233.jpg', 7, '2021-02-19 01:33:25', '2021-02-19 01:33:25'),
(32, '/uploads/image/1613705611rectangle-234.jpg', 7, '2021-02-19 01:33:31', '2021-02-19 01:33:31'),
(33, '/uploads/image/1613705618rectangle-235.jpg', 7, '2021-02-19 01:33:38', '2021-02-19 01:33:38'),
(34, '/uploads/image/1613705626rectangle-236.jpg', 7, '2021-02-19 01:33:46', '2021-02-19 01:33:46'),
(35, '/uploads/image/1613705631rectangle-237.jpg', 7, '2021-02-19 01:33:51', '2021-02-19 01:33:51'),
(36, '/uploads/image/1613707240rectangle-233.jpg', 3, '2021-02-19 02:00:40', '2021-02-19 02:00:40'),
(37, '/uploads/image/1613707246rectangle-234.jpg', 3, '2021-02-19 02:00:46', '2021-02-19 02:00:46'),
(38, '/uploads/image/1613707251rectangle-235.jpg', 3, '2021-02-19 02:00:51', '2021-02-19 02:00:51'),
(39, '/uploads/image/1613707257rectangle-236.jpg', 3, '2021-02-19 02:00:57', '2021-02-19 02:00:57'),
(40, '/uploads/image/1613707264rectangle-237-1-.jpg', 3, '2021-02-19 02:01:04', '2021-02-19 02:01:04'),
(41, '/uploads/image/1613707304rectangle-238.jpg', 3, '2021-02-19 02:01:44', '2021-02-19 02:01:44'),
(42, '/uploads/image/1613710064rectangle-233.jpg', 8, '2021-02-19 02:47:44', '2021-02-19 02:47:44'),
(43, '/uploads/image/1613710069rectangle-234.jpg', 8, '2021-02-19 02:47:49', '2021-02-19 02:47:49'),
(44, '/uploads/image/1613710075rectangle-235.jpg', 8, '2021-02-19 02:47:55', '2021-02-19 02:47:55'),
(45, '/uploads/image/1613710081rectangle-237.jpg', 8, '2021-02-19 02:48:01', '2021-02-19 02:48:01');

-- --------------------------------------------------------

--
-- Структура таблицы `form_request`
--

CREATE TABLE `form_request` (
  `id` bigint UNSIGNED NOT NULL,
  `name` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` char(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_new` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `form_request`
--

INSERT INTO `form_request` (`id`, `name`, `phone`, `page`, `body`, `is_new`, `created_at`, `updated_at`) VALUES
(1, 'jkhkj', '09888888888', 'http://baronin/o-nas', NULL, 1, '2021-02-11 10:59:42', '2021-02-11 10:59:42'),
(2, 'test', '+38098777777', 'http://baronin/landscape_design', NULL, 1, '2021-02-15 07:02:10', '2021-02-15 07:02:10'),
(3, 'test', '+38098777777', 'http://baronin/landscape_design', NULL, 1, '2021-02-15 07:02:23', '2021-02-15 07:02:23'),
(4, 'teww', '+388888888', 'http://baronin/price', NULL, 1, '2021-02-17 12:18:17', '2021-02-17 12:18:17');

-- --------------------------------------------------------

--
-- Структура таблицы `main_page`
--

CREATE TABLE `main_page` (
  `id` bigint UNSIGNED NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `main_page`
--

INSERT INTO `main_page` (`id`, `image`, `created_at`, `updated_at`) VALUES
(1, '/frontend/images/home/seo.jpg', '2020-12-07 10:12:23', '2020-12-08 07:02:09');

-- --------------------------------------------------------

--
-- Структура таблицы `main_page_translation`
--

CREATE TABLE `main_page_translation` (
  `id` bigint UNSIGNED NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `about_us` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `language` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seo_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `main_page_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `main_page_translation`
--

INSERT INTO `main_page_translation` (`id`, `title`, `body`, `about_us`, `language`, `seo_title`, `seo_description`, `seo_keywords`, `main_page_id`, `created_at`, `updated_at`) VALUES
(1, 'Мы строим будущее </br> WKS', '<h1>Seo-текст</h1>\r\n<p>Задача организации, в особенности же укрепление и развитие структуры обеспечивает широкому кругу (специалистов) участие в формировании существенных финансовых и административных условий. Таким образом дальнейшее развитие различных форм деятельности способствует подготовки и реализации форм развития. Разнообразный и богатый опыт рамки и место обучения кадров способствует подготовки и реализации модели развития.</p>\r\n<p>Товарищи! консультация с широким активом требуют от нас анализа соответствующий условий активизации. Идейные соображения высшего порядка, а также консультация с широким активом в значительной степени обуславливает создание форм развития.</p>', '<p>Задача организации, в особенности же укрепление и развитие структуры обеспечивает широкому кругу (специалистов) участие в формировании существенных финансовых и административных условий. Таким образом дальнейшее развитие различных форм деятельности способствует подготовки и реализации форм развития. Разнообразный и богатый опыт рамки и место обучения кадров способствует подготовки и реализации модели развития.</p>\r\n<p>Товарищи! консультация с широким активом требуют от нас анализа соответствующий условий активизации. Идейные соображения высшего порядка, а также консультация с широким активом в значительной степени обуславливает создание форм развития.</p>', 'ru', 'Главная', '<p>Главная</p>', NULL, 1, '2020-12-07 10:12:23', '2020-12-08 07:45:53');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2020_12_07_074725_create_main_page_table', 1),
(10, '2020_12_07_075237_create_main_page_translation_table', 1),
(11, '2020_06_30_180652_create_page_table', 2),
(12, '2020_07_01_071807_create_page_translation_table', 2),
(13, '2020_12_07_121117_create_price_table', 3),
(14, '2020_12_07_121129_create_price_translation_table', 3),
(17, '2020_12_07_130849_create_contact_table', 4),
(18, '2020_12_07_131342_create_contact_translation_table', 4),
(24, '2020_12_07_140817_create_portfolio_table', 5),
(25, '2020_12_07_140833_create_portfolio_translation_table', 5),
(26, '2020_12_07_140847_create_project_table', 5),
(27, '2020_12_07_140857_create_project_translation_table', 5),
(28, '2020_12_07_140956_create_project_image_table', 5),
(29, '2020_11_29_133139_create_form_request_table', 6),
(31, '2021_02_11_093546_add_additional_column_to_page_translation_table', 7),
(32, '2021_02_11_133718_add_facebook_and_instagram_column_to_contact_table', 8),
(34, '2021_02_14_132557_create_design_images_table', 10),
(52, '2021_02_15_133725_create_table_services_table', 11),
(53, '2021_02_15_133750_create_table_services_translations_table', 11),
(54, '2021_02_17_150917_create_slider_images_table', 12),
(55, '2021_02_18_110101_create_table_prices_table', 12),
(56, '2021_02_18_131412_create_table_price_translations_table', 12);

-- --------------------------------------------------------

--
-- Структура таблицы `page`
--

CREATE TABLE `page` (
  `id` bigint UNSIGNED NOT NULL,
  `parent_id` int UNSIGNED DEFAULT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `on_main_page` tinyint(1) NOT NULL DEFAULT '0',
  `sort_order` tinyint NOT NULL DEFAULT '0',
  `live` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `page`
--

INSERT INTO `page` (`id`, `parent_id`, `url`, `banner`, `image`, `on_main_page`, `sort_order`, `live`, `created_at`, `updated_at`) VALUES
(1, NULL, 'o-nas', '/uploads/pages/16136990801607336539services-bg.jpg', '/frontend/images/home/about_us.jpg', 0, 0, 1, '2020-12-07 08:00:23', '2021-02-19 09:00:23'),
(3, 7, 'design', '/uploads/pages/design.jpg', '/uploads/pages/design.jpg', 1, 1, 1, '2020-12-07 08:22:19', '2021-02-19 11:35:49'),
(6, NULL, 'ceny', '/uploads/pages/1607343335services-bg.jpg', NULL, 0, 1, 1, '2020-12-07 10:15:35', '2021-02-19 11:39:56'),
(7, NULL, 'uslugi', '/uploads/pages/1607335940services-bg.jpg', '/uploads/pages/project_2.jpg', 0, 2, 1, '2020-12-07 10:19:06', '2021-02-19 11:32:29'),
(8, 7, 'repair-finishing-works', '/uploads/pages/1607420946services-bg.jpg', '/uploads/pages/project_2.jpg', 1, 2, 1, '2020-12-08 07:49:06', '2021-02-19 02:46:27'),
(9, 7, 'сonstruction-works', '/uploads/pages/1607420971services-bg.jpg', '/uploads/pages/project_3.jpg', 1, 3, 1, '2020-12-08 07:49:31', '2021-02-10 11:00:24'),
(10, 7, 'heating', NULL, '/uploads/pages/project_4.jpg', 1, 4, 1, '2020-12-08 07:50:55', '2021-02-10 11:01:50'),
(12, 3, 'interior_design', NULL, '/uploads/pages/design.jpg', 0, 0, 1, NULL, '2021-02-19 02:41:45'),
(13, 3, 'exterior_design', NULL, '/uploads/pages/1613709868rectangle-237.jpg', 1, 0, 1, NULL, '2021-02-19 02:44:28'),
(14, 3, 'landscape_design', NULL, '/uploads/pages/design.jpg', 0, 0, 1, NULL, '2021-02-19 11:37:06'),
(15, 9, 'test-123', NULL, NULL, 0, 1, 1, '2021-02-15 10:25:12', '2021-02-15 10:25:12');

-- --------------------------------------------------------

--
-- Структура таблицы `page_translation`
--

CREATE TABLE `page_translation` (
  `id` bigint UNSIGNED NOT NULL,
  `title` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seo_title` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seo_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `language` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `additional_title` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `page_translation`
--

INSERT INTO `page_translation` (`id`, `title`, `body`, `seo_title`, `seo_description`, `seo_keywords`, `language`, `page_id`, `created_at`, `updated_at`, `additional_title`, `additional_body`) VALUES
(1, 'О нас', '<p>Задача организации, в особенности же укрепление и развитие структуры обеспечивает широкому кругу (специалистов) участие в формировании существенных финансовых и административных условий. Таким образом дальнейшее развитие различных форм деятельности способствует подготовки и реализации форм развития. Разнообразный и богатый опыт рамки и место обучения кадров способствует подготовки и реализации модели развития.<br />Товарищи! консультация с широким активом требуют от нас анализа соответствующий условий активизации. Идейные соображения высшего порядка, а также консультация с широким активом в значительной степени обуславливает создание форм развития.<br />Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий.</p>', 'О нас', '<p>О нас</p>', '<p>О нас</p>', 'ru', 1, '2020-12-07 08:00:23', '2021-02-11 08:39:06', 'Lorem ipsum dolor sit amet, consectetur', '<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий.</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах.</p>'),
(6, 'Цены', '<h2>Что такое Lorem Ipsum?</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;- это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.</p>', 'Цены', '<p>Цены</p>', NULL, 'ru', 6, '2020-12-07 10:15:35', '2020-12-08 08:55:17', 'Дополнительный заголовок', 'Дополнительный текст'),
(7, 'Услуги', '<h2>Что такое Lorem Ipsum?</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;- это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.</p>\r\n<p>&nbsp;</p>\r\n<h2>Что такое Lorem Ipsum?</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;- это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.</p>', 'Услуги', '<p>Услуги</p>', NULL, 'ru', 7, '2020-12-07 10:19:06', '2021-02-14 06:07:20', 'additiolal title', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Hic quibusdam, cupiditate! Ducimus facilis ipsum nulla, officia asperiores nisi sunt doloribus, corrupti dolores dolore, vero voluptates odit culpa totam. Sapiente, modi assumenda harum. Consectetur doloribus obcaecati, nostrum neque officiis, fugit, maxime hic dicta temporibus excepturi deserunt impedit, totam expedita nam ratione dolorum modi ab! Dicta ratione sed provident odio alias officiis blanditiis, dignissimos molestiae dolorum, modi fuga explicabo soluta magnam dolore, eos. Eligendi veritatis, perferendis consectetur id quos accusantium recusandae dolorem, et eos ea consequuntur laboriosam voluptas eum doloremque blanditiis, at ad sapiente! Dolorum, dolore, quis. Illo asperiores quam, adipisci eveniet ut earum, quasi nihil ipsum in sed accusantium labore eius ratione laudantium hic laborum. Accusantium commodi, necessitatibus minus officia repudiandae dolores unde, alias, culpa incidunt animi repellat perspiciatis obcaecati repellendus accusamus expedita? Possimus laborum vitae dicta maxime repellendus aperiam reiciendis, deserunt ea, alias Lorem ipsum dolor sit amet, consectetur adipisicing elit. Hic quibusdam, cupiditate! Ducimus facilis ipsum nulla, officia asperiores nisi sunt doloribus, corrupti dolores dolore, vero voluptates odit culpa totam. Sapiente, modi assumenda harum. Consectetur doloribus obcaecati, nostrum neque officiis, fugit, maxime hic dicta temporibus excepturi deserunt impedit, totam expedita nam ratione dolorum modi ab! Dicta ratione sed provident odio alias officiis blanditiis, dignissimos molestiae dolorum, modi fuga explicabo soluta magnam dolore, eos. Eligendi veritatis, perferendis consectetur id quos accusantium recusandae dolorem, et eos ea consequuntur laboriosam voluptas eum doloremque blanditiis, at ad sapiente! Dolorum, dolore, quis. Illo asperiores quam, adipisci eveniet ut earum, quasi nihil ipsum in sed accusantium labore eius ratione laudantium hic laborum. Accusantium commodi, necessitatibus minus officia repudiandae dolores unde, alias, culpa incidunt animi repellat perspiciatis obcaecati repellendus accusamus expedita? Possimus laborum vitae dicta maxime repellendus aperiam reiciendis, deserunt ea, alias&nbsp;</p>'),
(11, 'Дизайн', '<h1>Дизайн</h1>\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus, consequuntur. Voluptate rem maxime quisquam quos dignissimos. Corrupti praesentium porro, sint sequi molestias fugit, consequatur laudantium dolorum, eos, suscipit adipisci dolor.Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus, consequuntur. Voluptate rem maxime quisquam quos dignissimos. Corrupti praesentium porro, sint sequi molestias fugit, consequatur laudantium dolorum, eos, suscipit adipisci dolor.Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus, consequuntur. Voluptate rem maxime quisquam quos dignissimos. Corrupti praesentium porro, sint sequi molestias fugit, consequatur laudantium dolorum, eos, suscipit adipisci dolor.</p>\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus, consequuntur. Voluptate rem maxime quisquam quos dignissimos. Corrupti praesentium porro, sint sequi molestias</p>', 'Дизайн', '<p>Дизайн</p>', NULL, 'en', 3, '2021-02-10 10:56:03', '2021-02-19 11:35:49', NULL, '<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий.</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах.</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий.</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона.</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст..</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст..</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст..</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст..</p>'),
(12, 'Ремонтно-отделочные работы', '<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий.</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона.</p>', 'Строительство АЗС', '<p>Ремонтно-отделочные работы</p>', NULL, 'en', 8, '2021-02-10 10:58:23', '2021-02-19 02:46:27', 'Lorem asdgjhasgdasjdgjhas', '<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий.</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона.</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий.</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона.</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий.</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона.</p>'),
(13, 'Строительные работы', '<p><!--(figmeta)eyJmaWxlS2V5IjoiVnRIWklMVUNySmE0V21NUlZJb3FmQiIsInBhc3RlSUQiOjk2NDUyOTcxNiwiZGF0YVR5cGUiOiJzY2VuZSJ9Cg==(/figmeta)--><!--(figma)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(/figma)-->Доходные дома</p>', 'Доходные дома', '<p><!--(figmeta)eyJmaWxlS2V5IjoiVnRIWklMVUNySmE0V21NUlZJb3FmQiIsInBhc3RlSUQiOjk2NDUyOTcxNiwiZGF0YVR5cGUiOiJzY2VuZSJ9Cg==(/figmeta)--><!--(figma)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(/figma)--><span style=\"white-space: pre-wrap;\">Строительные работы</span></p>', NULL, 'en', 9, '2021-02-10 11:00:24', '2021-02-10 11:00:24', NULL, NULL),
(14, 'Отопление', '<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'Heating', '<p>Отопление</p>', NULL, 'en', 10, '2021-02-10 11:01:50', '2021-02-10 11:01:50', NULL, NULL),
(15, 'Цены', '<h2>Что такое Lorem Ipsum222?</h2>\r\n<p>Выбирая нашу компанию для проведения ремонтных работ своего жилья, Вы сэкономите не только средства, но и время для решения множеств вопросов, связанных с этим процессом. Мы составим подробную бесплатную смету по всем видам работ, соответствующих материалов и стоимости на них. Вы получите грамотные и подробные консультации и ответы на все интересующие вопросы, касающиеся объекта от наших специалистов.</p>', 'Цены', '<p>Цены</p>', NULL, 'en', 6, '2021-02-11 12:26:53', '2021-02-19 11:39:56', 'Оплата за организацию работ -20% от общей сметной стоимости работ.', '<p>&nbsp;</p>\r\n<p>Примечание: цена зависит от объема,этажности,сложности работ.<br />За качество материалов предостовляемых заказчиком отвечает-заказчик.</p>\r\n<p><strong>Расчет сметы предварительно оплачивается Заказчиком.</strong><br /><strong>При выполнении работ по смете оплачивается сумма за расчет сметы.</strong><br /><strong>Учитывается в качестве аванса за выполненные работы.</strong></p>\r\n<p>При выполнении работ в жилом.не освобожденном,действующем помещении тарифы увеличиваются на 20%.Оплата за работу производится один раз в неделю по объему выполненных работ.<br />При наличии сложных архитектурных элементов дизайна цены оговариваются индивидуально.</p>\r\n<p><strong>Предостовляемая гарантия на выполненные работы от 12 месяцев</strong></p>'),
(17, 'Дизайн интерьера', 'Дизайн интерьера', 'Дизайн интерьера', 'Дизайн интерьера', 'Дизайн интерьера', 'ru', 12, NULL, NULL, NULL, NULL),
(18, 'Дизайн экстерьера', 'Дизайн экстерьера', 'Дизайн экстерьера', 'Дизайн экстерьера', 'Дизайн экстерьера', 'ru', 13, NULL, NULL, NULL, NULL),
(19, 'Дизайн ландшафтный', 'Дизайн ландшафтный', 'Дизайн ландшафтный', 'Дизайн ландшафтный', 'Дизайн ландшафтный', 'ru', 14, NULL, NULL, NULL, NULL),
(20, 'test', '<p>asdasdsa</p>', NULL, NULL, NULL, 'ru', 15, '2021-02-15 10:25:12', '2021-02-15 10:25:12', NULL, NULL),
(21, 'О нас', '<p><strong>Lorem Ipsum</strong>&nbsp;- это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века.</p>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;- это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века.</p>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;- это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века.</p>', 'О нас', '<p>О нас</p>', '<p>О нас</p>', 'en', 1, '2021-02-18 23:12:18', '2021-02-19 09:00:23', 'Lorem ipsum dolor sit amet, consectetur', '<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий.</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах.</p>');
INSERT INTO `page_translation` (`id`, `title`, `body`, `seo_title`, `seo_description`, `seo_keywords`, `language`, `page_id`, `created_at`, `updated_at`, `additional_title`, `additional_body`) VALUES
(22, 'Дизайн интерьера', '<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий.</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона.</p>', 'Дизайн интерьера', '<p>Дизайн интерьера</p>', '<p>Дизайн интерьера</p>', 'en', 12, '2021-02-19 02:41:45', '2021-02-19 02:41:45', NULL, '<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий.</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах.</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий.</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона.</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий.</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона.</p>'),
(23, 'Дизайн экстерьера', '<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий.</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона.</p>', 'Дизайн экстерьера', '<p>Дизайн экстерьера</p>', '<p>Дизайн экстерьера</p>', 'en', 13, '2021-02-19 02:44:28', '2021-02-19 02:44:28', NULL, '<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий.</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона.</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий.</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона.</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий.</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона.</p>'),
(24, 'Услуги', '<h2>Что такое Lorem Ipsum?</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;- это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.</p>\r\n<p>&nbsp;</p>\r\n<h2>Что такое Lorem Ipsum?</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;- это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.</p>', 'Услуги', '<p>Услуги</p>', NULL, 'en', 7, '2021-02-19 11:32:29', '2021-02-19 11:32:29', 'additiolal title', '<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий.</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах.</p>\r\n<p><!--(figmeta)eyJmaWxlS2V5IjoidTFBWTFjeXVRYjVVVFVWS1l3QjVBNiIsInBhc3RlSUQiOjE3MjM4MjUxNzcsImRhdGFUeXBlIjoic2NlbmUifQo=(/figmeta)--><!--(figma)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(/figma)-->Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий.<br /><br />Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона.</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст..</p>'),
(25, 'Дизайн ландшафтный', '<p>Дизайн ландшафтный</p>', 'Дизайн ландшафтный', '<p>Дизайн ландшафтный</p>', '<p>Дизайн ландшафтный</p>', 'en', 14, '2021-02-19 11:37:06', '2021-02-19 11:37:06', 'Lorem ipsum dolor sit amet, consectetur', '<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст..</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст..</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст..</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст..</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст..</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст..</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст..</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст..</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст..</p>');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `portfolio`
--

CREATE TABLE `portfolio` (
  `id` bigint UNSIGNED NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `portfolio`
--

INSERT INTO `portfolio` (`id`, `image`, `created_at`, `updated_at`) VALUES
(1, '/frontend/images/home/project_1.jpg', '2020-12-08 05:24:31', '2020-12-08 05:24:31'),
(2, '/frontend/images/home/project_2.jpg', NULL, NULL),
(3, '/frontend/images/home/project_3.jpg', NULL, NULL),
(4, '/frontend/images/home/project_4.jpg', NULL, NULL),
(5, '/frontend/images/home/project_2.jpg', NULL, NULL),
(6, '/frontend/images/home/project_1.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `portfolio_translation`
--

CREATE TABLE `portfolio_translation` (
  `id` bigint UNSIGNED NOT NULL,
  `title` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `body_bottom` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `language` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seo_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `portfolio_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `portfolio_translation`
--

INSERT INTO `portfolio_translation` (`id`, `title`, `body`, `body_bottom`, `language`, `seo_title`, `seo_description`, `seo_keywords`, `portfolio_id`, `created_at`, `updated_at`) VALUES
(1, 'Портфолио', '<p><strong>Lorem Ipsum</strong> - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века.&nbsp;</p>', NULL, 'ru', 'Портфолио', '<p>Портфолио</p>', NULL, 1, '2020-12-08 05:24:31', '2020-12-08 10:14:31');

-- --------------------------------------------------------

--
-- Структура таблицы `price`
--

CREATE TABLE `price` (
  `id` bigint UNSIGNED NOT NULL,
  `file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `price`
--

INSERT INTO `price` (`id`, `file`, `page_id`, `created_at`, `updated_at`) VALUES
(1, '/uploads/price/1607424901price.pdf', 6, '2020-12-08 08:55:01', '2020-12-08 08:55:01');

-- --------------------------------------------------------

--
-- Структура таблицы `price_translation`
--

CREATE TABLE `price_translation` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `price_translation`
--

INSERT INTO `price_translation` (`id`, `title`, `language`, `price_id`, `created_at`, `updated_at`) VALUES
(1, 'Стоимость и цены на проектирование домов и коттеджей', 'ru', 1, '2020-12-08 08:55:01', '2020-12-08 08:55:01');

-- --------------------------------------------------------

--
-- Структура таблицы `project`
--

CREATE TABLE `project` (
  `id` bigint UNSIGNED NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int NOT NULL,
  `portfolio_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `project`
--

INSERT INTO `project` (`id`, `image`, `url`, `position`, `portfolio_id`, `created_at`, `updated_at`) VALUES
(5, '/uploads/projects/1607429759project-1.jpg', 'pogar', 1, 1, '2020-12-08 10:15:59', '2020-12-08 10:29:34'),
(6, '/uploads/projects/1607429791project-2.jpg', 'eleonora', 2, 1, '2020-12-08 10:16:31', '2020-12-08 10:29:48'),
(7, '/uploads/projects/1607429812project-3.jpg', 'kovyari', 3, 1, '2020-12-08 10:16:52', '2020-12-08 10:29:51'),
(8, '/uploads/projects/1607429830project-4.jpg', 'letniy', 4, 1, '2020-12-08 10:17:10', '2020-12-08 10:29:54'),
(9, '/uploads/projects/1607429830project-4.jpg\r\n', 'project-test1', 1, 1, '2021-02-12 11:29:26', '2021-02-12 11:29:26'),
(10, '/uploads/projects/1607429830project-4.jpg\r\n', 'project-test2', 1, 1, '2021-02-12 11:30:24', '2021-02-12 11:30:24'),
(11, '/uploads/projects/1607429830project-4.jpg\r\n', 'project-test13', 1, 1, '2021-02-12 11:31:04', '2021-02-12 11:31:04'),
(12, '/uploads/projects/1607429830project-4.jpg\r\n', 'project-test14545', 1, 1, '2021-02-12 11:31:19', '2021-02-12 11:31:19'),
(13, '/uploads/projects/1607429830project-4.jpg\r\n', 'project-test1ds', 1, 1, '2021-02-12 11:31:34', '2021-02-12 11:31:34'),
(14, '/uploads/projects/1607429830project-4.jpg\r\n', 'project-test1111', 1, 1, '2021-02-12 11:31:49', '2021-02-12 11:31:49'),
(15, '/uploads/projects/1607429830project-4.jpg\r\n', 'project-test1222', 1, 1, '2021-02-12 11:32:10', '2021-02-12 11:32:10'),
(16, '/uploads/projects/1607429830project-4.jpg\r\n', 'project-test19', 1, 1, '2021-02-12 11:32:23', '2021-02-12 11:32:23'),
(17, '/uploads/projects/1607429830project-4.jpg\r\n', 'project-test17', 1, 1, '2021-02-12 11:32:36', '2021-02-12 11:32:36'),
(18, '/uploads/projects/1607429830project-4.jpg\r\n', 'project-test1asdasadad', 1, 1, '2021-02-12 11:32:46', '2021-02-12 11:32:46');

-- --------------------------------------------------------

--
-- Структура таблицы `project_image`
--

CREATE TABLE `project_image` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `project_image`
--

INSERT INTO `project_image` (`id`, `image`, `project_id`, `created_at`, `updated_at`) VALUES
(18, '/uploads/projects/1607431098gallery-photo-1.jpg', 5, '2020-12-08 10:38:18', '2020-12-08 10:38:18'),
(19, '/uploads/projects/1607431098gallery-photo-2.jpg', 5, '2020-12-08 10:38:18', '2020-12-08 10:38:18'),
(20, '/uploads/projects/1607431098gallery-photo-3.jpg', 5, '2020-12-08 10:38:18', '2020-12-08 10:38:18'),
(21, '/uploads/projects/1607431098gallery-photo-4.jpg', 5, '2020-12-08 10:38:18', '2020-12-08 10:38:18'),
(22, '/uploads/projects/1607431098gallery-photo-5.jpg', 5, '2020-12-08 10:38:18', '2020-12-08 10:38:18'),
(23, '/uploads/projects/1607431098gallery-photo-6.jpg', 5, '2020-12-08 10:38:18', '2020-12-08 10:38:18');

-- --------------------------------------------------------

--
-- Структура таблицы `project_translation`
--

CREATE TABLE `project_translation` (
  `id` bigint UNSIGNED NOT NULL,
  `title` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `body_bottom` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `language` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seo_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `project_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `project_translation`
--

INSERT INTO `project_translation` (`id`, `title`, `body`, `body_bottom`, `language`, `seo_title`, `seo_description`, `seo_keywords`, `project_id`, `created_at`, `updated_at`) VALUES
(4, 'Погар', '<p><!--(figmeta)eyJmaWxlS2V5IjoiVnRIWklMVUNySmE0V21NUlZJb3FmQiIsInBhc3RlSUQiOjQzNzI2Mzk1NiwiZGF0YVR5cGUiOiJzY2VuZSJ9Cg==(/figmeta)--><!--(figma)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(/figma)-->Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', NULL, 'ru', 'Погар', NULL, NULL, 5, '2020-12-08 10:15:59', '2020-12-08 10:38:02');
INSERT INTO `project_translation` (`id`, `title`, `body`, `body_bottom`, `language`, `seo_title`, `seo_description`, `seo_keywords`, `project_id`, `created_at`, `updated_at`) VALUES
(5, 'Элеонора', '<p><!--(figmeta)eyJmaWxlS2V5IjoiVnRIWklMVUNySmE0V21NUlZJb3FmQiIsInBhc3RlSUQiOjQzNzI2Mzk1NiwiZGF0YVR5cGUiOiJzY2VuZSJ9Cg==(/figmeta)--><!--(figma)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(/figma)-->Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', NULL, 'ru', 'Элеонора', '<p>Элеонора</p>', NULL, 6, '2020-12-08 10:16:31', '2020-12-08 10:38:53'),
(6, 'Ковяри', '<p>Ковяри</p>', NULL, 'ru', 'Ковяри', '<p>Ковяри</p>', NULL, 7, '2020-12-08 10:16:52', '2020-12-08 10:16:52'),
(7, 'Летний', '<p>Летний</p>', NULL, 'ru', 'Летний', '<p>Летний</p>', NULL, 8, '2020-12-08 10:17:10', '2020-12-08 10:17:10'),
(8, 'project_test1', '<p>project_test1</p>', '<p>project_test1</p>', 'en', NULL, NULL, NULL, 9, '2021-02-12 11:29:26', '2021-02-12 11:29:26'),
(9, 'project_test2', NULL, NULL, 'en', NULL, NULL, NULL, 10, '2021-02-12 11:30:24', '2021-02-12 11:30:24'),
(10, 'project_test13', NULL, NULL, 'en', NULL, NULL, NULL, 11, '2021-02-12 11:31:04', '2021-02-12 11:31:04'),
(11, 'project_test14545', NULL, NULL, 'en', NULL, NULL, NULL, 12, '2021-02-12 11:31:19', '2021-02-12 11:31:19'),
(12, 'project_test1ds', NULL, NULL, 'en', NULL, NULL, NULL, 13, '2021-02-12 11:31:34', '2021-02-12 11:31:34'),
(13, 'project_test1111', NULL, NULL, 'en', NULL, NULL, NULL, 14, '2021-02-12 11:31:49', '2021-02-12 11:31:49'),
(14, 'project_test1222', NULL, NULL, 'en', NULL, NULL, NULL, 15, '2021-02-12 11:32:10', '2021-02-12 11:32:10'),
(15, 'project_test19', NULL, NULL, 'en', NULL, NULL, NULL, 16, '2021-02-12 11:32:23', '2021-02-12 11:32:23'),
(16, 'project_test17', NULL, NULL, 'en', NULL, NULL, NULL, 17, '2021-02-12 11:32:36', '2021-02-12 11:32:36'),
(17, 'project_test1asdasadad', NULL, NULL, 'en', NULL, NULL, NULL, 18, '2021-02-12 11:32:46', '2021-02-12 11:32:46');

-- --------------------------------------------------------

--
-- Структура таблицы `slider_images`
--

CREATE TABLE `slider_images` (
  `id` int UNSIGNED NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_video` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `slider_images`
--

INSERT INTO `slider_images` (`id`, `url`, `is_video`, `created_at`, `updated_at`) VALUES
(2, '/uploads/slider/1613696066slide.jpg', 0, '2021-02-18 22:54:26', '2021-02-18 22:54:26'),
(3, '/uploads/slider/1613731165video.mp4', 1, '2021-02-19 08:39:25', '2021-02-19 08:39:25');

-- --------------------------------------------------------

--
-- Структура таблицы `table_prices`
--

CREATE TABLE `table_prices` (
  `id` bigint UNSIGNED NOT NULL,
  `table_services_id` bigint UNSIGNED NOT NULL,
  `order_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `table_prices`
--

INSERT INTO `table_prices` (`id`, `table_services_id`, `order_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2021-02-18 22:37:58', '2021-02-18 22:37:58'),
(2, 1, 1, '2021-02-18 22:38:23', '2021-02-18 22:38:23'),
(3, 1, 1, '2021-02-18 22:39:00', '2021-02-18 22:39:00'),
(4, 2, 1, '2021-02-19 08:40:36', '2021-02-19 08:40:36'),
(5, 2, 1, '2021-02-19 08:41:01', '2021-02-19 08:41:01'),
(6, 1, 1, '2021-02-19 11:46:23', '2021-02-19 11:46:23'),
(7, 1, 1, '2021-02-19 11:46:44', '2021-02-19 11:46:44'),
(8, 1, 1, '2021-02-19 11:47:09', '2021-02-19 11:47:09'),
(9, 1, 1, '2021-02-19 11:47:32', '2021-02-19 11:47:32'),
(10, 1, 1, '2021-02-19 11:48:03', '2021-02-19 11:48:03'),
(11, 1, 1, '2021-02-19 11:48:20', '2021-02-19 11:48:20'),
(12, 1, 1, '2021-02-19 11:48:35', '2021-02-19 11:48:35'),
(13, 1, 1, '2021-02-19 11:48:57', '2021-02-19 11:48:57'),
(14, 1, 1, '2021-02-19 11:49:22', '2021-02-19 11:49:22'),
(15, 1, 1, '2021-02-19 11:52:33', '2021-02-19 11:52:33');

-- --------------------------------------------------------

--
-- Структура таблицы `table_price_translations`
--

CREATE TABLE `table_price_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `units` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_price_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `table_price_translations`
--

INSERT INTO `table_price_translations` (`id`, `title`, `cost`, `units`, `language`, `table_price_id`, `created_at`, `updated_at`) VALUES
(1, 'Погрузка или разгрузка строительных материалов вручную', '200', 'т.', 'en', 1, '2021-02-18 22:37:58', '2021-02-19 11:42:45'),
(2, 'Погрузка строительного мусора на автомобиль', '600', 'Зил', 'en', 2, '2021-02-18 22:38:23', '2021-02-19 11:43:21'),
(3, 'Разгрузка или погрузка строительных материалов с помощью крана', '50', 'т.', 'en', 3, '2021-02-18 22:39:00', '2021-02-19 11:45:43'),
(4, 'Демонтаж металлоконструкции', '1500', 't.', 'en', 4, '2021-02-19 08:40:36', '2021-02-19 08:40:36'),
(5, 'Демонтаж бетонной стены толщеной 90 мм.', '1000', 'м²', 'en', 5, '2021-02-19 08:41:01', '2021-02-19 08:41:01'),
(6, 'Разметка зданий и сооружений с устройством выносок осей, отметок горизонта', 'от 3000', 'шт.', 'en', 6, '2021-02-19 11:46:23', '2021-02-19 11:46:23'),
(7, 'Сварочные работы              Цены металла на день выполнения работ', '100', '%', 'en', 7, '2021-02-19 11:46:44', '2021-02-19 11:46:44'),
(8, 'Установка кондиционеров № 7-9 с материалом до 2м. / далее 1 м. - 300 грн.', '1850 / +', 'шт.', 'en', 8, '2021-02-19 11:47:09', '2021-02-19 11:47:09'),
(9, 'Усиление проемов металлоконструкцией', 'дог.', 'ед.', 'en', 9, '2021-02-19 11:47:32', '2021-02-19 11:47:32'),
(10, 'Работы которые нормировать не возможно (по фактически затраченному времени)', '75', 'чел/час', 'en', 10, '2021-02-19 11:48:03', '2021-02-19 11:48:03'),
(11, 'Сборка лесов', '40', 'м²', 'en', 11, '2021-02-19 11:48:20', '2021-02-19 11:48:20'),
(12, 'Разборка лесов', '20', 'м²', 'en', 12, '2021-02-19 11:48:35', '2021-02-19 11:48:35'),
(13, 'Аренда лесов', '5', 'м²/сутки', 'en', 13, '2021-02-19 11:48:57', '2021-02-19 11:48:57'),
(14, 'Механизмы и транспорт', 'факт', '.', 'en', 14, '2021-02-19 11:49:22', '2021-02-19 11:49:22'),
(15, 'Подноска стройматериалов и груза до 10 м, за каждый следующий 10 м и каждый этаж добавляется', '150', 'т.', 'en', 15, '2021-02-19 11:52:33', '2021-02-19 11:52:33');

-- --------------------------------------------------------

--
-- Структура таблицы `table_services`
--

CREATE TABLE `table_services` (
  `id` bigint UNSIGNED NOT NULL,
  `order_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `table_services`
--

INSERT INTO `table_services` (`id`, `order_by`, `created_at`, `updated_at`) VALUES
(1, 0, '2021-02-18 22:36:13', '2021-02-18 22:36:13'),
(2, 1, '2021-02-18 22:36:41', '2021-02-18 22:36:41'),
(3, 2, '2021-02-18 22:36:51', '2021-02-18 22:36:51'),
(4, 3, '2021-02-18 22:37:00', '2021-02-18 22:37:00'),
(5, 4, '2021-02-18 22:37:09', '2021-02-18 22:37:09'),
(6, 5, '2021-02-18 22:37:19', '2021-02-18 22:37:19');

-- --------------------------------------------------------

--
-- Структура таблицы `table_services_translations`
--

CREATE TABLE `table_services_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_services_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `table_services_translations`
--

INSERT INTO `table_services_translations` (`id`, `title`, `language`, `table_services_id`, `created_at`, `updated_at`) VALUES
(1, 'Общестроительные (Разные) работы', 'en', 1, '2021-02-18 22:36:13', '2021-02-18 22:36:13'),
(2, 'Демонтаж, разборка и другое', 'en', 2, '2021-02-18 22:36:41', '2021-02-18 22:36:41'),
(3, 'Земляные работы', 'en', 3, '2021-02-18 22:36:51', '2021-02-18 22:36:51'),
(4, 'Бетон, раствор', 'en', 4, '2021-02-18 22:37:00', '2021-02-18 22:37:00'),
(5, 'Гидроизоляция', 'en', 5, '2021-02-18 22:37:09', '2021-02-18 22:37:09'),
(6, 'Кладка стен и перегородок; кирпич и т.д.', 'en', 6, '2021-02-18 22:37:19', '2021-02-18 22:37:19');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$10$lJ8SeZXeUhl5EXHcSlSjA.JQksXqcFFW6N7721Nt4vwytjDNC8FwW', NULL, '2020-12-07 07:36:25', '2020-12-07 07:36:25');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `contact_translation`
--
ALTER TABLE `contact_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_translation_contact_id_foreign` (`contact_id`);

--
-- Индексы таблицы `design_images`
--
ALTER TABLE `design_images`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `form_request`
--
ALTER TABLE `form_request`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `main_page`
--
ALTER TABLE `main_page`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `main_page_translation`
--
ALTER TABLE `main_page_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_page_translation_main_page_id_foreign` (`main_page_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `page_url_unique` (`url`),
  ADD KEY `page_parent_id_index` (`parent_id`);

--
-- Индексы таблицы `page_translation`
--
ALTER TABLE `page_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_translation_page_id_foreign` (`page_id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `portfolio_translation`
--
ALTER TABLE `portfolio_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portfolio_translation_portfolio_id_foreign` (`portfolio_id`);

--
-- Индексы таблицы `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`id`),
  ADD KEY `price_page_id_foreign` (`page_id`);

--
-- Индексы таблицы `price_translation`
--
ALTER TABLE `price_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `price_translation_price_id_foreign` (`price_id`);

--
-- Индексы таблицы `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_portfolio_id_foreign` (`portfolio_id`);

--
-- Индексы таблицы `project_image`
--
ALTER TABLE `project_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_image_project_id_foreign` (`project_id`);

--
-- Индексы таблицы `project_translation`
--
ALTER TABLE `project_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_translation_project_id_foreign` (`project_id`);

--
-- Индексы таблицы `slider_images`
--
ALTER TABLE `slider_images`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `table_prices`
--
ALTER TABLE `table_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `table_prices_table_services_id_foreign` (`table_services_id`);

--
-- Индексы таблицы `table_price_translations`
--
ALTER TABLE `table_price_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `table_price_translations_table_price_id_foreign` (`table_price_id`);

--
-- Индексы таблицы `table_services`
--
ALTER TABLE `table_services`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `table_services_translations`
--
ALTER TABLE `table_services_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `table_services_translations_table_services_id_foreign` (`table_services_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `contact_translation`
--
ALTER TABLE `contact_translation`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `design_images`
--
ALTER TABLE `design_images`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT для таблицы `form_request`
--
ALTER TABLE `form_request`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `main_page`
--
ALTER TABLE `main_page`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `main_page_translation`
--
ALTER TABLE `main_page_translation`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT для таблицы `page`
--
ALTER TABLE `page`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `page_translation`
--
ALTER TABLE `page_translation`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `portfolio_translation`
--
ALTER TABLE `portfolio_translation`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `price`
--
ALTER TABLE `price`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `price_translation`
--
ALTER TABLE `price_translation`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `project`
--
ALTER TABLE `project`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `project_image`
--
ALTER TABLE `project_image`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `project_translation`
--
ALTER TABLE `project_translation`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `slider_images`
--
ALTER TABLE `slider_images`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `table_prices`
--
ALTER TABLE `table_prices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `table_price_translations`
--
ALTER TABLE `table_price_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `table_services`
--
ALTER TABLE `table_services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `table_services_translations`
--
ALTER TABLE `table_services_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `contact_translation`
--
ALTER TABLE `contact_translation`
  ADD CONSTRAINT `contact_translation_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contact` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `main_page_translation`
--
ALTER TABLE `main_page_translation`
  ADD CONSTRAINT `main_page_translation_main_page_id_foreign` FOREIGN KEY (`main_page_id`) REFERENCES `main_page` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `page_translation`
--
ALTER TABLE `page_translation`
  ADD CONSTRAINT `page_translation_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `page` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `portfolio_translation`
--
ALTER TABLE `portfolio_translation`
  ADD CONSTRAINT `portfolio_translation_portfolio_id_foreign` FOREIGN KEY (`portfolio_id`) REFERENCES `portfolio` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `price`
--
ALTER TABLE `price`
  ADD CONSTRAINT `price_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `page` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `price_translation`
--
ALTER TABLE `price_translation`
  ADD CONSTRAINT `price_translation_price_id_foreign` FOREIGN KEY (`price_id`) REFERENCES `price` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_portfolio_id_foreign` FOREIGN KEY (`portfolio_id`) REFERENCES `portfolio` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `project_image`
--
ALTER TABLE `project_image`
  ADD CONSTRAINT `project_image_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `project_translation`
--
ALTER TABLE `project_translation`
  ADD CONSTRAINT `project_translation_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `table_prices`
--
ALTER TABLE `table_prices`
  ADD CONSTRAINT `table_prices_table_services_id_foreign` FOREIGN KEY (`table_services_id`) REFERENCES `table_services` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `table_price_translations`
--
ALTER TABLE `table_price_translations`
  ADD CONSTRAINT `table_price_translations_table_price_id_foreign` FOREIGN KEY (`table_price_id`) REFERENCES `table_prices` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `table_services_translations`
--
ALTER TABLE `table_services_translations`
  ADD CONSTRAINT `table_services_translations_table_services_id_foreign` FOREIGN KEY (`table_services_id`) REFERENCES `table_services` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
