-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 08 2020 г., 16:07
-- Версия сервера: 5.6.38
-- Версия PHP: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `fertighaus`
--

-- --------------------------------------------------------

--
-- Структура таблицы `contact`
--

CREATE TABLE `contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone_1` char(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_2` char(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_3` char(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `viber` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telegram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` char(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `contact`
--

INSERT INTO `contact` (`id`, `phone_1`, `phone_2`, `phone_3`, `viber`, `telegram`, `email`, `banner`, `created_at`, `updated_at`) VALUES
(1, '068-620-84-01', '099-774-66-89', '099-774-66-89', '068-620-84-01', 'link', 'test@test.com', '/uploads/contact/1607349850banner.jpg', '2020-12-07 11:54:45', '2020-12-07 12:04:10');

-- --------------------------------------------------------

--
-- Структура таблицы `contact_translation`
--

CREATE TABLE `contact_translation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci,
  `seo_keywords` text COLLATE utf8mb4_unicode_ci,
  `contact_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `contact_translation`
--

INSERT INTO `contact_translation` (`id`, `title`, `address`, `language`, `seo_title`, `seo_description`, `seo_keywords`, `contact_id`, `created_at`, `updated_at`) VALUES
(1, 'Контакты', 'г.Днепр ул Старокозацкая 25', 'ru', 'Контакты', '<p>Контакты</p>', NULL, 1, '2020-12-07 11:54:45', '2020-12-08 08:48:01');

-- --------------------------------------------------------

--
-- Структура таблицы `form_request`
--

CREATE TABLE `form_request` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` char(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `is_new` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `main_page`
--

CREATE TABLE `main_page` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `main_page`
--

INSERT INTO `main_page` (`id`, `image`, `created_at`, `updated_at`) VALUES
(1, '/uploads/pages/1607418129slide.jpg', '2020-12-07 10:12:23', '2020-12-08 07:02:09');

-- --------------------------------------------------------

--
-- Структура таблицы `main_page_translation`
--

CREATE TABLE `main_page_translation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `about_us` text COLLATE utf8mb4_unicode_ci,
  `language` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci,
  `seo_keywords` text COLLATE utf8mb4_unicode_ci,
  `main_page_id` bigint(20) UNSIGNED NOT NULL,
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
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
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
(29, '2020_11_29_133139_create_form_request_table', 6);

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
(1, NULL, 'o-nas', '/uploads/pages/1607335223services-bg.jpg', NULL, 0, 0, 1, '2020-12-07 08:00:23', '2020-12-07 08:00:23'),
(3, 7, 'grazhdanskoe-stroitel-stvo', '/uploads/pages/1607336539services-bg.jpg', '/uploads/pages/1607336539project-1.jpg', 1, 1, 1, '2020-12-07 08:22:19', '2020-12-07 10:19:12'),
(6, NULL, 'ceny', '/uploads/pages/1607343335services-bg.jpg', NULL, 0, 1, 1, '2020-12-07 10:15:35', '2020-12-08 08:55:17'),
(7, NULL, 'uslugi', '/uploads/pages/1607343546services-bg.jpg', NULL, 0, 2, 1, '2020-12-07 10:19:06', '2020-12-08 08:41:48'),
(8, 7, 'stroitel-stvo-azs', '/uploads/pages/1607420946services-bg.jpg', '/uploads/pages/1607420946project-2.jpg', 1, 2, 1, '2020-12-08 07:49:06', '2020-12-08 07:49:06'),
(9, 7, 'dohodnye-doma', '/uploads/pages/1607420971services-bg.jpg', '/uploads/pages/1607420971project-3.jpg', 1, 3, 1, '2020-12-08 07:49:31', '2020-12-08 07:49:31'),
(10, 7, 'greenbox', NULL, '/uploads/pages/1607421055project-4.jpg', 1, 4, 1, '2020-12-08 07:50:55', '2020-12-08 07:50:55');

-- --------------------------------------------------------

--
-- Структура таблицы `page_translation`
--

CREATE TABLE `page_translation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `seo_title` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci,
  `seo_keywords` text COLLATE utf8mb4_unicode_ci,
  `language` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `page_translation`
--

INSERT INTO `page_translation` (`id`, `title`, `body`, `seo_title`, `seo_description`, `seo_keywords`, `language`, `page_id`, `created_at`, `updated_at`) VALUES
(1, 'О нас', '<p>О нас ыфволыфрв фыодлвр фдыолврфывло</p>', 'О нас', '<p>О нас</p>', '<p>О нас</p>', 'ru', 1, '2020-12-07 08:00:23', '2020-12-07 08:00:23'),
(3, 'Гражданское строительство', '<h1>Гражданское строительство</h1>\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus, consequuntur. Voluptate rem maxime quisquam quos dignissimos. Corrupti praesentium porro, sint sequi molestias fugit, consequatur laudantium dolorum, eos, suscipit adipisci dolor.Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus, consequuntur. Voluptate rem maxime quisquam quos dignissimos. Corrupti praesentium porro, sint sequi molestias fugit, consequatur laudantium dolorum, eos, suscipit adipisci dolor.Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus, consequuntur. Voluptate rem maxime quisquam quos dignissimos. Corrupti praesentium porro, sint sequi molestias fugit, consequatur laudantium dolorum, eos, suscipit adipisci dolor.</p>\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus, consequuntur. Voluptate rem maxime quisquam quos dignissimos. Corrupti praesentium porro, sint sequi molestias</p>', 'Гражданское строительство', '<p>Гражданское строительство</p>', NULL, 'ru', 3, '2020-12-07 08:22:19', '2020-12-07 08:27:27'),
(6, 'Цены', '<h2>Что такое Lorem Ipsum?</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;- это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.</p>', 'Цены', '<p>Цены</p>', NULL, 'ru', 6, '2020-12-07 10:15:35', '2020-12-08 08:55:17'),
(7, 'Услуги', '<h2>Что такое Lorem Ipsum?</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;- это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.</p>', 'Услуги', '<p>Услуги</p>', NULL, 'ru', 7, '2020-12-07 10:19:06', '2020-12-08 08:41:48'),
(8, 'Строительство АЗС', '<p><!--(figmeta)eyJmaWxlS2V5IjoiVnRIWklMVUNySmE0V21NUlZJb3FmQiIsInBhc3RlSUQiOjE5ODIxMTI2MDMsImRhdGFUeXBlIjoic2NlbmUifQo=(/figmeta)--><!--(figma)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(/figma)-->Строительство АЗС</p>', 'Строительство АЗС', '<p>Строительство АЗС</p>', NULL, 'ru', 8, '2020-12-08 07:49:06', '2020-12-08 07:49:06'),
(9, 'Доходные дома', '<p><!--(figmeta)eyJmaWxlS2V5IjoiVnRIWklMVUNySmE0V21NUlZJb3FmQiIsInBhc3RlSUQiOjk2NDUyOTcxNiwiZGF0YVR5cGUiOiJzY2VuZSJ9Cg==(/figmeta)--><!--(figma)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(/figma)-->Доходные дома</p>', 'Доходные дома', '<p><!--(figmeta)eyJmaWxlS2V5IjoiVnRIWklMVUNySmE0V21NUlZJb3FmQiIsInBhc3RlSUQiOjk2NDUyOTcxNiwiZGF0YVR5cGUiOiJzY2VuZSJ9Cg==(/figmeta)--><!--(figma)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(/figma)--><span style=\"white-space: pre-wrap;\">Доходные дома</span></p>', NULL, 'ru', 9, '2020-12-08 07:49:31', '2020-12-08 07:49:31'),
(10, 'GREENBOX', '<p>GREENBOX</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/skFeEI-GsV4\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe></p>', 'GREENBOX', NULL, NULL, 'ru', 10, '2020-12-08 07:50:55', '2020-12-08 07:50:55');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `portfolio`
--

CREATE TABLE `portfolio` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `portfolio`
--

INSERT INTO `portfolio` (`id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'null', '2020-12-08 05:24:31', '2020-12-08 05:24:31');

-- --------------------------------------------------------

--
-- Структура таблицы `portfolio_translation`
--

CREATE TABLE `portfolio_translation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `body_bottom` text COLLATE utf8mb4_unicode_ci,
  `language` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci,
  `seo_keywords` text COLLATE utf8mb4_unicode_ci,
  `portfolio_id` bigint(20) UNSIGNED NOT NULL,
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_id` bigint(20) UNSIGNED NOT NULL,
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_id` bigint(20) UNSIGNED NOT NULL,
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `portfolio_id` bigint(20) UNSIGNED NOT NULL,
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
(8, '/uploads/projects/1607429830project-4.jpg', 'letniy', 4, 1, '2020-12-08 10:17:10', '2020-12-08 10:29:54');

-- --------------------------------------------------------

--
-- Структура таблицы `project_image`
--

CREATE TABLE `project_image` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `body_bottom` text COLLATE utf8mb4_unicode_ci,
  `language` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci,
  `seo_keywords` text COLLATE utf8mb4_unicode_ci,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `project_translation`
--

INSERT INTO `project_translation` (`id`, `title`, `body`, `body_bottom`, `language`, `seo_title`, `seo_description`, `seo_keywords`, `project_id`, `created_at`, `updated_at`) VALUES
(4, 'Погар', '<p><!--(figmeta)eyJmaWxlS2V5IjoiVnRIWklMVUNySmE0V21NUlZJb3FmQiIsInBhc3RlSUQiOjQzNzI2Mzk1NiwiZGF0YVR5cGUiOiJzY2VuZSJ9Cg==(/figmeta)--><!--(figma)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(/figma)-->Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', NULL, 'ru', 'Погар', NULL, NULL, 5, '2020-12-08 10:15:59', '2020-12-08 10:38:02');
INSERT INTO `project_translation` (`id`, `title`, `body`, `body_bottom`, `language`, `seo_title`, `seo_description`, `seo_keywords`, `project_id`, `created_at`, `updated_at`) VALUES
(5, 'Элеонора', '<p><!--(figmeta)eyJmaWxlS2V5IjoiVnRIWklMVUNySmE0V21NUlZJb3FmQiIsInBhc3RlSUQiOjQzNzI2Mzk1NiwiZGF0YVR5cGUiOiJzY2VuZSJ9Cg==(/figmeta)--><!--(figma)ZmlnLWtpd2kEAAAAoh8AALV7a5QkyVVeRFZVP6ZnZmdnd/VCCCGEEELA7EO7KyGEsrOyunK6qjI3M6t6ZhEqZVdld+dOdVVRWd0zvQghyTK2Me+HwOZhIctGCCyEEeZhIQS2wcZCGIEFNrIshLAxtsHHx8fHxz98/H0R+arpkf6ho+2498bNGzdu3HvjRkTN22Q3TtPoMA7P5rEQl6+7Tm8YhKYfCvyv5zbtodU2ezt2AFT2A9uv4IbitntNwLXA2emZHUD1ILzZsQE0FDAMbMpaU7xK8jDYdbyhb3dck1+u99zQad0cBm2332kO+96Obzb5/UYGDptuj/hmjvt2y7eDNkgXAsvu2UOQvfbwqb7t3wRxq0r0ba9D4sWm02qhvWTeSVKofgOwYIc0RyOYACTfNptDt6fYhUL2fCfkyLI3G8feUZTGYLPQFdrUHExdd6BAuZdMx8n00D+ZkKfn9p62fRcdwm2qfkrQNn4AnTZIoula/a7do3WkZfYGZgDI2PHdvgeg1vLNLvnq267bsc3e0PVs3wwdtwdiY2BboesDWqNN0a53HCV2w+50HC8guOmDCYulVuOCb+/0O6Y/9NzOzR0lZAtD9Zp2E0Yq+S6G9g2qdCnoOBYJl4Ob3W2XK3uf08NgPUW9EoSOtUtT3R+0Tc8e7jlhe5h9ezU4iubxXrI8CuM7Sz3tjeCpvunb6BWlhrLpmF1XOZAR+o7SAR4AtFagTXePytbvpWzDM32z04ErYbW7Q9/ZaXP8tVVyx26Rur49iafjLhYCi+CZQTAM2xC6Q0eCq/td5b6yafq7Nkc0uv1O6Gj3qdG6MN5232dX3XI7boE1OhxXfbMWwD0UpNYDXzTd5o4NfEN/kqObcBy/Y1L2hcBthUMlA9hW2/SbBabc1vZtbfRL9g2r0w+0C1xu90m7LzDDfuEXV9QoAO7v9LtOzw2ckENc9aJkmi3EeuB2HFpcwDhNBw6I0agqKLIgsVX2gEMCJAlGpwOBVitoYMrWr+50TTWzBoLiugNgzTlGYglG0STWRkdm8O3QUvZuOZyebDkdNUjoqPWs2QcH8ShTtO70esg3cC+4ADpF03e9EpUtFy6NBew1h9udPvUytk1rd5VUowdaKnLXXPiHo5OU6HuIJrSy4+4pACqEWocAjtAZWqbHeKyX2LDl+paK9gaFNuPRbBEtk9kU3+QxjZGxrDAnYInpOrt26WRG7+R4P170p8kyxTe+yWkIz7lhdwIAEhohc9EuhjWbpstFZdGwmKAL9it1ZddkCjMwRmbSWmCZagL1FiQ2h/qLRoYo7rVguZjdis1JcjjFB4UwgcB2VM6Vbj/MQEMzW9EcUvL5YSpqtWURzYbp++6eciFOoqZR+6m+00GaRBiCWNeirs8SDttFUlWjbtsDm90yl2psz2aTOJq68zi3bL3f054NHfFZgOAHLIP+duibCjZuKIdXC61m1p4tkmdn02U0wedZ7FcMBydQoWVc7yOHtRy1ouXXg3ixTOCzpLkeuiqfbrth6HYBGd3ZSRpbJ4t0tsDiNO2WiVyBDmH5bgAXdXzA0r5p02exrsAM7JtqKM/EVJA7LPgG8Lqn8kUDjeV0AK0NEAKzRTdZLCi98C3En1pfqQCEI9KE3dsJufhGM0qPdJQZFrIrSKJ0DakiUXtS3evtgCSuezZbGQzYGF6Tu2PNvjOfLZZ3e1/NcmECKJ27mMgJe05TjS9zQtvOzduJzmYny51FMtZC6tohK+YsFTS0f9bKb7xouYwXU3SBy/GUbyFhqcQl1WKdLGd+nCbPQnRhIqWOskyhhywgOPTZJA7ibFIwuB+4WToIbZPrKi34hF5hlBgoKHoW02cttLue65uqvIAzazGw0jIuTHQuqwKUeU7E0NHoll6fQtk28tHTMJvSQGI7wI6qYM2tvBHs58ymbaWZrNkJlFhkvI3PyVtYumb2Q9YlmAU+v36SLpODM6Cf80vPtOwhAlXXRTX1WaCtrlILiKiDAudpexi6wyytrxDgJFgUp+uhoADGHvAwxU3h6IhybcEixyA6bB/rMmT5CVz2fWUVJne0NavjquKh7nDqUUXERbc3hPcrNmG2IGYYOl0bOQ247LqoX4dqnoaGdUcNX7W5HQOu6w7sMGRraEwVJGvg8jAvOiJKVqXqRtM3GT2b6Nu1b+afXQA6cHX1tBUuommalDq+ALkW9Us4RP5C1s32bdF0AnjQwAYoWyhy0RqowFDttny3KGFqFVKex+oVms5YjQqlSFlrXj9oa1ombL2k5LI2SpIWtVkSCkkXWPRqWiZpq6Tkki6WJC3pUkkoJF3WimIZwJQLu2+FmMu7skLVIu9foRVSr6qRMmom9IEqLZf5YJWoRT5UJRUSn4Mwdqwh+4A9FyUBTjFmD9GtjgfPQ9HnokgoKc+3oxSnAb3iGzj4WP1tx0KHoOgckSjQKqjBPVTXV/iC3l501cm3Qmnob1doazp7Ffh6MFrMJpNmstBxBjmZ436e3INJqzyhv0WQLhli8RiBv4zRb9/wkF913FuQwF1YYXKnjwQojRSnKQwGeF3IyQxbqQIR7xNsZ7K+EJtCHuKPsY8/tQh/6nrHw8d3gMkz/DF8kMBdEm7jT+0If+pKUrCczfHBiLAYCDmf6SgDg9GNlovkjpBrx9euAZfH1x5GYxxfewRN7fhhEuvHD5PYOH6YxDUvWiCXO9NxjO+Mw5NkLMKK0K28eEPnaTQ5ifGNPFGF3AuE0YKVetFxLGTtIDpOJmfglym3CQAGhCzT0SKZL4HVyDuIFkmET06O40UyaiWHJwuYFhtDdgYR8ARHbdPS7TTVMRqwGmb102AejeBnK996qDhcrGe2tcnQ3M7K9nsIaHFxOcGqBBT1OCAqGHs0PEytb/VrK5qn8K/yE4SEKuQlmmGOGJ6Nopqq10AYFhhrOstUObwBEia7A3CtIt/L7V5VCzUf/qL0w8YNQOkTKCNjcQouBz6tvF+iilQ5txVHS2XgP5Ue6nh0CesRT7FkWhiWF5BeozZolYJoG9khfi1weiyP1l2/2UO7YbZ89m82eyo/XOj1u1RpC8c2E+1FbEKc0qWmbi+3dXsfjgZsr5imqhbvt3R71bdU+0Cg8Qf9gTpYPsTARPucYE9ddzzXCvbYPg+LQ/rzLatLvV8Q6M39C9pOQPoLsz32C12/R/1eRKOg/SJsOVzKFzdDdeL44lbH5Dxe0t3xuWd+SQBfQ/vSXWzAaL+0hYIK7cvauv2yth735aHGv/wp3b7C0+1XsKRG+8pOa5v4V7qear/KD1X71Z7+/pq326OdHu4gfaB9BC31fNQPO8QfQ0v8Vea2P0D7uLk9IP4EWur95EDLefUACqF9zXZnj+vzNWjJ91q05Ptac7fNebzOuq6OCl9ntVQgvN7yFG5afZ9829h9iVtIbmybLS3fbuG4iLaF9hG0O2gfRdvGsBzPQUv519t6Phhth/p02u51+g2KKlUP9Rzs7Wjd694TT6L1rntPUs5T171XX0PrX/euPYY26Fzv8ruw41rk72Oj4boMunaTJ+o9tNTjRne3S/rNXkfVOk/3+rsh2q9HgUK93oA2QPsNAxgc7Ru9ICR9iJb0N/m7PvHI99ps9/3+Ntd9FKBIQzsOtR5x2FNl8QGWiet3OMBdA9qjge5PBnrezwx2lb/cGvihj3aC9hG0x0GAzCvEFC3xGdpH0c7RPob2G9G+Cu0C7eNoU7RPoF2ipZ1O0L4a7WkQIGcLcRst5d1BS3lnaCnvWbSU901oKe/NaCnvm9FS3lvQUt63oKW8t8ogeIQC3yatgdLw7QQo8q8RoMx3EKDQv06AUr+VAMX+DQKU+zcJUPDfIkDJ3wZAqfq3CVDytxOg5O8gQMnfSYCSv4sAJX83AUr+HgKU/L0EKPn7CFDy9wNQOv8AAUp+JwFK/kEClPxDBCj57xCg5L9LgJJ/mAAl/wgBSv5RApT8YwAepeS/R4CS30WAkn+cACW/mwAl/30ClPweApT8DwhQ8j8kQMk/QYCS3wvgMUr+SQKU/D4ClPxTBCj5pwlQ8j8iQMnvJ0DJP0OAkj9AgJJ/lgAl/2MAr6LknyNAyR8kQMk/T4CS/wkBSv4FApT8iwQo+ZcIUPIvE6Dkf0qAkj8E4HFK/hUClPxhApT8qwQo+SMEKPnXCFDyrxOg5H9GgJL/OQFK/hcEKPk3ADxByb9JgJL/JQFK/lcEKPm3CFDyvyZAyR8lQMm/TYCSP0aAkn+HACX/GwBPUvLvEqDkjxOg5N8jQMm/T4CS/y0BSv4EAUr+AwKU/IcEKPnfEaDkfw9Apag/IkDJnyRAyf+BACV/igAl/0cClPxpApT8xwQo+TMEKPlPCFDyZ+Xddw0orZbYrsUjQuYllsGashvN5yxypHGwmB2zLFvO8NfYnsz2hZT7Z8s4FTWpLzmEUcM9/RHxKSsy1F/jaBkp3nVUX8kEZ0aLRaM5fganXyE3lhwb5Vx6FI1nt1OAxlFyeIQj9RHKOxSM43gZJRNA9Rgqp6wlUDie4sgd45IC8NoyPlZXVrpr/TTZx6lvRHhD3bzqYbOnFmFc+KsdcoTCaBFhbptic39BmVOMDOyCUkYY9ys7XxFyREOgejZmLCSXrLNrp0ma7KOokqKOJrswvywaKQruVLxBrkH2ND2YLY7FG8V6ooz+rNhQQHiEInlKzZ8Vm9EUNJwcHPaAcEUTUNah6sTSrIv7gVdviK+KC4sZzhlggSZbKTsAXDxQ5rOobLZqbxaX5pxLS/WIt4jL8fHsmcSCFA+3jDDiuryPBWIXhmzCAYTRuBWfibGQB6B2kmncjmkZiDdIaSaHMeTWUMED02XlXNSJ7GnGBopV3DtpYVujo4ilc7xI4WKywNSHTpPDGylh9zRe4DorDiMYEwEvaxN1x6WuUG7AxLiankCbFJuJbBxOzuZHKXYRuTYurpdT7CFyXX82wIAgwXYbVK2Y3dul3DyIJpN93M600JGKsbxwhFVeQPit7dkdDPCtUm61KyRh1PdxfTROxdM4yywmmEh+8Kkd5Xyo6xp4gsq0FMY6vFGX5jeEvJ2MlzyRGey7CaBGoDBsnZiZjnCwArZ+kCzSpZVbClNowLuq+NoOpy+MtdHs+DiCYlnUlsewG0JbFVohmA8wUWVHDHVeeDQ+zQJirVnYUhjGAgdLTFnKUpKhz5/KkkbtVCG9eHl7triVqzCFv0cTDDZWI+aKnF9eZixcXmIaksZMRShlcHa8P5tk4lOFYNwQ8a/gXEhKAQZOlQyugM7fwmwQoDBsLjZPhoahFkrOQUP9gMsizB3KKYF+fBDjOIvJG5sHySTehefDS1PVqUY2MCQdqR0hV+JUSlU9iMrEpyg3ZD3PrI1JguSyOKMO4Sw42edpdh9sJIhTyfWaz6ZYZj3Q+sn0YML72yl4qhI3krSfd8UIRbGptbby77tRitXLDDXKqVqqnJ/sT5L0CMI4LrUNZ2EcHXdK7TiIcfcg2aMSfFelvQdFJe0dHKTxEqtZW0Tj5IQ5sl7mvwaaIv+tpfNFHI3BsR4yASqHdKYHMyyFktsRcnySeRlCwkMmm7GjGZ8mo/zyPb9/YYGubv+lhSOTOkQaioYrGR7dgdf0h36eEHnI1R9b1t5QbcryrkEQ0URQ0WGxMzeF1piiM4Ydk4MEoYHVxlda5ruQ5Ol9SC5eFmMhBeC1EpqoY7bAxVh+iyYJFz0GsfwurYZ7I8wj56xnaMHcyAg5/1rX7PXV4WQ9U2AbqetwwYTklPe6GKWYNa998T6vb3h5R5c9VMlzAvQcii9x+HKaw/xl9Dy7OZ/HSBwqXoz9gqykvBemLElW7ji9CHuxsqHiwuW1OcDZX11vCFwTZk+7MthTFw4GW/76QTHgpU7dF+qLeBsb/GIZYF+HZ6fC2EhPDg5wewWPV9ujGuCawE1XUSgtRS09PWSY9LiRYhGBolCip34AfgvMPVky+3LHQj8iFDbFtuBOcTklxTo4WrPFKA7UwxzC7lYK8kamy2AnEyYMpzXs2XZ232d29sybAQDZUbsRH2qQYpbU8DEhI/60wkBuKSKoNj05DhB7sFMqsI9k8YZSJtXUgF6KDH14gnBdZNj6KDPzxpxRjFegx8XmDjIU1qeWDSILUcWe5SEjYAFvJ+UvMTYEYn1lL8GzCdJ2SI15f6UdJHuFxmWX7+6SYmQ/ZKjZeH1XVwV1XA3gVg1QI3uFWtO5S8mrJFy9L2QpC55WybJ5jiYDTI6ZcQkxp5SU7BO8KJbXX/imzN/Zlex2fATng30gT/kRFwRTwFvMcK9tIz7aTqc5dFt4rWM3btdw7a5/SyLNxagYM8JD5/TQnB7CUKhFkeoqqJHgdWbh51mxFqi9o4OKAN+eLBLoI8dJOp9EZ8oHt1Bna1S5HLT1JieHyTQbba4Q2A2f6eIeH9zS0/JUnx9PopPp6Eh/UJ8rov7gGNUrAgEggkCtJsBakjbjSYz6En5W589rsPtPwWX8pdp44RGqDaNDLPur5kcoYcSaMBSgiY/PsRz5pe+bRK2CaoYnlvSTC0JlVU16chqp2TbYatKrS39fy0Dd8Rrcft9S+q1rSJO/piy2NzJQd7wWXxb7zWaB6M6vHSEBLQFcUIAmvi5lxNxAqYxWk74OOaIozy8WiO58/RieiDiB603FprxUQTWDGalnVU4Oal8uMd29XaZCe8qSh5O77xxRM1vHSCvov8JWk5qxSjDWaja6/zxVs9v80kldncvAeXWFoJla5fCutiYM+8A5ombeQSFY9esHq7hmaVfKyodyWHc58JDocBHNj+gkWI1N8Zy7SJrxekHNb+g3xXPvpmnWXQaiw2BTFR8Yn7dK0Wyd4wSr1EnQgOX5aDJMd3dTlcizo8qmeEEV1yy9JQIzxL56C2OD5QuquGZxj4qfTmAxIELtNi8UL7wXXX/iAcNAJo6uU/Ei8YUVVDM8pSlWNBcvFi8qEN3pa1z9MOQl4otKTHcHVFHJahcKiJeJF9+DrD8Ii55B/jOOl4svPkfUzH3SLWQD8RzxkhzWXQOilVPD88SXrFI0297+3b9Xeal46d00zXrjNBu7NCAM+6XnqZr9JtL+xCOeirdK+bIS1f1Pgxum0iRyfFmVoHm+njGSHcb2xctLTHe/gb7dQ2jjUPzlOay7vkFNlon4HVK8Ikd03xtjVU2nuFqUX5HBumeI/DvGzqZ+twKfEq8Ur7yLpBnfpOM9yEue90v5laskzRdxZFOloBQxKJ4UX7VK0Wz72HRmuhhJcTEov7qCa46RPtJxErh9FddKVPeP1QaMzWZdPJyBuiMu04iV1SSP3EXSjAdcoJ14dhwvF2e4eZSPVgma51AvUU4k12OrJM13hPjPfizyOpEUiO58RuFZBkEU36rimmWiSF405n4OluMqrlmm3BmR+NXRcZYjum+eqq2e1sE1tPjGEtX9iwPe3nSRiJtJqtI9EnN6jqiZlwu9ULMW8pYUuKwqUM1wqhd+Gxpqo+bfg/u2UtwCFclOBbDYFncU8TougfjDlaY4S3VRpbQs67B3SvFskmqqpw+OFAup3wSo+KB6On3zGC+ip3kPJ8zz+DdX2Qe6nsP+/xZGTPZaaaEomU07PBBwghjjW1Z6of6d5UmE6qnkeKu6h8pYMOfRImaywDm2yvW2KlcbvoAoQraosry9yuIusMZIehLvGBVyMME+H4+fjhczdL2j2tXL3oH1G/QBXjvOd2beJY5whXS+t4UthKqLZ/AwUulGkk/FBNdaFVpR2E7xZEK3wxQ+KOW3SeS+7EjNSg6RGOIFZY5zqjrdBtgQl0XHt5cdpduoWER4fodEAkQ5E01YRmC23ylnp+p6BbuzXkQl5Luy25BmDNPjaR4jY1W/W/J2CGUktt3ZvBMfYPXK+gCx9D0rDD6z6V0c31tybM+Wy9nxPaR839089xL0/SVT2ZOwysC7NibDePqBu3lCbD6rLO+ktRhimGEKX0TGibATML5+UGrfhv/qixbEL2ynPP+HJP4P1mxV1EXHj0g8LJW0EAsgOtgHSlKzvAD5YRlHxW9gevgWdsbppfwxiof3ppFSOjiezZa818Fn75LJ9AhuxZvdSaBzMZbrx3JyoBJm2fHuvCNEjJXkn8jJtkovZcd7iw61dZUdP5l3cN8oye/LyRV9Wvz1CdVA/y/JJC26YNMfBa47c8qPy5SQssMvSjygKXTV735VnuRXVjBDNSm9R+KMg0XJY3Af7234EpZ09QH4Bt7d4OBZWvqpbEkDjlFZzg9JPLRVuspE+csSL29Jupoj3y9jZTca1UxxH0AA9J8BZzA7QCEErTJRIH8A5N5s2p+PsWVnIn42UxMuB/8YKW70Ch9b9KikYTfAFH5O4sYDjniUTMZQq5mcIjXwquqDFefykPDixSneCygXQ/w8BU2xiuhU5m1jTy1J/NnglvgF+r/OFtkl2bsl1iFVQoqz9IclDKEyB9TCtyHYxXW8CpbDh8lxjLICPvqhKmc3AoL/VET9igSS91SC4cNyHGPDmioc5xcsGIoUfPCRyuWSrt2wM8hfk/d0uu2CFY736zLKzvIfkXh1hLlW966OKoIGmWc08B45xVQPlQZqdj8t8TQ5O1Wa5HlZdbxH4qky6+CpfAnBOQPW6jfzvlIdp5w0vBG75jkOs7xie5/Ec6faEzLdtvDquYR/9bG6nRWt1/EMqi8COCNMQX4Ub3+HyHZjd+qGLf3DnlQs5G8X9IODlY6PVVYwOJqdTMbBMTYTUz1F0U9/R6YsKHR58Xo8pSq0PFhkdRMW8Xd1F5RTJXvZ8XHdsadeQ1ri9zSqa23gv6/Mgayi7nFCPMDOdbBhdXmV8IkcVwnnD+DBWTom+xYeZZPUwpsoHmUzvng8yAy0hQdabSAuVHF98htS/hHEQH345SI4mTOWszTF1GRyv2TmZQHxSa1uVmYhIDmpFp53CwFpJuFzCPiULF6LoA5egW/FZ+EiOTxEBP+hFJ+G/gFDfweeMAf/H5cRWXGcFKaXn5GnM4SofYrZe0d4w6R9/gTegqvK/ufIkJ/V+nsLrOjirND/T1fIankdvJmmKBn/k+7KZlzper34z1kXE1H2KdTmTw//TPdkq+6rtd0U/2WFqjdzkP9c0tVZrrGu3o4xAWQf5ExMFA9C/1V/pUZRwwfx5AC17X/LipIOTJkiwuV/J2NmOQ/bOFzvbMDrMxR6NP5vSfkXkrHTQW2olv6jUvylDD7PR7ihnGdE2FZfxuENUxphVYyBt7t0CYdsCLl/MoHmIZZLfEzyYpCVBbICSt74NJ6ART37oRzk7yNxy7tdfiBqrt+0fX193O+ViHR6TbwNACpfSireAAX0FR5GQBnzcYyrO1KEk1y9+yu+txWvsZaUckKQkcdlhbSSsDGboqOSr2urLly/h1c2yrxS7gxrhS6mEimMSyVbUcBWUlIIVtRQRkmparFSQdVLnnLAihb3zG68+M+2QyWmzcv1nKI3yA1mp8k9U/3m+S3jQjnguf14S+vbQh5iPy4YL8KnFpFmQGbW9cqlzLJNvR2Lxq59c9s1fboFfGS35+7hEps/LcbttXo8kje23Rt4+rEBG17wGJpasOeEVnvoqR9o1nfL9TJ4r8wfAuDFQcLUipqN9QmseBsz0cnKMPSrtzqJYF2MQRLfZqKD942i6WmUsupCiY4NDC/GQs5RpEww7VPwYb6Gwpsx7cFLx5r+aEdLq6t/I0RR+p8JvUJI3a+EdmYjZVfYw6iQkQj02vB9/um7JVqTZHRL4IVzjK0Rr+JwXn6v7VusmzSmmD34syKnMLwRamNgl9RLLmRtpqFsBHk0W6bz2TJDjfR2NM/g2t0f6zzRmGks4/p8AuZ5bDhlzGV99eyzbSSjOS6Kls4YZzHRgK1TBB3qGiQc2NLYR/AFOCvHfBrAcNnoKXI6MljhmuUpQxgt19/LnMu38TIX0IskTm8qe3n4el/lYpyiMMLaDDGkBvszvPxN49sFYpzTsUkda4Dy2YCCuSRpW3M60158+64pYFLjQrk/R4CuKuDxdQLezR+OOngtVGqb266vQWm53a4TasRY/XQ3PjvgJQxfW5SUv8AEYPNDKMDzpLFE1kiX0fEcSPaWlO2j+GR/dVa5YR0k+ztwNiNV/IUr4dFGj61rfvgBrhiWuVG1QtjOhDxPDmAHHHD/ByyqhWZKpOJ/IrNXlawrD0dRWMZKo4+Uo+UI4+rKPzXI8ppO61MaAo9Eo+xaoI6EeBjrhNdg+Kow/yTsf6yi9FN4o0nz2MMOvTHbx0CnUEusy81xzOzR0zIvYPWwoCoWU/FpKbf0NPL4S8VnpMTDy2q0pOKzUl7CUAtouyUuK7vkPJm/wHnuW6F794gYfB6KK8ucJRffZDQiCO6fAysXJhX/S8qrARRGPYCnh6dOYtw88pES2wRm18syBW4MULtinUnQ9k278TKCjEgYch+Pp6gf4wnra3oA7N2F8WFTYTxEDeGPsrocBlRQQG1aSsTJQNZpgxz/31I2lGxxR66lKISiSWbl9WiEAioVdbGR8gAUxOp+Gj2bOR5y2NeICzluoV7Fwijya8XWHJbkftsQFxWYaY79R6EoZhkyEHhZD+xFZ5NZNAbhvnTFXgkU/T9SXqlMpDDN/8Xr1QEkDVCNYeqY71Ul3Uk9GjiaTM7ck2WajGN7OprAQ7A9qiCV4gHF6MGESHaheBBVPrZ0KR5qJgcH1tEJN6j1yphwRKkDG6+YY/3W2kM3jAo/V/uEElTXcGathsacVLkQpokR1kaUnprqBgQahUcYmyQMsc7Rc1MY9SkGyMfH4mlHwGJBgUzJVPw/hC3Rbez+iqv+/wEpMgAA7Z1peFVF0vj73kDYd1RExOuGirjruEE8zjjzzsKo476bCFGjYRECoqI2ECBh30FUCMgmAiIii7IcFUVBBBVlUTCAKCLiAiIKyP9XfW+FYr78P7/P8/bzHLtu/bqqq6v7nHu6E0kikXRZrua03/yErFr9Xd1V/RLu4dq3FP39jn+0vvkvnf6Zd/Gt7f59wy3/6PDI/X92DVzD1yq/mHWMq1Qp4VzSVUpUvqZDmy7t8tsXuexE1aedc9VcXVffuYQLft3JrlKy8vV5D+SnLjjSoqZUlFDVSYhBA5EvfOqDlSv1EsWjbkDitcrTs1zi1+xzxV8Cf7Uqt+7QKb9dqqBj5y7tUm07FHbolOpcUJTKa5df1CLVpkP7zvltivKLunRK5bUt6FjQuU1B+wdS+YUFwM75bTFI5Rd06dyuQ9tUUX67jhgXtG9T0LagbZf2RakuRanCvPtwn8ovoiWu81Pt8h5on5fKKyx4pEveuambi1L57Qva4TvVrkCErnzMa9ci9UiXgs6p9h06F3Xq0jaV3y2/U5uCoryigg7tU10KC/PatemQ9iyNCjoXSE/BZUFHGqfy8wi8HTF1oGYAdFV0buoacZnXpSg/VdCpC5GEgAg31Sm/Y6f8B/Pbt83vxMBRdO1Q2KUj3eUTDiNN5XfunJ9qU1BYqBliQF1S93d5oCCvKNVeAkp1zOvEhy6dzk39tVub/I5F+SSscwE56NCmTV5+G9q16dKxoG0eXhlW+1THTh0K2jLRZFEyRadtuhR2zJNxpzrcf39Bm4K8VNv8zvmdhLbrUChh5EmCCkhH50xeu7Q7N9WaaND+3+z9b5w9buIqLnMb1yh18fl9nGudvp/7uzVbwy3dL+Gb13K1w319TC/nUse649zxPSCNBZ/gmrgTk03dSS7F4+EUd6o73TVLJHicpJ8IWfIfniwJd4Y78+nG5z3pzrqawRa6G/If6FKY18mFT/++yTVPtCY1hPh/S+l/41L6vwfB/+bZc5X07q+cnXC93Pork6Xuu7OzXCXu+NlV+I+r7LJH8h7git2uLsnS8l1nZqGdbfjIRPasJA16u33NsG56XlYxzDSYlcxewZe+NBiWLC1r1zyrt3PXmAYrsrLLK6Ub/JEsze10njSwHsorZR+qTIM+7olLkiVu8FdZhFzbNDhUOftAtuOSB5AMIz2CFME/5eImLpFI9nRlkSWJDEkme/0XSWY/6dzNLpEFKSmzJCtjUylZ7ApTllSC+OkuURmSO8aSynjz2GRDimJLsrO7O7fcJapAisstqYK3GJuqyd7ulkaWVIVQEtWEtLSkGkRsKkEeamtJdUg6tt6ubZklNTKxVYe0n2tJTWxiSALS8wtLamVIjWQf9y8ydITUzownAbmuuiV1MjZJyO1NLalLBJLrypBbmltSD+KxqQq582JL6uONQkYhf7OkQSaCmpB7r7WkYcab9NP2NkuOyZBakIL7LDmWfmJIJUjnrpYcB5GMZkE6jrCkEURsJILHp1lyfKaf2pCn51jSOEMktuJFlpyQIXUgpe9a0oR+KCHXpestORESY1MXMnyXJU0zpGqyr7/WWXIShMJ4INUsSUHEpg7kxgaWnAyhMFJIE0tOyUSNN3fLyZacik0MwcbdebYlp2VsquHt7vMtOT1jk4Tcd4UlzbBJr52+Li+y5AyIx6YWNm3+asmZGW/VIQ9eZ8lZGZINaXe7Jc0zq6oKpMPdlpxtbIoesKRFxkZy3fVhS87BhhIy2rXIknMzRLx1fdKS8zLe6kK69bDkfGwkgnqQJ/tbckGGkB3fc6QlF2ayI/PTe6wlF2VsakD6TbLk4kwExOYGHLWuL8kQmdNBMyz5U6af2kQw5BVLLs0QYnPD51lyWYZI3ka+YcnlxEaRqP3IZZZcAYmxkTkd+6ElV2YI/fjxR90lLTP9YOMmbrKkVcYmAZn6jSU5GYI3N+MnS67KeJPYZu2zJMrYZCdL4tudJVdn8lYNckfSkj9nbKomS6K7q1jyFwiFJ1JJtKmGJddA5ImUSJb4u466T/8KEW/V+eK8t5Elf8uQytjknWjJ/2TGU5PYtp5kyd8zJAtvbU+x5B8Zb8Tm7z/Dkn9CJLYqeNt+riX/gogNUUc7LrKkdYYksdl5mSX/JoL0XV/idl5pybUQjw25jh7OseS6TK7rQgojS67P9FOHftof9aT4D4Qi3uLd/7Dkhow3Mhr/8C9LbsRGvGET/Xy9JTcdsYn23GDJzRkbWQe/3GrJLRkiUe+/y5JbM0Tm5/c8S27L5ECy072tJbdnCP1Eh+635A7j7fDDltyZsRFvPdpbcleG1MBb8hFL7s6MtBYkq7Ml92T6qU8/lbtZcm+GyDqo+qQluRki66B6T0vyiEDWgazE6r0tuS9jQ9S+Zj9L2mDjIdjEAwdY0jZjQw6iIUMtyc/YiLd6Iyy5P0OY03jYKEseyHiT8Yx81pIHM4S8xaPLLCnI5A2beMxESx7K2JCD6NmpljxMBJkc+LHTLSnM2BC1e/5lS9ph4yHcp1HTOZa0x0buU2bOP7/Qkg6QGJt6eCtbYknHDGGN+olvW/JIhuDNTX7Pkk4ZQmx+6ipLOmdiwyY+c40lRRkb8had/aklXTJ5k3uuxTpLumZIA8g5Gyx5NOONeyE+b7Ml3TKECKILt1nyWIY0xObiHZY8noma8bh5Oy15IkOOwdul31vSXbw9kl5vC/ZY8mTGBm/+8n2WPJUhzHb8+n5LnhZvEGYhWnzIEp/IoOxkafm9CYt6JDL5qZQszc1NWtRTrGQpVGZDl8q2qFciE0WtZGlZbhWLisUqBlWnry3VLOqtCIepNjUt6qMOCSN+oZZFfcVKwiD43Db1LCrR4OvSV5v6FpWKVYxDrFLbG1rUT63oq2z7MRb1FyvpiwijycdbNEAjPJa+tje2aKBYUZiT0vLTT7RokKAYKyJMTT3JosGKiDD3zFMsGqIRkt7yM0+1aKhaEXxq+ukWDRMkwdcmhwVnWTRcg2dcudObWzRCUYNk2N2rng19uqNqYdNs0ShF2UnZNVs0WiOvCoq9RWPEikIMxS63qkXPaAx1QUXnWzRWrGJQAvTcUQ6fVVQVtGyNRc8JonBn9Xb31bToee0rCSpMWTROkDxJZV99/2UWjReHMVaySX4816IyRbKzHlRi0QRx6EFZoDHPWTRRrY4DzVhm0QuCKMFqxg6LJgkSK9lDH53DydKXBC/bxLsbWjRFrCjMF6iZRVN1vmSrmneuRdPEoacv2RMfnY0XxWEMEquOrS2arlbSV5dbLHpJ+5Lt6mP3WDRDHcp+tVcni2Yqko3xwD4WzdK+qoGGDbHoZbWSA4rnJlk0W8MQVDbDolcUyZAnzbVojjqUc4BZ71n0qiC57yTzL31t0VxBlDDkl/Zb9JogcchGwt+RbdE8HZfswO6uYdH8IxH2dffWsWiBOqwPanu8RQsVyXam4FSLXlfEztq1P8eiNyQMWVFs93zhRRYt0jBkh9b+UosWi0NKGFf7yKIl4tDTFztY98hfLVoqVjGIvlzX6yyKTV+u240WvSlWlGDV7S6L3lIrwvivG/ZtDUOOGbrnW7RMHMYg9rG+RweL3lErcVhcZNG7ipgU3+cxi5arQ6bS9+9l0XsaIcH7gX0tel9RA9Dg/hatUIcS/IiRFq1UJA6fGW/RB+pQTi+efcGiVWrFuHzZTIs+1HGxo3UvzLFotVodB5q2yKI1giji0E17x6KPjEM/fYVFH4tVDJIcvrzWok8U4dDP3WzRWnXIOYqbv82iT8WKEtb8/F0WfSYoxqoSaNE+i9YJkntZXow38b1yBK1XxLu5v6u6RRsEiUM2Af91V25UJFZ5DS36XBEvef91w35xZFwl0fYTLNokVhRxGOWnLNosKMaKN8D4gdMt+lKRHCc81NyickEUJqUk2nnUV8AWQWLFy3O86yKLtiri7Tn64TKLtini9Tn+qZVFXymSN969f7Zouw6ZV2vf5a8Wfa2IRMX7/seibxQ1Iofd/mnRjtAXb9dE6H673qJvA8KK7YI/cLNFO/VOIVH+4K0WfSdWFAnDd7/Lol0ahgz50D0WfS9WMYgwItfWot2KyEacLLDoB3XIpLjihy36Ua0kjD4dLfpJrRhXXKWzRT/ruNg/xlW7WLRHrOQ5T4SuajeL9mpfWPnqT1r0i1oRYVzNW7RPrYgwqtnbol/FyoO4U/7robdfrVjYbsgAi35TxMbPDxtq0e86Lqz88OEWHVArgnejxlh0UMKQ4CXCkc9adEiQx4oc+mPHWfSH9sX95Y8rs+iw9oVD13iyRT6ZcUgY7Nwt6iFIwiCHbN0t6pnMOOS8jL27Rb0U4dCPn2tRsXEYj5tvUW+1Op4wJiyyqI8isXrhTYv6KmLI0ZR3LSpRxFTG01ZaVKoIh9FLayzqp4jg45mfWtRfgyfzbuZ6iwYkM5nnTnGzNlo0UKw8Dsl8dN4miwYpwqGf/aVFg9Uh4/KvbLFoiEaIQzf3a4uGqsNj6euSby0aJlYUWYfRa99bNFxQjBWrN57/s0UjNAxuvXjBXotGqhULIHrjN4tGKSIb8eI/LBqtEbJz9OOdRWOOWJXGqSyLnlErNrC5eZUsGqtW7BzLtmZb9KxasSOOTq1q0XNiRRGHUZvqFj0vKMaqBhF+VdOicZoNdsRuey2LxisieL+9tkVlGgYRpprVtWiCIsKI769n0UQNoyp97Whg0QuCKAGdeaxFkxTh0D3YyKLJgsQhYUTfNrZoioZRJ1laflYTi6aKFUWGXF7Q1KJpOmQSlfvQSRa9aFD5QymLpiuqhtXDJ1v0kvQVEwZHB2W7TrVohiB5t5HgZ5xh0UwNvnpSfjTfTPWzxCRGnwjnAxa9rKhGUs4HLJqt4SVAsbfoFbVKJotdSV2L5kgM8mTIAnWPLHpVreRUYdIQi+aKlQeJ1YIFFr2mVrLT71jJonmKZDtf3MKi+eqwMWjQUWEsUCQOx9xk0UJ1WA80o7tFryvKBsWTLHpDE1UL9N5cixaplRxufPGFRYs1DAn+6x8tWqJIttjdwEfQUnUo++iex1oUK5LN8oDmFr2pEQoacqFFbymSffSIKyx6Wx3Kdn7ctRYt0wirgF64zaJ31Eocziy06F1FciQy31u0XBzKspGziLkDLHrPRrhghEXvq0M53HhrmkUrxKEHSaKWz7FopVpJGB+9a9EHYiVhNAStWmPRKkEeK8nGxxst+lDRCaB1X1m0WvryODwOtPGgRWsEUXjU9HXtqlj0kSI2X65dXYs+FhTTF9tD16mxRZ8oYkfsHj3NorUaIQ79Y2dZ9KlayS71qYss+kwRBw6+VyuL1olDx7jY6Lmef7FovSCPFYcAvvjvFm0QhxRmGfQfizbqLHPg4PvcbNHnYhXjkHH5/vda9IX2JWEMamvRJkVsKv2QAos2q0My70d2tuhLQZQ06m5RuSLZ9o7sbdEWQeJQ0jt2sEVbFYnD8c9YtE0QJTgcP9GirwSJlQx50gyLtuu4ZMhTX7Hoa0XS14vzLPpGHFLCLL+41KIdgmKsWFF+1vsWfatI5uvVTyzaqfPFD+T9a+ss+k6tZFyvb7FolyIZ19LvLPpeg8fKvfWjRbuNlVv+u0U/qBXZ8O8ftuhHRbw3uvuTFv2kDnkD9A8edev9rEisHq5p0R5FvG36dvUs2qt98QYY725g0S9qxVt09FMji/aJldxEEsaPJ1j0q1rxPuz2pCzafyTzJW7vKRb9pla8zPt9Z1j0uyIZ128tLDqgiHdUf+ACiw5KhB5Um3F1v9iiQ4rIhvvjTxb9oYiNefT05RYdlr4orMOS6PBRjxSfBYqxIsI4cdQjpYciIowqHfVI6ZmV6YswfO9/WtRLETmMs/9tUXFWJofSV5XrLOqtfeEwqn6TRX3UIUc9vv8tFvUVK4qMy9e406ISQTFW7Clc7VyLSjUMlo2rc59F/dSKYwpf7wGL+isiQtew0KIBGiGnQNHI9hYNVCsijEd3tmiQIhIVje1m0WCNkL6iZx+3aIj2Jau3yZMWDVWHjYnwpJ4WDVMrkO9SbNFwRYQR7+tj0QgNg8zHv5ZYNFL6ogSrRwdaNEqtyGHcbbBFo8Uqpi8Z1xMjLBqjYXB/+YOjLHpGrbi/3OFnLRqriDXvExMselYQRax8j8kWPSdIrHg4uOLpFj0vYcjDgfmKes20aJxayertfdS7zXhFcqeUzLeoTBx6EEP21V63aIIijlLjfossmigOZbvBLLvqyyx6QVCMFQvb1zzqi2OSZl5QrZUWTVbEfPnaqyyaoojgfZ3VFk3VCAk+HvKRRdMUMcuu/lqLXtQISZRvuMGi6YoIwx232aKXNAyy4RqVWzRDrCQbhBGN/saimRoGDn2jnRbNUoeyoo7fZdHL4jDGCoeuyU8WzVaHLJvo+T0WvaJWLLZ4/H6L5giiSA7jkw5Z9Ko6lL4mHPVdOVcRu9RUvYRFr2nwHFOUyb7oCJonfcVY1U+Wlg+rZNF8RQkcNqxi0QJFyWRp7shqFi2UMNJrvtQdU8Oi19WKHXE0qpZFbwiSSWlIGDfXs2iROPRYsVn2o+pbtFiRI8J1DSxaIg5jEMHn3nasRUsVEXzZhkYWxeJQgufAIbq9sUVvqhXB+41NLHpLkARPhKmxKYveFoceKw4c4o0nW7RMJ6UKfX1+ikXviMMYK45E/F2nW/SuIIqk1z93hkXLBYkVEcYnNrfoPUGZCHM3nWPR+xph+sBhmOpXiEmMPqEHDhVopaKKA4cK9IEOquLAoQKtUquKA4cK9KHEIGmXU4Vw4FCBVgvyWMlvHQx50KI14pBCbkGzLfpIw6gJKltj0cfqUPqau9+iTxTJIUDbuhatlb5ikPymf7fLLPpUkORWfn+gU5FFnwkSKzk66POcReu0r9qgo4Nfr0hOFcYus2iDojqgSest2ih9Ucg86KBFnwuKsZKziLvkDqpAXyiS3/i/v5lFmwRRGBfoMos2CxIr+RF8x9YWfSmIwpBB91hUrsGLwy5HTeUWsYpBYvV0d4u2qpUcAhT3sWibWskhwKCxFn0lVukV1cf1n2LRdkEeKzmLODrzX6vD6qCjM/+NIjncODrzO3SxyUHKtHKLvrVWc/ZatFOtJPPzDlr0nVhRSG9fd2cVi3YpYjfn7qxr0ffqkN23u7uhRbvFSsKoB7qvqUU/KGLz5R4406IfNVGyIy6Qh0YF+kmt5Ofs7S+16GcNgwh9xyst2qOIPaDvdJVFe7Wv2oTR5RqLflFEhP7Rf1i0TxHHFO7xay36VSKkSPDu8Vst2i8oxoptr3s6z6LfFNEXPwe06HftCyt+DmjRAbWSY4r+j1t0UBEO/ZBiiw6pQ4lweKlFf6gVOXRjhlt0WHPIIYAbO9oiXyljJdkYP8GiHoIoPL5A0y3qKUgeXxL88wst6iVIHMqQJ75tUbEiGdfUVRb1rpQZF7Pspn9sUR9FDNnPWGdRX3VIhPyEyKISQRIhhxtu9o8WlQoSK4J3r/1uUT9F8lp+N8/EI6i/hJF+OJREd1W2aIAgj5W8AW466tYbWCmTeXkR3VzNokHaF1sbt6W2RYMFUcShy2tg0RB1yCulu+8Yi4aKlTjEyrdtbNEwY+Xzm1g0XK3YbrgHT7ZohCIJ/qFmFo1UxNuma3e2RaM0G5Ko3edYNFoRffkO51s0xjrsdIlFz6iVONxzqUVjFcl2o+gKi57VIbM78F1aWvSc9lWfvrpdbdHzitj1+Mf/ZtE4RbI2nvyXReMlDFkb8sbe/VqLytSK4OOnbrRoglh5EFbO3WLRRLUiGz55p0UvqJU47HW3RZMUMcuucq5Fk9WhjKtKvkVTFJFDV/0hi6ZqDrFyNQotmqZWZMPXesSiFyWMTDbimkUWTVcrgo/qPGbRS2LlQWy+/JAnLJohVnIvM5VxnV4WzRQUY1UPh/VLLJqliNUbNxxo0cuKcBgdN8yi2YqIMD5+tEWvaIRYuWefsWiOWpFD//w4i17VHMpdOa7MormKOLRJnwNXoNfUIXeKmzjVonmKCCN9RFyB5itqiFU4Iq5ACzR4xhWdOdeihYqOwWE4Pa5ArweHj6TXYfPFFr2hVjiMX1pq0SJFLAB3zlsWLQ4OQUyKP2+5RUsUkSh34QcWLdVEsTbcRR9aFIuVrA3CiOZ8atGbGoYk6qKj3r7eEqsYJHfKnzZZ9LYiHPrLtlq0TB0SRrzwK4veESsJQ4K/fJdF72rwDNldsdui5WIV4xAr33KPRe+pFX35Vr9Y9L5YSV9EGC86aNEKjfBY+so5bNFKsaIwKaXuy4RFHwiKsarLpjK3kkWrFLEV9VuyLfpQI+R8wG2tYtFqtWJTGbWpbtEaQRJ87WRp+Sm1LfpIg2e/6dvUsehjRQ2SpalJdS36RBzGIPa2uac3sGitIoIvm3KMRZ9q8GyWU1OPtegzsaJIGKlvGlm0TsMgUfEZjS1aL1YxiKMD92ITizYooq+o+UkWbRRE4f4qjR462aLPtS8OHMqnn2LRF4LkAcuQffPTLNokDmOsqhPhS80s2qyIcblzzrLoS3HoQVlhO/+H6svV5DjdzlegLYIomPRy159v0VZBYhX+h/01Fm2TjiTyOuyjr5HcVqCvxIrCZIFyLdqukyUb85u8RV+LQ09ftUAPTrPoG3EYg8RqyH6LdqhVdrK3u6GuRd9qX7IjviNl0U51WBfU/u8WfadIdt89O1q0S/uS3zoYUGzR92pVA1Q2w6LdGoagaYss+kGRHDjM/sCiH9WhHDgs22vRT4LkvpPd972NLPpZEIUhg5pbtEeQOJQdcUGORXt1XPKrBUdn45cjEfZxna63aJ86rA/q3taiXxVJGH26WbRfkezZhwyw6DcJQ1aUbJYHjrHodw1DNstDyyw6IA4pYVxD51h0UBx6+pJzj1FHZf6QWMUg6evohf2H7Svs9CvQYbGiBKtJOy3ylTNWEsa0ny3qUTkThpxgzDxoUc/KOIxB7JX8nVUt6qVW7LDcPbUsKlbEj1l9bn2LeqtD2ZiH3UEF6qMRsqn0D6Qs6qtIfgG+4DSLStQh+03f/lyLShWJw86XWdRPHbJlS7+xV6D+asW40q/lFWiAjovtYfq1vAINVCv5BfieN1s0SBBFHLqe91g02Dj0xW0sGiJWMUhyWNrOoqGKcOgHPWrRMHUoJzNDu1s0XKworHlQb4tGCIqxYm/rRg22aKQguZdBfsQ4i0YpEofDZ1o0WpA4ZGPuxsy3aIwisXr+TYueUcS43MSVFo014/KTjrodnhUrijj0kzZY9JygGCtOnPyL2yx6XhFnEX7W9xaNE0QJkzJrn0XjBYkVb9Hx7c6iMkW8Raf37BVogiJeDuN7qls0UREvvVFeHYte0CHzgu231rNokiJ5K2vT0KLJiuQX4Lcfa9GU0Bcv2ETo7j/RoqkBYSUvhw+eYtE0vVP4MdB/3XovihVFwvDfnmnRdA1DhvzQ2Ra9JFYxiDCidudbNEMR2Yg7XGLRTHUo7/k/XWrRLLWSMPa0tOhltWJccdFVFs3WcbGpjLtcbdErYiXPeSJMn/VVoDnaF1bps74K9KpaEWHctbVFc9WKCKPH/mPRa2LlQewO/O83WjRPrWRHfOg2i+Yrkj3g4bstWqDjwsq7XIsWqhXBu6x8i16XMCR4iTD5oEVvCPJYkUPf6yGLFmlfbDd8caFFi7UvHLq+j1i0RB0SRlS1yKKlgiQMcuirPGpRrA7l1xiqd7foTUU49DV7WPSWcRjXKLbobbWSX4CvXWrRMkViVXeQRe8oYshRg+EWvauIqYyPGWPRckU4jBo9b9F7igg+bjzRovc1eDLvGk+2aIVmnjvFnTDVopVi5XFI5qPnXrToA0U49CfOsGiVOmRcvuksiz7UCHHoTn7VotXqkD1gNPE1i9aIFUXWYXTK6xZ9JCjGitUbn7bUoo81DG69+PQ3LfpErVgA0ZnvWrRWEdmIm6+06FONkAeRm7HKos+MlZ/1sUXr1Ir5is/71KL1akU2ogs3WrRBrciGf/ULizaKFUUc+ou2WPS5oBgrsuH+9LVFX2g2mC936Q6LNikieHfZTos2axgS4cJdFn2pSMK44geLyjUMnvOu1V6LtgiiBLR4v0VbFeHQtTpk0TZB4pA9YHxSwqKvNIw6SflHBizaLlYUhlyaW1bJoq91yDWSpeVllS36xqDcCdkW7VDEBrZ8QhWLvpW+YsLg6CB1anWLdgqSdxsJfmsti77T4Nn25p5ax6JdYhWD2JiXTapn0feKiLD89IYW7dYIscptdoxFP6gVG/OyqcdZ9KOEIQ8HzliiM4636Ce1Ing/7QSLfhYrD8Iq9W0Ti/aoFYnKfegki/YqwmHZdydb9Is6bEwYLU61aJ8iHJYXnmbRr+qwHmHsbmbRfkWyADqcZdFvmihOgco7NLfod7XicCP1UwuLDmgYBB9fcK5FBxXVTYZ/RVD1h9Rb+t86sOgPRelfLbDosIYnKPYWef1X/WqBymOLemRnHMqP+8ecb1HP7Ex48m8BzrjNol5qJWcRa6dZVKxIfo3h4H6LeotDWTNyFtGtoUV9jkTY2/nTLOqrDuWXBEa0tqhEHHqQHDiMy7WoVK3k31WYU2JRP7GSMBqCpj9nUX9BHis53Jg726IBik4ALVlm0UDpy+NQ/vGEZXstGiSIwqOmj7uvpkWDFcmP++9ratEQQTF9yU/MCy+0aKgi+U2Arn+zaJhGKA6fuJ6rAg1XK9li925r0QhFcuAwuJtFI8WhY1yyZx9QbNEoQR4rOQQYOsii0eKQwiyDyiwao7MsBw4jp1n0jFjFOJRxjV9k0VjtS8KY9K5FzyqSg5QX11j0nDqUzL/6lUXPC6Kk0T6LximSbe/tlSwaL0gcyr7sntoWlSmS7WGbRhZNEEQJDtucbNFEQWIlhxsPnm3RCzou2Yo+fL5FkxRJX+0usWiyOKQwy6Aci6YIirGSA4dOf7doqiI5pnj0Boum6Xyxj/aP3WLRi2ol43oq16LpimRcvR6y6CUNHivXp4NFM4yV6/+YRTPVimz4gU9ZNEsRW2w3pJdFL6tDNuZu5ECLZisSq7GjLXpFEX258RMsmqN9SQ4nTLHoVbWS/4tkymyL5oqV3EQSxuR5Fr2mVmTeTY8tmmcy72Yss2i+WrEO3SsfWrRAkYxr3nqLFiqS9L6x1aLXJUIPqk3wi7+x6A1Fko14l0WLFMkJxls/WbRY+qKEdfjW7xYtERRjxXt+3CZp0VJFvFJG91exKNa+eKX031Sz6E1FvKPGD9a06C3NofRVUNuit7UvHEaFDSxapg7r0Nf3x1j0jlhRGFeJb9fYoncFxVjJW3THkyxarmGwcXCPnGzRe2rF7sB3bmbR+4qI0HU96uGwQiPkFCj69RyLVqoVEca/XWjRB4pIVHTwUotWaYT0FR263KIPtS+2Uf6plhatVoeNibDH1RatUSuQX/cXiz5SRBjxbX+z6GMNg8zHtx/1jPpE+qIEqw2tLVqrVuQw3nitRZ+KVUxfMq5NN1r0mYbBZtnfc4tF69RK9hR5d1q0XhE7Ed8m16INgihi5be1tWijILFii+2+LrDocwlDHg7MV7S90KIv1EpW7zePWLRJkdwpO7tatFkcehBD9g8/ZtGXivgxa7zrCYvKxaFsN5hlV9jLoi2CYqxY2L59iUVbNfOCOvSzaJsi5st3HGDRV4oI3j8yyKLtGiHBxz8PsehrRcyyKxpu0TcaIYnyXcdYtEMRYbjHnrfoWw2DbLjHx1u0U6wkG4QR/TbFou80DBz6x1+0aJc6lBX1xEsWfS8OY6xw6J6abdFudciyiQ7PsegHtWKxxYkFFv0oiCI5jHsssugndSh9ZS216GdFzFdU/KZFezR40hv1ftuivdJXjFV9+ur7nkW/KGLZRP1WWbRPEWs+HvCxRb9KGJk17wZ8atF+tWJS/KCNFv0mSCaF4+i41laLfheHvomrWq1aInF1pwLz9xxc8mmX2yyr4fc5becdWPfexaVzJ2559bMbR/W6fdLoSo73NudauHPd0wmfSPRIuJ4J1yvhihOud8L1Sbi+CVeScKUJNzrhJidcckXCrUwkVyXchwm3NUH6d29dVi0pfzzGnSJ/jOYf7YvyO7XPK0xd177wsdRf8tp3zevssvVvWqT/lIULf4ji//OnaQYlEi67ydWOPka1QuOSQYguvQqhRc4Rwc1slXRR5auMoI2lzJN/At9VbeXi4hyCRPAfYrQD+jMKf1mOi6tc5fzAUGe5aFkQnPsmx/nvaFFe6SoXL88JtS/JKHxzIvgdP1+2wul3CDfheBX1pJb4mI0QLQpOqenl7CA4t4pu24tJVYQslNQEJiEeChIIwZ8KEpsttPW3InRDKd66oXAvB8FF71BvReE/RziNeKmjPvgQwc9HSYt4DYp4FmQnSnxQ0+LWIKR7+QiFdBvP54PUxTluQUKC6k2YIZsIcSUy7hvgUYVoC4b+Qtwe4mqNIosMugdoQgajXqFGMTYIzr9CK4etm0jTdWI7lA63cPXgCs7aBsG5f3OtF8UlNF2NHXH6paJogjCVi9r1zyEQETRGKR/JjPt1aM8Guyw6PglDdwDNc2RtE3UlydpSBCYlkiBklty5QXDuExyFWTqWrGehlLqn+BCBnLpPqUMaz0sPLR4UalosC4KLtxO3LJ+Y/t1ylNRR74wi6pHjyqh9JyL0SUbTCeKr4PkErou5NtC/z0Vgor1EKDMfTQ+Ci9+gni2KVQhf0SI9XBk4TqJxuCV9IhDSp/QuY11OP7IYwjzshA4ONQr6QXDuT7T8FIWryYc3UVah1bgcN1j+TITrS1pCohHCGnANaa9C9JUYnoPmVwxvoU5IPjwC+fDpNYBiQRBcvIIUSItY5kNMyBhTTzRJqLQ4gUtM/HlBcKkr8PMbLeJrUGzDD3U0LycZBErS5Z5rhGgqbYPwVo5LtYB8iMI1R9hIvKcBQn9NcbsDb8eGGvdVg+DcYZSSDr+L5m8TotRjc5gyBArCUiP4GdJWBMbm53JtEMWLCHjzQ7jEvXsiCM7fwbUZhb8CYS2OWuD+TVGcyIdZKKnjUukPgUKiSb2UhLuby5W0crknXoUaIf1AbIoLFSoQQqY1Ja1KTxuNKgQKAkjKXrmHpDP/ryVoEUI7f0zGQASekITK3R8d4MOtTGdSJusJmjBZ8ehQk82FQXDxJ7T6A5P4e0a2iw8HqD9AkaoEncEUSS2PLxFcS+hvtPqFZe6+Q7if0FZTz23Jun8VgVvVjwg1LboHwbnbqMuvJI6LEda0TKfurlaEjFAxGgQZIKPgKYU1gkvBc6g3S4cPInCjVdx5/uUguJj7OzyVo400PxV7atcXHyLIWKN3UHyCws/mwy5aDQ81inZBcO5q6vDMpVs/DwU1cbgZ8sdW3EGCbppDnD/Rfwtp5miym9GfQv0afftrEAjG9Qg1LcqCkP5mmCWKJQhbUFD7+uIDwV1AhATl/4zCT0W4FkVPQJ4oTkF4nGs/ZjILbgaLajCKYurxoriCgF5GQe3ezijitSgep94minGQPSg+oz4kCpfjcrmf5dvJVWY1+L/TJavBdQo1aRsTBBfjOJKvD7+cwA6h/BiT3eJjMx+4oq0o3iExkaRsKURWgf8EOgnFlyj8KBQ7ubpxhSfbFUEIkxuVi6IyHz5DSR29l1F4uWfrci0QxQmQV2h1EYoZooj4MB2lZHsCCgeNRtDt2ygGoIhx6IppvoW6AEWY5X/SSuomqthMUr6kHiQTJKNjpiNWjGvUkl7KEFjAoZewookDwbn3MdvfEsUVCCO4MGOBuEFyj8araSV3bhCew7PMcLB7NNTYkXIE506ijrk13Pc4iVuSTOrWmIRpe55rENcuUfRipuvSnJpxsBYR4nDjE1WF4AsZmgiuGdfJKGqJ4iw+rMXwr9Qv4U2+XsSBJ0XUhDgmCLzLUs9AES1CYM14Mupr48OtRLgQpdRdJQCE0K/bbwRKZuSUbZIPHvGIaIPQB9/xXASGH/cKNb4z+eC+4NuoJYo3CPZBLs/1EyauJqFcCpW6WMJBiGag6IriA1HMpun3KGoxyfJQc38mLFnGPUJNt88EQZZQ+sEYLaXpAUwYCc8zIkQIz+r4VyNQQBI8hfEcpscQAoI7lWw0B8kDyN+M0A1lSahRTA6Cc69Tf4EixossFKljjw8Rovl8WMglbwJy40Q7ad4n1PRyfRCcP4MW4RFFtxHNpSYOd57ExNRRCBMhBC5roEKgpJGUw+E1EkM3oRW4H4K/ArcdEMrfcO4/oUaRCgIPCeqqMimygmSRLqG+htG4aQgjuajphi5E+FqEIS2PCOm1AaoQyk5H8Ofw/XJRRkgjgqoQgrmgI8KxjF4EV06fF1KvkCAuRZhLv1dTT0Uhb71uLIrcUKOQkaEQr4zZ7QzP9NV8kJXv5iEsIMpx1LOvZAb6IshivCPUtMgKQojc7W2JoiHCcC6paxJUEHg4uTuobxTFUPrvjGIFdS9RJHNcNBBFM+phKOQRFo9E0ZXrGVG8wgjHQ1mDfpooEGJRUkdzVUHY8RJMPhfFTMhOWvQPNYpbg+Dc5Vzy9HUy+WtpUROz+Tlk9gamYbGQHoS6EbqABSNvxe4HyEGano0yPPXvxYbbxQ0LNS3mBsFF71OHFptpfphrB93uwYf/GeEbFPtosRZFzBMhNJf6pRzuJwR/T4a4t8jOAeqnmAf/B8Lelrzd0yX5Cm/LFPr9CKG8pU4ZkxetxF14c5+Du67470H9IArXGiGXdpdQ3yKKpgiirIfyclHIcmYWpE4/2BBk9xDW+2SJ5EqEh1B0DDUthgXBRVOoJ6LwryOsocUyfNTBhwQkexWpfQHjFIEIXXeidfNoGUYkwiq56a6meYUgYwzCfYvTy3veYhTHIxxcLI8N5+otwXg6wqcQtw1h0WLe3Fqx3UIhk+v+tNi52tQV/VCwoney5v+cQ0gHwJcSrNuLMJ8mn1E3bUX0CxBY4PGAUOOxRRBYOrQqpIVLtWITgJI6DutZhFkoSmmxWhTMZfQDihNyXHQYhTwMZbW4gaFO94IQ3jp5jURBc95R0luNNyRCkhbPhfBO4fxqyGtcm1BEk1GwsGVTR43324Pg3HlcH4uiEnQhSmonSyMIJ6E4h3oTY2A5hIdxNCDULB6ZThSewNxiFNEKBMnqasz+nOMOhScl76YUsooQnk6+IV1VCNvoy12HIEMbF2pczwtC2FLlyq3C3SjfSs59S/2jmOxB2IqCwdMf4f1Gp29xUUcv5OAdgYLwgRG8vO6I4BbTbjmKFSgchtF6PsylLkcRTeWD3JYjQ02LR4Lg3P+g/AyFvHyH9Sv10By8iyDdyEClbA1bzNZ8OH8xuDq47WI81UV4e7FzZ1HvQOH/iVBriYt6hhrFhCA4P4c6tHgbYd5i59+nvgyFW4UwghUnA+nfinhfRqBEvUJNi+ODwFdnK8fLEIpKCE1RUkfhZViEGSg6UX8gitmt0ruYmlx/oAjPWGbB45QaBQEhhCeK/5Yxi5Ceyt+N4IbQXxCuXxz2Rm71YkLcgtEJS1z8DvXlS2gxHeHWJXIOITUBNAuCc+sIpIUoriHmJIp0EiWdB0ClOSARmuc4dwbXL63wdj3CSJR9Q41iShDk1uCWFcUaBExCXYIPEeIFXK+jlFcDuU2inSj6hJoW/wmCeXmQbhdiL3VpjvtYHhF8sZJomfk+xKlCeHtwLIoKIQ7fE7cgkMNodKhZ60wdQjiFieW1yn+OcIBOv6X+FpP4V/yv58NhriUoynnG+8kc4FHHMhIRXDVafc31OGONWJnhCcT6pabb1kFIx9q7FRMlAoXwj8GtrAgR5Cnsz+PKQuHuQMEdHg0NNZHMCkLa/VZRbKDpadhTh8dGEBZyvYNSMuZn04IURsNDjeLhIKRX1xpR0G00HwU1caRz6laiCHtbBHcfXfkYYX3L8K3tfpQXjbEIMqTeoaZFiyCkv1qewsTVRaiBkjqSHW0QXkbxFECeGvIcj3ejqMslj115xZfZcCxKajL5ahDSz9PwKoUQlrrbb4SKWBEI3zskyUcQSFB4LdhKTP4WBElhaajpcUoQwipMP2jpwJ/EJXUP8SHCPC7yGklO4xdouosPfUKNjxuCkH6mfIJCuo1wKDVxpF9y5VEQVqcI4evzLzSvECoQ5WB4dNdkmcriDQdLKpB2soIgj0LHSZPLRhEfh9CvlcslVbxs0EKy+nd2fwRNTQvCQJDdF29NLYmxKsJD9LeB6wADl5dLdzVKanohGoTQr7+A4ajgnqU/EUIqJfKzULibEfbjwFMvx1s8EmEUitdCjcnOILgyR4i/opDxuRYopX5W+kOgG1cog78VEFJyfcvMNK8nrCDcA7qZPn1HgjiZD9LnWvEoE9KQZTGE+jo8xiv5EGx+zwh+JCj4TXfgJoZU/3glIlr/D7T9sHSzM9367IylHARFK+nWdaBbSeuT1DNR+FI+LKHZMK4VGPulCGIT/ZIR/DO0HQCKeEel4O6djOAHIZwOkmHwxEP4lrQJyoTlPg+35DjVIpAmRjc5RwQCWBMEOUBzZRejiOSBdMFVLrc2d84ZKMqbXOUijj8dCydVFUV0NgpmJNQLGYQIfnAOP9mhvgeFP5nmTXnKHU/9DdmN6iOwb0hVo5YNVEpm8r2WssVhabGkwvciJX4p1OlQpRD9+ahmstajKUHA/4ogOHm3cO+hiPcgyNuhuK1OBGVybMoCya1FfT8KicAPIWhq97oqMItpSVj4+IMMNOIu2UbgJ6KI1qCQkZArakI63wjS/66wANIvDWgRSCXTciL9qOC+ozN/Fx1xf0XjQk1nbwRBvrxcuZw8R+Q/2s8s/gjYhoksu2g19lJPy8E9AgUhnaq0AKItgiMn0RKuDSjil/GyA+XIUNOiRxBkely0GUV41V+LgiRFb4mCWMMTn5pvjUzwoRvGJWV3GO2c8AEtArOH0ChMY1oIK1ZQhVBen9GJEKVIJac8cTNRfIk1R+ny9C6XZecuyHG5nKm7wlCj4M5ACMeJqctwFsl9cBok6s9YTid3T4aa0G8KQngW5p4sigsJnXPmUNfDVoR0RAONEKIWVCFQQAQr5VEZ7sQgo0QIcxqzRCqEsrAaMKwQeIYnXXk94q4QwuQJqhBkMUt8RwTtIpT/Bw==(/figma)-->Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', NULL, 'ru', 'Элеонора', '<p>Элеонора</p>', NULL, 6, '2020-12-08 10:16:31', '2020-12-08 10:38:53'),
(6, 'Ковяри', '<p>Ковяри</p>', NULL, 'ru', 'Ковяри', '<p>Ковяри</p>', NULL, 7, '2020-12-08 10:16:52', '2020-12-08 10:16:52'),
(7, 'Летний', '<p>Летний</p>', NULL, 'ru', 'Летний', '<p>Летний</p>', NULL, 8, '2020-12-08 10:17:10', '2020-12-08 10:17:10');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `contact_translation`
--
ALTER TABLE `contact_translation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `form_request`
--
ALTER TABLE `form_request`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `main_page`
--
ALTER TABLE `main_page`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `main_page_translation`
--
ALTER TABLE `main_page_translation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT для таблицы `page`
--
ALTER TABLE `page`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `page_translation`
--
ALTER TABLE `page_translation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `portfolio_translation`
--
ALTER TABLE `portfolio_translation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `price`
--
ALTER TABLE `price`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `price_translation`
--
ALTER TABLE `price_translation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `project`
--
ALTER TABLE `project`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `project_image`
--
ALTER TABLE `project_image`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `project_translation`
--
ALTER TABLE `project_translation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
