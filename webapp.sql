-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2025 at 05:08 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `slug`, `category_id`, `author`, `image`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Dummpy Title', 'dummpy-title', 2, 'Ravi', '01JG1XZCB04SQ4JHB5YB8M6V79.png', '<p>dummy content</p>', 1, '2024-12-26 11:19:39', '2024-12-31 03:50:24'),
(2, 'Lorem, ipsum dolor sit amet consectetur adipisicing elit.', 'lorem-ipsum-dolor-sit-amet-consectetur-adipisicing-elit', 6, 'Ravi', '01JGDV9SCHAJW4B93VFCDZMV1T.jpg', '<h2><strong><br>Heading example</strong></h2><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam nihil enim maxime corporis cumque totam aliquid nam sint inventore optio modi neque laborum officiis necessitatibus, facilis placeat pariatur! Voluptatem, sed harum pariatur adipisci voluptates voluptatum cumque, porro sint minima similique magni perferendis fuga!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam nihil enim maxime corporis cumque totam aliquid nam sint inventore optio modi neque laborum officiis necessitatibus, facilis placeat pariatur! Voluptatem, sed harum pariatur adipisci voluptates voluptatum cumque, porro sint minima similique magni perferendis fuga!</p><h2>Heading example</h2><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam nihil enim maxime corporis cumque totam aliquid nam sint inventore optio modi neque laborum officiis necessitatibus, facilis placeat pariatur! Voluptatem, sed harum pariatur adipisci voluptates voluptatum cumque, porro sint minima similique magni perferendis fuga!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam nihil enim maxime corporis cumque totam aliquid nam sint inventore optio modi neque laborum officiis necessitatibus, facilis placeat pariatur! Voluptatem, sed harum pariatur adipisci voluptates voluptatum cumque, porro sint minima similique magni perferendis fuga!</p><p><br></p><h2><strong>Heading example</strong></h2><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam nihil enim maxime corporis cumque totam aliquid nam sint inventore optio modi neque laborum officiis necessitatibus, facilis placeat pariatur! Voluptatem, sed harum pariatur adipisci voluptates voluptatum cumque, porro sint minima similique magni perferendis fuga! Optio vel ipsum excepturi tempore reiciendis id quidem? Vel in, doloribus debitis nesciunt fugit sequi magnam accusantium modi neque quis, vitae velit, pariatur harum autem a! Velit impedit atque maiores animi possimus asperiores natus repellendus excepturi sint architecto eligendi non, omnis nihil. Facilis, doloremque illum. Fugit optio laborum minus debitis natus illo perspiciatis corporis voluptatum rerum laboriosam.</p><p>There must be at least 3 dashes separating each header cell. The outer pipes (|) are optional, and you don’t need to make the raw Markdown line up prettily. You can also use inline Markdown.</p>', 1, '2024-12-31 02:23:47', '2024-12-31 03:50:56'),
(3, 'Cheerful Loving Couple Bakers Drinking Coffee', 'cheerful-loving-couple-bakers-drinking-coffee', 2, 'Ravi', '01JGDVCC79QA4EF5RSAAVMFGXG.jpg', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 1, '2024-12-31 02:25:12', '2024-12-31 03:51:34'),
(4, 'What is meant by web app?', 'what-is-meant-by-web-app', 1, 'Ravi', '01JGHF7XBP52JWVCQ2H1VTXHPV.jpg', '<p>When a user visits an app or a program sends the app an HTTP GET request, Apps Script runs the function doGet(e). When a program sends the app an HTTP POST request, Apps Script runs doPost(e) instead. In both cases, the e argument represents an event parameter that can contain information about any request parameters. The structure of the event object is shown in the table below:</p>', 1, '2025-01-01 12:10:01', '2025-01-01 12:10:01');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Education', 'education', 1, '2024-12-26 10:56:40', '2024-12-26 10:56:40'),
(2, 'Fashion', 'fashion', 1, '2024-12-26 11:13:41', '2024-12-26 11:13:41'),
(6, ' Photography', 'photography', 1, '2024-12-31 02:21:07', '2024-12-31 02:21:07');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contact` text DEFAULT NULL,
  `fb_url` varchar(255) DEFAULT NULL,
  `tw_url` varchar(255) DEFAULT NULL,
  `instagram_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `contact`, `fb_url`, `tw_url`, `instagram_url`, `created_at`, `updated_at`) VALUES
(1, '<h2><strong>Still Have Questions?</strong></h2><p>Call Us We Will Be Happy To Help<br><a href=\"tel:+XXX111222\"><span style=\"text-decoration: underline;\">+XXX111222</span></a><br>Monday - Friday<br>9AM TO 8PM Eastern Time</p><h2><strong>Canada Office</strong></h2><p>Park Street.<br>455.<br>Salt lake</p><h2><strong>Demo Office</strong></h2><p>22 Park Road.<br>23BX,<br>Demo</p>', 'https://facebook.com', 'https://twitter.com', 'https://instagram.com', '2025-01-01 08:05:29', '2025-01-01 08:35:22');

-- --------------------------------------------------------

--
-- Table structure for table `exports`
--

CREATE TABLE `exports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `file_disk` varchar(255) NOT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `exporter` varchar(255) NOT NULL,
  `processed_rows` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `total_rows` int(10) UNSIGNED NOT NULL,
  `successful_rows` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exports`
--

INSERT INTO `exports` (`id`, `completed_at`, `file_disk`, `file_name`, `exporter`, `processed_rows`, `total_rows`, `successful_rows`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '2025-01-02 08:19:42', 'local', 'export-1-users', 'App\\Filament\\Exports\\UserExporter', 4, 4, 4, 2, '2025-01-02 08:19:39', '2025-01-02 08:19:42'),
(2, '2025-01-02 08:21:46', 'local', 'export-2-users', 'App\\Filament\\Exports\\UserExporter', 2, 2, 2, 2, '2025-01-02 08:21:46', '2025-01-02 08:21:46'),
(3, '2025-01-02 08:22:07', 'local', 'export-3-users', 'App\\Filament\\Exports\\UserExporter', 4, 4, 4, 2, '2025-01-02 08:22:07', '2025-01-02 08:22:07'),
(4, '2025-01-02 08:26:54', 'local', 'export-4-users', 'App\\Filament\\Exports\\UserExporter', 2, 2, 2, 2, '2025-01-02 08:26:54', '2025-01-02 08:26:54'),
(5, '2025-01-02 08:35:24', 'local', 'export-5-users', 'App\\Filament\\Exports\\UserExporter', 4, 4, 4, 2, '2025-01-02 08:35:24', '2025-01-02 08:35:24'),
(6, '2025-01-02 08:45:26', 'local', 'export-6-users', 'App\\Filament\\Exports\\UserExporter', 4, 4, 4, 2, '2025-01-02 08:45:25', '2025-01-02 08:45:26'),
(7, '2025-01-02 08:49:46', 'local', 'export-7-users', 'App\\Filament\\Exports\\UserExporter', 2, 2, 2, 2, '2025-01-02 08:49:46', '2025-01-02 08:49:46'),
(8, NULL, 'local', 'export-8-users', 'App\\Filament\\Exports\\UserExporter', 0, 4, 0, 2, '2025-01-02 08:59:25', '2025-01-02 08:59:25'),
(9, '2025-01-02 09:08:12', 'local', 'export-9-services', 'App\\Filament\\Exports\\ServiceExporter', 5, 5, 5, 2, '2025-01-02 09:08:12', '2025-01-02 09:08:12'),
(10, '2025-01-02 09:26:45', 'local', 'export-10-roles', 'App\\Filament\\Exports\\RoleExporter', 3, 3, 3, 2, '2025-01-02 09:26:45', '2025-01-02 09:26:45'),
(11, '2025-01-02 09:41:36', 'local', 'export-11-pages', 'App\\Filament\\Exports\\PageExporter', 3, 3, 3, 2, '2025-01-02 09:41:36', '2025-01-02 09:41:36'),
(12, '2025-01-02 09:41:48', 'local', 'export-12-pages', 'App\\Filament\\Exports\\PageExporter', 3, 3, 3, 2, '2025-01-02 09:41:48', '2025-01-02 09:41:48'),
(13, '2025-01-02 09:42:06', 'local', 'export-13-pages', 'App\\Filament\\Exports\\PageExporter', 3, 3, 3, 2, '2025-01-02 09:42:06', '2025-01-02 09:42:06'),
(14, '2025-01-02 09:42:33', 'local', 'export-14-faqs', 'App\\Filament\\Exports\\FaqExporter', 2, 2, 2, 2, '2025-01-02 09:42:33', '2025-01-02 09:42:33'),
(15, '2025-01-02 09:45:32', 'local', 'export-15-faqs', 'App\\Filament\\Exports\\FaqExporter', 2, 2, 2, 2, '2025-01-02 09:45:32', '2025-01-02 09:45:32'),
(16, '2025-01-02 09:46:48', 'local', 'export-16-categories', 'App\\Filament\\Exports\\CategoryExporter', 3, 3, 3, 2, '2025-01-02 09:46:48', '2025-01-02 09:46:48'),
(17, '2025-01-02 09:48:27', 'local', 'export-17-categories', 'App\\Filament\\Exports\\CategoryExporter', 3, 3, 3, 2, '2025-01-02 09:48:27', '2025-01-02 09:48:27'),
(18, '2025-01-02 10:02:00', 'local', 'export-18-categories', 'App\\Filament\\Exports\\CategoryExporter', 3, 3, 3, 2, '2025-01-02 10:02:00', '2025-01-02 10:02:00'),
(19, '2025-01-02 10:02:16', 'local', 'export-19-categories', 'App\\Filament\\Exports\\CategoryExporter', 3, 3, 3, 2, '2025-01-02 10:02:15', '2025-01-02 10:02:16'),
(20, '2025-01-02 10:18:44', 'local', 'export-20-users', 'App\\Filament\\Exports\\UserExporter', 4, 4, 4, 2, '2025-01-02 10:18:44', '2025-01-02 10:18:44');

-- --------------------------------------------------------

--
-- Table structure for table `failed_import_rows`
--

CREATE TABLE `failed_import_rows` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`data`)),
  `import_id` bigint(20) UNSIGNED NOT NULL,
  `validation_error` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Dummy Faq', '<p>Dummy Faq testing</p>', 1, '2024-12-31 05:27:26', '2024-12-31 05:27:26'),
(2, 'What is a bookmark in a computer?', '<p>A bookmark is a place holder for a web page that will allow you quick access to that page instead of having to browse to it or search for it.</p>', 1, '2024-12-31 05:29:41', '2024-12-31 05:29:41');

-- --------------------------------------------------------

--
-- Table structure for table `imports`
--

CREATE TABLE `imports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `importer` varchar(255) NOT NULL,
  `processed_rows` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `total_rows` int(10) UNSIGNED NOT NULL,
  `successful_rows` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"uuid\":\"64b9c65f-8006-44fd-8c72-7bb6ac5ea61b\",\"displayName\":\"Filament\\\\Notifications\\\\Auth\\\\ResetPassword\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:41:\\\"Filament\\\\Notifications\\\\Auth\\\\ResetPassword\\\":3:{s:3:\\\"url\\\";s:217:\\\"http:\\/\\/127.0.0.1:8000\\/admin\\/password-reset\\/reset?email=ravi%40gmail.com&token=9b9783037e13848b0fb6518f58c74523b347ab22dea2dfde6e7550037e33e995&signature=c76fb29414ecb647d4841edaa57e497e7aeb1f6a0140652da402a82378d2956e\\\";s:5:\\\"token\\\";s:64:\\\"9b9783037e13848b0fb6518f58c74523b347ab22dea2dfde6e7550037e33e995\\\";s:2:\\\"id\\\";s:36:\\\"11f9268b-4cfc-4890-b808-df1627eef20a\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1735735719, 1735735719),
(2, 'default', '{\"uuid\":\"12768d77-faf5-4595-a13f-3541e213df4d\",\"displayName\":\"Filament\\\\Notifications\\\\Auth\\\\ResetPassword\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:41:\\\"Filament\\\\Notifications\\\\Auth\\\\ResetPassword\\\":3:{s:3:\\\"url\\\";s:223:\\\"http:\\/\\/127.0.0.1:8000\\/admin\\/password-reset\\/reset?email=ravi395950%40gmail.com&token=9d9183bc3f2052ff9ae9b84482f2727dbf3a4025cecc2a290e32534558b36b3e&signature=5e9f8aa18fab317758fea7e84e4b5285a061e8ec459bcc0211ecc66ff1db1f3a\\\";s:5:\\\"token\\\";s:64:\\\"9d9183bc3f2052ff9ae9b84482f2727dbf3a4025cecc2a290e32534558b36b3e\\\";s:2:\\\"id\\\";s:36:\\\"0e1e5459-5b1a-491c-ab7d-5449c4e6a409\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1735735791, 1735735791),
(3, 'default', '{\"uuid\":\"7ed350c2-a20a-422d-8f78-635924a0ce3e\",\"displayName\":\"Filament\\\\Notifications\\\\Auth\\\\ResetPassword\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:41:\\\"Filament\\\\Notifications\\\\Auth\\\\ResetPassword\\\":3:{s:3:\\\"url\\\";s:228:\\\"http:\\/\\/127.0.0.1:8000\\/admin\\/password-reset\\/reset?email=rkconsultancy34%40gmail.com&token=ff058fdf4637bae2a8bad1ddbf6e65f0e86faccd4794dc27685bab648056355d&signature=6f591375f676d806b9350dd9e2338e0433f3d3313c308a1fa130b64e30e82c71\\\";s:5:\\\"token\\\";s:64:\\\"ff058fdf4637bae2a8bad1ddbf6e65f0e86faccd4794dc27685bab648056355d\\\";s:2:\\\"id\\\";s:36:\\\"d3c600ff-73f0-40b1-b745-5d885d32d406\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1735736003, 1735736003),
(4, 'default', '{\"uuid\":\"30b31f9d-06f9-4530-a6f5-1d8bae1d8229\",\"displayName\":\"Filament\\\\Notifications\\\\Auth\\\\ResetPassword\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:41:\\\"Filament\\\\Notifications\\\\Auth\\\\ResetPassword\\\":3:{s:3:\\\"url\\\";s:223:\\\"http:\\/\\/127.0.0.1:8000\\/admin\\/password-reset\\/reset?email=ravi395950%40gmail.com&token=c170f393b8ebdae6efc8dd54c66ae3786514ff00c2c0bdeb11e52a4a5e5afe4a&signature=78079ae4c076e0de1a065224d313d35eed210aa6fc578ae925a3678f56dbe7cf\\\";s:5:\\\"token\\\";s:64:\\\"c170f393b8ebdae6efc8dd54c66ae3786514ff00c2c0bdeb11e52a4a5e5afe4a\\\";s:2:\\\"id\\\";s:36:\\\"dbfe03ff-e362-44de-bf27-689fcd249da2\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1735736264, 1735736264),
(5, 'default', '{\"uuid\":\"8ab9a171-f778-4435-aa14-471139c23cfb\",\"displayName\":\"Filament\\\\Notifications\\\\Auth\\\\ResetPassword\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:41:\\\"Filament\\\\Notifications\\\\Auth\\\\ResetPassword\\\":3:{s:3:\\\"url\\\";s:223:\\\"http:\\/\\/127.0.0.1:8000\\/admin\\/password-reset\\/reset?email=ravi395950%40gmail.com&token=b2027bb2fbae12a2228231f009832580f7d533235e645b470a8a5d0a1a9d7e4a&signature=5fb43e347ad41899ee08fa99f312a79e2eb4525d9237a052dbeac9da7be42849\\\";s:5:\\\"token\\\";s:64:\\\"b2027bb2fbae12a2228231f009832580f7d533235e645b470a8a5d0a1a9d7e4a\\\";s:2:\\\"id\\\";s:36:\\\"6cf77a82-7482-472a-adc2-497bc1d1d74a\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1735753362, 1735753362),
(6, 'default', '{\"uuid\":\"a3538818-61fa-476d-849d-ff0fec10b2c5\",\"displayName\":\"Illuminate\\\\Bus\\\\ChainedBatch\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Bus\\\\ChainedBatch\",\"command\":\"O:27:\\\"Illuminate\\\\Bus\\\\ChainedBatch\\\":15:{s:4:\\\"jobs\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:46:\\\"Filament\\\\Actions\\\\Exports\\\\Jobs\\\\PrepareCsvExport\\\":7:{s:11:\\\"\\u0000*\\u0000exporter\\\";O:33:\\\"App\\\\Filament\\\\Exports\\\\UserExporter\\\":3:{s:9:\\\"\\u0000*\\u0000export\\\";O:38:\\\"Filament\\\\Actions\\\\Exports\\\\Models\\\\Export\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";N;s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:8:{s:7:\\\"user_id\\\";i:2;s:8:\\\"exporter\\\";s:33:\\\"App\\\\Filament\\\\Exports\\\\UserExporter\\\";s:10:\\\"total_rows\\\";i:4;s:9:\\\"file_disk\\\";s:5:\\\"local\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-01-02 14:29:25\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-01-02 14:29:25\\\";s:2:\\\"id\\\";i:8;s:9:\\\"file_name\\\";s:14:\\\"export-8-users\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:8:{s:7:\\\"user_id\\\";i:2;s:8:\\\"exporter\\\";s:33:\\\"App\\\\Filament\\\\Exports\\\\UserExporter\\\";s:10:\\\"total_rows\\\";i:4;s:9:\\\"file_disk\\\";s:5:\\\"local\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-01-02 14:29:25\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-01-02 14:29:25\\\";s:2:\\\"id\\\";i:8;s:9:\\\"file_name\\\";s:14:\\\"export-8-users\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:1:{s:9:\\\"file_name\\\";s:14:\\\"export-8-users\\\";}s:8:\\\"\\u0000*\\u0000casts\\\";a:4:{s:12:\\\"completed_at\\\";s:9:\\\"timestamp\\\";s:14:\\\"processed_rows\\\";s:7:\\\"integer\\\";s:10:\\\"total_rows\\\";s:7:\\\"integer\\\";s:15:\\\"successful_rows\\\";s:7:\\\"integer\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:0:{}}s:12:\\\"\\u0000*\\u0000columnMap\\\";a:3:{s:2:\\\"id\\\";s:2:\\\"Id\\\";s:4:\\\"name\\\";s:4:\\\"Name\\\";s:5:\\\"email\\\";s:5:\\\"Email\\\";}s:10:\\\"\\u0000*\\u0000options\\\";a:0:{}}s:9:\\\"\\u0000*\\u0000export\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:38:\\\"Filament\\\\Actions\\\\Exports\\\\Models\\\\Export\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:8:\\\"\\u0000*\\u0000query\\\";s:683:\\\"O:36:\\\"AnourValar\\\\EloquentSerialize\\\\Package\\\":1:{s:42:\\\"\\u0000AnourValar\\\\EloquentSerialize\\\\Package\\u0000data\\\";a:4:{s:5:\\\"model\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:10:\\\"connection\\\";N;s:8:\\\"eloquent\\\";a:3:{s:4:\\\"with\\\";a:0:{}s:14:\\\"removed_scopes\\\";a:0:{}s:5:\\\"casts\\\";a:3:{s:2:\\\"id\\\";s:3:\\\"int\\\";s:17:\\\"email_verified_at\\\";s:8:\\\"datetime\\\";s:8:\\\"password\\\";s:6:\\\"hashed\\\";}}s:5:\\\"query\\\";a:5:{s:8:\\\"bindings\\\";a:9:{s:6:\\\"select\\\";a:0:{}s:4:\\\"from\\\";a:0:{}s:4:\\\"join\\\";a:0:{}s:5:\\\"where\\\";a:0:{}s:7:\\\"groupBy\\\";a:0:{}s:6:\\\"having\\\";a:0:{}s:5:\\\"order\\\";a:0:{}s:5:\\\"union\\\";a:0:{}s:10:\\\"unionOrder\\\";a:0:{}}s:8:\\\"distinct\\\";b:0;s:4:\\\"from\\\";s:5:\\\"users\\\";s:6:\\\"wheres\\\";a:0:{}s:6:\\\"orders\\\";a:1:{i:0;a:2:{s:6:\\\"column\\\";s:8:\\\"users.id\\\";s:9:\\\"direction\\\";s:3:\\\"asc\\\";}}}}}\\\";s:12:\\\"\\u0000*\\u0000columnMap\\\";a:3:{s:2:\\\"id\\\";s:2:\\\"Id\\\";s:4:\\\"name\\\";s:4:\\\"Name\\\";s:5:\\\"email\\\";s:5:\\\"Email\\\";}s:10:\\\"\\u0000*\\u0000options\\\";a:0:{}s:12:\\\"\\u0000*\\u0000chunkSize\\\";i:100;s:10:\\\"\\u0000*\\u0000records\\\";N;}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:4:\\\"name\\\";s:0:\\\"\\\";s:7:\\\"options\\\";a:1:{s:13:\\\"allowFailures\\\";b:1;}s:7:\\\"batchId\\\";N;s:38:\\\"\\u0000Illuminate\\\\Bus\\\\ChainedBatch\\u0000fakeBatch\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:1:{i:0;s:2212:\\\"O:46:\\\"Filament\\\\Actions\\\\Exports\\\\Jobs\\\\ExportCompletion\\\":5:{s:11:\\\"\\u0000*\\u0000exporter\\\";O:33:\\\"App\\\\Filament\\\\Exports\\\\UserExporter\\\":3:{s:9:\\\"\\u0000*\\u0000export\\\";O:38:\\\"Filament\\\\Actions\\\\Exports\\\\Models\\\\Export\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";N;s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:8:{s:7:\\\"user_id\\\";i:2;s:8:\\\"exporter\\\";s:33:\\\"App\\\\Filament\\\\Exports\\\\UserExporter\\\";s:10:\\\"total_rows\\\";i:4;s:9:\\\"file_disk\\\";s:5:\\\"local\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-01-02 14:29:25\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-01-02 14:29:25\\\";s:2:\\\"id\\\";i:8;s:9:\\\"file_name\\\";s:14:\\\"export-8-users\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:8:{s:7:\\\"user_id\\\";i:2;s:8:\\\"exporter\\\";s:33:\\\"App\\\\Filament\\\\Exports\\\\UserExporter\\\";s:10:\\\"total_rows\\\";i:4;s:9:\\\"file_disk\\\";s:5:\\\"local\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-01-02 14:29:25\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-01-02 14:29:25\\\";s:2:\\\"id\\\";i:8;s:9:\\\"file_name\\\";s:14:\\\"export-8-users\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:1:{s:9:\\\"file_name\\\";s:14:\\\"export-8-users\\\";}s:8:\\\"\\u0000*\\u0000casts\\\";a:4:{s:12:\\\"completed_at\\\";s:9:\\\"timestamp\\\";s:14:\\\"processed_rows\\\";s:7:\\\"integer\\\";s:10:\\\"total_rows\\\";s:7:\\\"integer\\\";s:15:\\\"successful_rows\\\";s:7:\\\"integer\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:0:{}}s:12:\\\"\\u0000*\\u0000columnMap\\\";a:3:{s:2:\\\"id\\\";s:2:\\\"Id\\\";s:4:\\\"name\\\";s:4:\\\"Name\\\";s:5:\\\"email\\\";s:5:\\\"Email\\\";}s:10:\\\"\\u0000*\\u0000options\\\";a:0:{}}s:9:\\\"\\u0000*\\u0000export\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:38:\\\"Filament\\\\Actions\\\\Exports\\\\Models\\\\Export\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"\\u0000*\\u0000columnMap\\\";a:3:{s:2:\\\"id\\\";s:2:\\\"Id\\\";s:4:\\\"name\\\";s:4:\\\"Name\\\";s:5:\\\"email\\\";s:5:\\\"Email\\\";}s:10:\\\"\\u0000*\\u0000formats\\\";a:1:{i:0;E:47:\\\"Filament\\\\Actions\\\\Exports\\\\Enums\\\\ExportFormat:Csv\\\";}s:10:\\\"\\u0000*\\u0000options\\\";a:0:{}}\\\";}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";a:0:{}}\"}}', 0, NULL, 1735828165, 1735828165);

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_batches`
--

INSERT INTO `job_batches` (`id`, `name`, `total_jobs`, `pending_jobs`, `failed_jobs`, `failed_job_ids`, `options`, `cancelled_at`, `created_at`, `finished_at`) VALUES
('9ddf57e8-5995-49f0-9848-c7e2a2fbabc3', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:2731:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":6:{s:11:\"\0*\0exporter\";O:33:\"App\\Filament\\Exports\\UserExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:2;s:8:\"exporter\";s:33:\"App\\Filament\\Exports\\UserExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-01-02 13:49:39\";s:10:\"created_at\";s:19:\"2025-01-02 13:49:39\";s:2:\"id\";i:1;s:9:\"file_name\";s:14:\"export-1-users\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:2;s:8:\"exporter\";s:33:\"App\\Filament\\Exports\\UserExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-01-02 13:49:39\";s:10:\"created_at\";s:19:\"2025-01-02 13:49:39\";s:2:\"id\";i:1;s:9:\"file_name\";s:14:\"export-1-users\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:14:\"export-1-users\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:3:{s:2:\"id\";s:2:\"Id\";s:4:\"name\";s:4:\"Name\";s:5:\"email\";s:5:\"Email\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:1;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:3:{s:2:\"id\";s:2:\"Id\";s:4:\"name\";s:4:\"Name\";s:5:\"email\";s:5:\"Email\";}s:10:\"\0*\0formats\";a:1:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";}s:10:\"\0*\0options\";a:0:{}s:19:\"chainCatchCallbacks\";a:0:{}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"00000000000009100000000000000000\";}\";s:4:\"hash\";s:44:\"/3bGSgD16Rf7HcEdwzxYdkVkJOEVD0Qy25VEjWq6X9k=\";}}}}', NULL, 1735825781, 1735825782),
('9ddf58a7-3f77-4c45-862b-67776d902121', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:2731:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":6:{s:11:\"\0*\0exporter\";O:33:\"App\\Filament\\Exports\\UserExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:2;s:8:\"exporter\";s:33:\"App\\Filament\\Exports\\UserExporter\";s:10:\"total_rows\";i:2;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-01-02 13:51:46\";s:10:\"created_at\";s:19:\"2025-01-02 13:51:46\";s:2:\"id\";i:2;s:9:\"file_name\";s:14:\"export-2-users\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:2;s:8:\"exporter\";s:33:\"App\\Filament\\Exports\\UserExporter\";s:10:\"total_rows\";i:2;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-01-02 13:51:46\";s:10:\"created_at\";s:19:\"2025-01-02 13:51:46\";s:2:\"id\";i:2;s:9:\"file_name\";s:14:\"export-2-users\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:14:\"export-2-users\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:3:{s:2:\"id\";s:2:\"Id\";s:4:\"name\";s:4:\"Name\";s:5:\"email\";s:5:\"Email\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:2;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:3:{s:2:\"id\";s:2:\"Id\";s:4:\"name\";s:4:\"Name\";s:5:\"email\";s:5:\"Email\";}s:10:\"\0*\0formats\";a:1:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";}s:10:\"\0*\0options\";a:0:{}s:19:\"chainCatchCallbacks\";a:0:{}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"000000000000090f0000000000000000\";}\";s:4:\"hash\";s:44:\"/3gGcQqZEAvULKHUGRdAM7IugFLINTaeLluMknDl5f0=\";}}}}', NULL, 1735825906, 1735825906),
('9ddf58c8-20e5-405f-a494-30ea86bf91cd', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:2731:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":6:{s:11:\"\0*\0exporter\";O:33:\"App\\Filament\\Exports\\UserExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:2;s:8:\"exporter\";s:33:\"App\\Filament\\Exports\\UserExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-01-02 13:52:07\";s:10:\"created_at\";s:19:\"2025-01-02 13:52:07\";s:2:\"id\";i:3;s:9:\"file_name\";s:14:\"export-3-users\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:2;s:8:\"exporter\";s:33:\"App\\Filament\\Exports\\UserExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-01-02 13:52:07\";s:10:\"created_at\";s:19:\"2025-01-02 13:52:07\";s:2:\"id\";i:3;s:9:\"file_name\";s:14:\"export-3-users\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:14:\"export-3-users\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:3:{s:2:\"id\";s:2:\"Id\";s:4:\"name\";s:4:\"Name\";s:5:\"email\";s:5:\"Email\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:3;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:3:{s:2:\"id\";s:2:\"Id\";s:4:\"name\";s:4:\"Name\";s:5:\"email\";s:5:\"Email\";}s:10:\"\0*\0formats\";a:1:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";}s:10:\"\0*\0options\";a:0:{}s:19:\"chainCatchCallbacks\";a:0:{}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"00000000000009100000000000000000\";}\";s:4:\"hash\";s:44:\"2PpUayhsRbrJsPjK+CHHnNSAy9JKp04OdOor5k9eVnc=\";}}}}', NULL, 1735825927, 1735825927),
('9ddf5a7d-b0c2-4a10-bf29-16cae3fb0287', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:2731:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":6:{s:11:\"\0*\0exporter\";O:33:\"App\\Filament\\Exports\\UserExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:2;s:8:\"exporter\";s:33:\"App\\Filament\\Exports\\UserExporter\";s:10:\"total_rows\";i:2;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-01-02 13:56:54\";s:10:\"created_at\";s:19:\"2025-01-02 13:56:54\";s:2:\"id\";i:4;s:9:\"file_name\";s:14:\"export-4-users\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:2;s:8:\"exporter\";s:33:\"App\\Filament\\Exports\\UserExporter\";s:10:\"total_rows\";i:2;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-01-02 13:56:54\";s:10:\"created_at\";s:19:\"2025-01-02 13:56:54\";s:2:\"id\";i:4;s:9:\"file_name\";s:14:\"export-4-users\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:14:\"export-4-users\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:3:{s:2:\"id\";s:2:\"Id\";s:4:\"name\";s:4:\"Name\";s:5:\"email\";s:5:\"Email\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:4;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:3:{s:2:\"id\";s:2:\"Id\";s:4:\"name\";s:4:\"Name\";s:5:\"email\";s:5:\"Email\";}s:10:\"\0*\0formats\";a:1:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";}s:10:\"\0*\0options\";a:0:{}s:19:\"chainCatchCallbacks\";a:0:{}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"00000000000009120000000000000000\";}\";s:4:\"hash\";s:44:\"dECLXO86u+vZmLQCayNPWZVRFhSDoIuTL+i6gPR+UpU=\";}}}}', NULL, 1735826214, 1735826214),
('9ddf5d87-94b2-41f3-af14-cff2f19ce92e', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:2731:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":6:{s:11:\"\0*\0exporter\";O:33:\"App\\Filament\\Exports\\UserExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:2;s:8:\"exporter\";s:33:\"App\\Filament\\Exports\\UserExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-01-02 14:05:24\";s:10:\"created_at\";s:19:\"2025-01-02 14:05:24\";s:2:\"id\";i:5;s:9:\"file_name\";s:14:\"export-5-users\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:2;s:8:\"exporter\";s:33:\"App\\Filament\\Exports\\UserExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-01-02 14:05:24\";s:10:\"created_at\";s:19:\"2025-01-02 14:05:24\";s:2:\"id\";i:5;s:9:\"file_name\";s:14:\"export-5-users\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:14:\"export-5-users\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:3:{s:2:\"id\";s:2:\"Id\";s:4:\"name\";s:4:\"Name\";s:5:\"email\";s:5:\"Email\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:5;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:3:{s:2:\"id\";s:2:\"Id\";s:4:\"name\";s:4:\"Name\";s:5:\"email\";s:5:\"Email\";}s:10:\"\0*\0formats\";a:1:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";}s:10:\"\0*\0options\";a:0:{}s:19:\"chainCatchCallbacks\";a:0:{}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"00000000000009130000000000000000\";}\";s:4:\"hash\";s:44:\"m8qNUqv+5W5rxNH2hcp6aSR7qPq0+8uSW/ZygV7ygq0=\";}}}}', NULL, 1735826724, 1735826724),
('9ddf611d-906f-4019-8558-6a09226ae78c', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:2731:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":6:{s:11:\"\0*\0exporter\";O:33:\"App\\Filament\\Exports\\UserExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:2;s:8:\"exporter\";s:33:\"App\\Filament\\Exports\\UserExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-01-02 14:15:25\";s:10:\"created_at\";s:19:\"2025-01-02 14:15:25\";s:2:\"id\";i:6;s:9:\"file_name\";s:14:\"export-6-users\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:2;s:8:\"exporter\";s:33:\"App\\Filament\\Exports\\UserExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-01-02 14:15:25\";s:10:\"created_at\";s:19:\"2025-01-02 14:15:25\";s:2:\"id\";i:6;s:9:\"file_name\";s:14:\"export-6-users\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:14:\"export-6-users\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:3:{s:2:\"id\";s:2:\"Id\";s:4:\"name\";s:4:\"Name\";s:5:\"email\";s:5:\"Email\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:6;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:3:{s:2:\"id\";s:2:\"Id\";s:4:\"name\";s:4:\"Name\";s:5:\"email\";s:5:\"Email\";}s:10:\"\0*\0formats\";a:1:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";}s:10:\"\0*\0options\";a:0:{}s:19:\"chainCatchCallbacks\";a:0:{}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"00000000000009130000000000000000\";}\";s:4:\"hash\";s:44:\"mLRRpGZ8lpa7tBTto14vasnlm+gj/B0JSBmCmi6hUFg=\";}}}}', NULL, 1735827325, 1735827325),
('9ddf62ab-2a16-4ddf-8e66-1cd8fa8a77c3', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:2731:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":6:{s:11:\"\0*\0exporter\";O:33:\"App\\Filament\\Exports\\UserExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:2;s:8:\"exporter\";s:33:\"App\\Filament\\Exports\\UserExporter\";s:10:\"total_rows\";i:2;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-01-02 14:19:46\";s:10:\"created_at\";s:19:\"2025-01-02 14:19:46\";s:2:\"id\";i:7;s:9:\"file_name\";s:14:\"export-7-users\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:2;s:8:\"exporter\";s:33:\"App\\Filament\\Exports\\UserExporter\";s:10:\"total_rows\";i:2;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-01-02 14:19:46\";s:10:\"created_at\";s:19:\"2025-01-02 14:19:46\";s:2:\"id\";i:7;s:9:\"file_name\";s:14:\"export-7-users\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:14:\"export-7-users\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:3:{s:2:\"id\";s:2:\"Id\";s:4:\"name\";s:4:\"Name\";s:5:\"email\";s:5:\"Email\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:7;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:3:{s:2:\"id\";s:2:\"Id\";s:4:\"name\";s:4:\"Name\";s:5:\"email\";s:5:\"Email\";}s:10:\"\0*\0formats\";a:1:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";}s:10:\"\0*\0options\";a:0:{}s:19:\"chainCatchCallbacks\";a:0:{}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"00000000000009120000000000000000\";}\";s:4:\"hash\";s:44:\"5oaYOA1EG1gAKh99r2Bply8GK1CaZUuVMuZqBAIwGH4=\";}}}}', NULL, 1735827586, 1735827586),
('9ddf6942-e8a0-48d0-bf06-75446798636e', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:2969:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":6:{s:11:\"\0*\0exporter\";O:36:\"App\\Filament\\Exports\\ServiceExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:2;s:8:\"exporter\";s:36:\"App\\Filament\\Exports\\ServiceExporter\";s:10:\"total_rows\";i:5;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-01-02 14:38:12\";s:10:\"created_at\";s:19:\"2025-01-02 14:38:12\";s:2:\"id\";i:9;s:9:\"file_name\";s:17:\"export-9-services\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:2;s:8:\"exporter\";s:36:\"App\\Filament\\Exports\\ServiceExporter\";s:10:\"total_rows\";i:5;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-01-02 14:38:12\";s:10:\"created_at\";s:19:\"2025-01-02 14:38:12\";s:2:\"id\";i:9;s:9:\"file_name\";s:17:\"export-9-services\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:17:\"export-9-services\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:6:{s:2:\"id\";s:2:\"Id\";s:5:\"title\";s:5:\"Title\";s:4:\"slug\";s:4:\"Slug\";s:10:\"icon_class\";s:10:\"Icon class\";s:10:\"short_desc\";s:10:\"Short desc\";s:11:\"description\";s:11:\"Description\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:9;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:6:{s:2:\"id\";s:2:\"Id\";s:5:\"title\";s:5:\"Title\";s:4:\"slug\";s:4:\"Slug\";s:10:\"icon_class\";s:10:\"Icon class\";s:10:\"short_desc\";s:10:\"Short desc\";s:11:\"description\";s:11:\"Description\";}s:10:\"\0*\0formats\";a:1:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";}s:10:\"\0*\0options\";a:0:{}s:19:\"chainCatchCallbacks\";a:0:{}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"000000000000074b0000000000000000\";}\";s:4:\"hash\";s:44:\"h7omAvvsv7zRxTs4cOjsiK2FG2//jPXdWnbZ18SSurc=\";}}}}', NULL, 1735828692, 1735828692),
('9ddf6fe5-1942-41c1-8c92-400c22363222', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:2689:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":6:{s:11:\"\0*\0exporter\";O:33:\"App\\Filament\\Exports\\RoleExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:2;s:8:\"exporter\";s:33:\"App\\Filament\\Exports\\RoleExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-01-02 14:56:45\";s:10:\"created_at\";s:19:\"2025-01-02 14:56:45\";s:2:\"id\";i:10;s:9:\"file_name\";s:15:\"export-10-roles\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:2;s:8:\"exporter\";s:33:\"App\\Filament\\Exports\\RoleExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-01-02 14:56:45\";s:10:\"created_at\";s:19:\"2025-01-02 14:56:45\";s:2:\"id\";i:10;s:9:\"file_name\";s:15:\"export-10-roles\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:15:\"export-10-roles\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:2:{s:2:\"id\";s:2:\"Id\";s:4:\"role\";s:4:\"Role\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:10;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:2:{s:2:\"id\";s:2:\"Id\";s:4:\"role\";s:4:\"Role\";}s:10:\"\0*\0formats\";a:1:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";}s:10:\"\0*\0options\";a:0:{}s:19:\"chainCatchCallbacks\";a:0:{}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"0000000000000b430000000000000000\";}\";s:4:\"hash\";s:44:\"BnxAHIoJj7JO3I+Kedn2btnGzWAAQRzwbxSEdUgkDPo=\";}}}}', NULL, 1735829805, 1735829805),
('9ddf7534-23f9-4c37-bcac-d8cad0880c1a', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:2841:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":6:{s:11:\"\0*\0exporter\";O:33:\"App\\Filament\\Exports\\PageExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:2;s:8:\"exporter\";s:33:\"App\\Filament\\Exports\\PageExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-01-02 15:11:36\";s:10:\"created_at\";s:19:\"2025-01-02 15:11:36\";s:2:\"id\";i:11;s:9:\"file_name\";s:15:\"export-11-pages\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:2;s:8:\"exporter\";s:33:\"App\\Filament\\Exports\\PageExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-01-02 15:11:36\";s:10:\"created_at\";s:19:\"2025-01-02 15:11:36\";s:2:\"id\";i:11;s:9:\"file_name\";s:15:\"export-11-pages\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:15:\"export-11-pages\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:5:{s:2:\"id\";s:2:\"Id\";s:5:\"title\";s:5:\"Title\";s:4:\"slug\";s:4:\"Slug\";s:5:\"image\";s:5:\"Image\";s:7:\"content\";s:7:\"Content\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:11;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:5:{s:2:\"id\";s:2:\"Id\";s:5:\"title\";s:5:\"Title\";s:4:\"slug\";s:4:\"Slug\";s:5:\"image\";s:5:\"Image\";s:7:\"content\";s:7:\"Content\";}s:10:\"\0*\0formats\";a:1:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";}s:10:\"\0*\0options\";a:0:{}s:19:\"chainCatchCallbacks\";a:0:{}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"00000000000007ed0000000000000000\";}\";s:4:\"hash\";s:44:\"NbH8oepeX95uM28ne8iyI5ZTdIKitcBp1yut5xPLCa4=\";}}}}', NULL, 1735830696, 1735830696),
('9ddf7547-029c-4b89-8de0-c09cc4e9c5b6', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:2841:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":6:{s:11:\"\0*\0exporter\";O:33:\"App\\Filament\\Exports\\PageExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:2;s:8:\"exporter\";s:33:\"App\\Filament\\Exports\\PageExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-01-02 15:11:48\";s:10:\"created_at\";s:19:\"2025-01-02 15:11:48\";s:2:\"id\";i:12;s:9:\"file_name\";s:15:\"export-12-pages\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:2;s:8:\"exporter\";s:33:\"App\\Filament\\Exports\\PageExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-01-02 15:11:48\";s:10:\"created_at\";s:19:\"2025-01-02 15:11:48\";s:2:\"id\";i:12;s:9:\"file_name\";s:15:\"export-12-pages\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:15:\"export-12-pages\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:5:{s:2:\"id\";s:2:\"Id\";s:5:\"title\";s:5:\"Title\";s:4:\"slug\";s:4:\"Slug\";s:5:\"image\";s:5:\"Image\";s:7:\"content\";s:7:\"Content\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:12;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:5:{s:2:\"id\";s:2:\"Id\";s:5:\"title\";s:5:\"Title\";s:4:\"slug\";s:4:\"Slug\";s:5:\"image\";s:5:\"Image\";s:7:\"content\";s:7:\"Content\";}s:10:\"\0*\0formats\";a:1:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";}s:10:\"\0*\0options\";a:0:{}s:19:\"chainCatchCallbacks\";a:0:{}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"00000000000007ed0000000000000000\";}\";s:4:\"hash\";s:44:\"a8a3t0QtvpoiFAIZvUym+ZOlRWkEWzr4/xl8hvJ6ByM=\";}}}}', NULL, 1735830708, 1735830708),
('9ddf7562-0925-4505-87b6-231c8088430e', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:2841:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":6:{s:11:\"\0*\0exporter\";O:33:\"App\\Filament\\Exports\\PageExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:2;s:8:\"exporter\";s:33:\"App\\Filament\\Exports\\PageExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-01-02 15:12:06\";s:10:\"created_at\";s:19:\"2025-01-02 15:12:06\";s:2:\"id\";i:13;s:9:\"file_name\";s:15:\"export-13-pages\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:2;s:8:\"exporter\";s:33:\"App\\Filament\\Exports\\PageExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-01-02 15:12:06\";s:10:\"created_at\";s:19:\"2025-01-02 15:12:06\";s:2:\"id\";i:13;s:9:\"file_name\";s:15:\"export-13-pages\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:15:\"export-13-pages\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:5:{s:2:\"id\";s:2:\"Id\";s:5:\"title\";s:5:\"Title\";s:4:\"slug\";s:4:\"Slug\";s:5:\"image\";s:5:\"Image\";s:7:\"content\";s:7:\"Content\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:13;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:5:{s:2:\"id\";s:2:\"Id\";s:5:\"title\";s:5:\"Title\";s:4:\"slug\";s:4:\"Slug\";s:5:\"image\";s:5:\"Image\";s:7:\"content\";s:7:\"Content\";}s:10:\"\0*\0formats\";a:1:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";}s:10:\"\0*\0options\";a:0:{}s:19:\"chainCatchCallbacks\";a:0:{}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"00000000000007ed0000000000000000\";}\";s:4:\"hash\";s:44:\"YpjapOVMtyOy+OaxySAfsQnnyByjud7wTiMijYuWXRA=\";}}}}', NULL, 1735830726, 1735830726),
('9ddf758b-5df0-4804-bef0-6ec8e6ac0b2c', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:2803:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":6:{s:11:\"\0*\0exporter\";O:32:\"App\\Filament\\Exports\\FaqExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:2;s:8:\"exporter\";s:32:\"App\\Filament\\Exports\\FaqExporter\";s:10:\"total_rows\";i:2;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-01-02 15:12:33\";s:10:\"created_at\";s:19:\"2025-01-02 15:12:33\";s:2:\"id\";i:14;s:9:\"file_name\";s:14:\"export-14-faqs\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:2;s:8:\"exporter\";s:32:\"App\\Filament\\Exports\\FaqExporter\";s:10:\"total_rows\";i:2;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-01-02 15:12:33\";s:10:\"created_at\";s:19:\"2025-01-02 15:12:33\";s:2:\"id\";i:14;s:9:\"file_name\";s:14:\"export-14-faqs\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:14:\"export-14-faqs\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:4:{s:2:\"id\";s:2:\"Id\";s:8:\"question\";s:8:\"Question\";s:6:\"answer\";s:6:\"Answer\";s:6:\"status\";s:6:\"Status\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:14;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:4:{s:2:\"id\";s:2:\"Id\";s:8:\"question\";s:8:\"Question\";s:6:\"answer\";s:6:\"Answer\";s:6:\"status\";s:6:\"Status\";}s:10:\"\0*\0formats\";a:1:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";}s:10:\"\0*\0options\";a:0:{}s:19:\"chainCatchCallbacks\";a:0:{}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"000000000000088e0000000000000000\";}\";s:4:\"hash\";s:44:\"EEJ2R0QvZWTE6IDD8VC+3ygj4GtmCUBzR3+y82x26a4=\";}}}}', NULL, 1735830753, 1735830753),
('9ddf769d-3af4-446f-98f6-7fd7240387d7', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:2803:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":6:{s:11:\"\0*\0exporter\";O:32:\"App\\Filament\\Exports\\FaqExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:2;s:8:\"exporter\";s:32:\"App\\Filament\\Exports\\FaqExporter\";s:10:\"total_rows\";i:2;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-01-02 15:15:32\";s:10:\"created_at\";s:19:\"2025-01-02 15:15:32\";s:2:\"id\";i:15;s:9:\"file_name\";s:14:\"export-15-faqs\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:2;s:8:\"exporter\";s:32:\"App\\Filament\\Exports\\FaqExporter\";s:10:\"total_rows\";i:2;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-01-02 15:15:32\";s:10:\"created_at\";s:19:\"2025-01-02 15:15:32\";s:2:\"id\";i:15;s:9:\"file_name\";s:14:\"export-15-faqs\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:14:\"export-15-faqs\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:4:{s:2:\"id\";s:2:\"Id\";s:8:\"question\";s:8:\"Question\";s:6:\"answer\";s:6:\"Answer\";s:6:\"status\";s:6:\"Status\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:15;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:4:{s:2:\"id\";s:2:\"Id\";s:8:\"question\";s:8:\"Question\";s:6:\"answer\";s:6:\"Answer\";s:6:\"status\";s:6:\"Status\";}s:10:\"\0*\0formats\";a:1:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";}s:10:\"\0*\0options\";a:0:{}s:19:\"chainCatchCallbacks\";a:0:{}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"000000000000088e0000000000000000\";}\";s:4:\"hash\";s:44:\"JMut5dakC9K4yIn8aZld7QGte5rwZp3fsx92AOKFLgQ=\";}}}}', NULL, 1735830932, 1735830932);
INSERT INTO `job_batches` (`id`, `name`, `total_jobs`, `pending_jobs`, `failed_jobs`, `failed_job_ids`, `options`, `cancelled_at`, `created_at`, `finished_at`) VALUES
('9ddf7710-f403-49b5-ae4b-82b2738d54b3', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:2812:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":6:{s:11:\"\0*\0exporter\";O:37:\"App\\Filament\\Exports\\CategoryExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:2;s:8:\"exporter\";s:37:\"App\\Filament\\Exports\\CategoryExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-01-02 15:16:48\";s:10:\"created_at\";s:19:\"2025-01-02 15:16:48\";s:2:\"id\";i:16;s:9:\"file_name\";s:20:\"export-16-categories\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:2;s:8:\"exporter\";s:37:\"App\\Filament\\Exports\\CategoryExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-01-02 15:16:48\";s:10:\"created_at\";s:19:\"2025-01-02 15:16:48\";s:2:\"id\";i:16;s:9:\"file_name\";s:20:\"export-16-categories\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:20:\"export-16-categories\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:4:{s:2:\"id\";s:2:\"Id\";s:4:\"name\";s:4:\"Name\";s:4:\"slug\";s:4:\"Slug\";s:6:\"status\";s:6:\"Status\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:16;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:4:{s:2:\"id\";s:2:\"Id\";s:4:\"name\";s:4:\"Name\";s:4:\"slug\";s:4:\"Slug\";s:6:\"status\";s:6:\"Status\";}s:10:\"\0*\0formats\";a:1:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";}s:10:\"\0*\0options\";a:0:{}s:19:\"chainCatchCallbacks\";a:0:{}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"000000000000088f0000000000000000\";}\";s:4:\"hash\";s:44:\"vI3WRohTq2i+SXve3MV87YqrA8gGX2OS1nomXp//PnI=\";}}}}', NULL, 1735831008, 1735831008),
('9ddf77a7-4154-4fcc-940c-e9f1b1c5a956', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:2812:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":6:{s:11:\"\0*\0exporter\";O:37:\"App\\Filament\\Exports\\CategoryExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:2;s:8:\"exporter\";s:37:\"App\\Filament\\Exports\\CategoryExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-01-02 15:18:27\";s:10:\"created_at\";s:19:\"2025-01-02 15:18:27\";s:2:\"id\";i:17;s:9:\"file_name\";s:20:\"export-17-categories\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:2;s:8:\"exporter\";s:37:\"App\\Filament\\Exports\\CategoryExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-01-02 15:18:27\";s:10:\"created_at\";s:19:\"2025-01-02 15:18:27\";s:2:\"id\";i:17;s:9:\"file_name\";s:20:\"export-17-categories\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:20:\"export-17-categories\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:4:{s:2:\"id\";s:2:\"Id\";s:4:\"name\";s:4:\"Name\";s:4:\"slug\";s:4:\"Slug\";s:6:\"status\";s:6:\"Status\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:17;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:4:{s:2:\"id\";s:2:\"Id\";s:4:\"name\";s:4:\"Name\";s:4:\"slug\";s:4:\"Slug\";s:6:\"status\";s:6:\"Status\";}s:10:\"\0*\0formats\";a:1:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";}s:10:\"\0*\0options\";a:0:{}s:19:\"chainCatchCallbacks\";a:0:{}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"000000000000088f0000000000000000\";}\";s:4:\"hash\";s:44:\"4GAfXMcO92WWK13B5KE9f3Uq/ZJASd1bGj78d1T2zso=\";}}}}', NULL, 1735831107, 1735831107),
('9ddf7c80-33bb-4cab-b9cb-d7b2f5bbf2ad', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:2812:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":6:{s:11:\"\0*\0exporter\";O:37:\"App\\Filament\\Exports\\CategoryExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:2;s:8:\"exporter\";s:37:\"App\\Filament\\Exports\\CategoryExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-01-02 15:32:00\";s:10:\"created_at\";s:19:\"2025-01-02 15:32:00\";s:2:\"id\";i:18;s:9:\"file_name\";s:20:\"export-18-categories\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:2;s:8:\"exporter\";s:37:\"App\\Filament\\Exports\\CategoryExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-01-02 15:32:00\";s:10:\"created_at\";s:19:\"2025-01-02 15:32:00\";s:2:\"id\";i:18;s:9:\"file_name\";s:20:\"export-18-categories\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:20:\"export-18-categories\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:4:{s:2:\"id\";s:2:\"Id\";s:4:\"name\";s:4:\"Name\";s:4:\"slug\";s:4:\"Slug\";s:6:\"status\";s:6:\"Status\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:18;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:4:{s:2:\"id\";s:2:\"Id\";s:4:\"name\";s:4:\"Name\";s:4:\"slug\";s:4:\"Slug\";s:6:\"status\";s:6:\"Status\";}s:10:\"\0*\0formats\";a:1:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";}s:10:\"\0*\0options\";a:0:{}s:19:\"chainCatchCallbacks\";a:0:{}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"000000000000088f0000000000000000\";}\";s:4:\"hash\";s:44:\"mdNkhgQKID5w8tBF25ph/Uj6ZPBB3QxAyoxPHwL+EZs=\";}}}}', NULL, 1735831920, 1735831920),
('9ddf7c97-e21b-45c4-9c43-0d478fbfb341', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:2812:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":6:{s:11:\"\0*\0exporter\";O:37:\"App\\Filament\\Exports\\CategoryExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:2;s:8:\"exporter\";s:37:\"App\\Filament\\Exports\\CategoryExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-01-02 15:32:15\";s:10:\"created_at\";s:19:\"2025-01-02 15:32:15\";s:2:\"id\";i:19;s:9:\"file_name\";s:20:\"export-19-categories\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:2;s:8:\"exporter\";s:37:\"App\\Filament\\Exports\\CategoryExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-01-02 15:32:15\";s:10:\"created_at\";s:19:\"2025-01-02 15:32:15\";s:2:\"id\";i:19;s:9:\"file_name\";s:20:\"export-19-categories\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:20:\"export-19-categories\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:4:{s:2:\"id\";s:2:\"Id\";s:4:\"name\";s:4:\"Name\";s:4:\"slug\";s:4:\"Slug\";s:6:\"status\";s:6:\"Status\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:19;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:4:{s:2:\"id\";s:2:\"Id\";s:4:\"name\";s:4:\"Name\";s:4:\"slug\";s:4:\"Slug\";s:6:\"status\";s:6:\"Status\";}s:10:\"\0*\0formats\";a:1:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";}s:10:\"\0*\0options\";a:0:{}s:19:\"chainCatchCallbacks\";a:0:{}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"000000000000088f0000000000000000\";}\";s:4:\"hash\";s:44:\"nsmE1dtfeCJjqlYJBeBhm02hhJc2iN9FS7L3mp+yNeQ=\";}}}}', NULL, 1735831935, 1735831936),
('9ddf827c-ef9d-46dc-8c4b-5349d2de039e', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:2737:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":6:{s:11:\"\0*\0exporter\";O:33:\"App\\Filament\\Exports\\UserExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:2;s:8:\"exporter\";s:33:\"App\\Filament\\Exports\\UserExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-01-02 15:48:44\";s:10:\"created_at\";s:19:\"2025-01-02 15:48:44\";s:2:\"id\";i:20;s:9:\"file_name\";s:15:\"export-20-users\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:2;s:8:\"exporter\";s:33:\"App\\Filament\\Exports\\UserExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-01-02 15:48:44\";s:10:\"created_at\";s:19:\"2025-01-02 15:48:44\";s:2:\"id\";i:20;s:9:\"file_name\";s:15:\"export-20-users\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:15:\"export-20-users\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:3:{s:2:\"id\";s:2:\"Id\";s:4:\"name\";s:4:\"Name\";s:5:\"email\";s:5:\"Email\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:20;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:3:{s:2:\"id\";s:2:\"Id\";s:4:\"name\";s:4:\"Name\";s:5:\"email\";s:5:\"Email\";}s:10:\"\0*\0formats\";a:1:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";}s:10:\"\0*\0options\";a:0:{}s:19:\"chainCatchCallbacks\";a:0:{}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"00000000000009130000000000000000\";}\";s:4:\"hash\";s:44:\"wpiq9aXxuYqicfBDBbTgl7140Cy0U1cH8L5aWmeHHAA=\";}}}}', NULL, 1735832924, 1735832924);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `fb_url` varchar(255) DEFAULT NULL,
  `tw_url` varchar(255) DEFAULT NULL,
  `in_url` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `designation`, `fb_url`, `tw_url`, `in_url`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Ravi Kumar', 'Web Devloper', 'https://facebook.com', 'https://twitter.com', 'https://instagram.com', '01JG1SAG5WKZ8XVZE0ZKX1DKZ5.jpg', 1, '2024-12-26 09:58:20', '2025-01-01 12:06:06'),
(2, 'Krish', 'Web Devloper', NULL, NULL, NULL, '01JG1SS1YMWHVFMKY87T9W040T.jpg', 1, '2024-12-26 10:06:17', '2024-12-26 10:32:18'),
(3, 'John Doe', 'Instructor', 'https://facebook.com', 'https://twitter.com', 'https://instagram.com', '01JGHF1T15YH1FRZDMCKMQSAJ6.jpg', 1, '2025-01-01 12:06:41', '2025-01-01 12:06:41');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_12_26_134111_create_services_table', 2),
(5, '2024_12_26_151135_create_members_table', 3),
(6, '2024_12_26_160559_create_categories_table', 4),
(7, '2024_12_26_163506_create_articles_table', 5),
(8, '2024_12_31_104246_create_faqs_table', 6),
(9, '2025_01_01_111616_create_pages_table', 7),
(10, '2025_01_01_132147_create_contacts_table', 8),
(11, '2025_01_01_141755_update_services_table', 9),
(14, '2025_01_02_105313_create_roles_table', 10),
(15, '2025_01_02_132753_create_imports_table', 11),
(16, '2025_01_02_132755_create_failed_import_rows_table', 12),
(17, '2025_01_02_124940_create_notifications_table', 13),
(18, '2025_01_02_132754_create_exports_table', 14),
(19, '2025_01_02_153108_create_notifications_table', 15);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `content` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `image`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'About Us', 'about-us', '01JGGSZ70ZB3EET5DB799XCM7B.jpg', '<h2>Lorum ipsum doller</h2><p><br></p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p><p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 1, '2025-01-01 05:58:15', '2025-01-01 09:30:29'),
(2, 'Privacy & Policy', 'privacy-policy', NULL, '<h3>Lorem ipsum dolor sit amet consectetur adipisicing elit.</h3><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias repellat illo libero accusamus voluptatibus earum possimus non necessitatibus fugiat quia dolor, assumenda consectetur ut.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias repellat illo libero accusamus voluptatibus earum possimus non necessitatibus fugiat quia dolor, assumenda consectetur ut.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias repellat illo libero accusamus voluptatibus earum possimus non necessitatibus fugiat quia dolor, assumenda consectetur ut.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias repellat illo libero accusamus voluptatibus earum possimus non necessitatibus fugiat quia dolor, assumenda consectetur ut.</p><h3>Lorem ipsum dolor sit amet consectetur adipisicing elit.</h3><ul><li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias</li></ul><h3>Lorem ipsum dolor sit amet consectetur adipisicing elit.</h3><ul><li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias</li></ul><h3>Lorem ipsum dolor sit amet consectetur adipisicing elit.</h3><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias repellat illo libero accusamus voluptatibus earum possimus non necessitatibus fugiat quia dolor, assumenda consectetur ut.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias repellat illo libero accusamus voluptatibus earum possimus non necessitatibus fugiat quia dolor, assumenda consectetur ut.</p><p><br></p>', 1, '2025-01-01 06:02:19', '2025-01-01 09:30:42'),
(3, 'Terms & Conditions', 'terms-conditions', NULL, '<h3>Lorem ipsum dolor sit amet consectetur adipisicing elit.</h3><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias repellat illo libero accusamus voluptatibus earum possimus non necessitatibus fugiat quia dolor, assumenda consectetur ut.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias repellat illo libero accusamus voluptatibus earum possimus non necessitatibus fugiat quia dolor, assumenda consectetur ut.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias repellat illo libero accusamus voluptatibus earum possimus non necessitatibus fugiat quia dolor, assumenda consectetur ut.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias repellat illo libero accusamus voluptatibus earum possimus non necessitatibus fugiat quia dolor, assumenda consectetur ut.</p><h3>Lorem ipsum dolor sit amet consectetur adipisicing elit.</h3><ul><li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias</li></ul><h3>Lorem ipsum dolor sit amet consectetur adipisicing elit.</h3><ul><li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias</li></ul><h3>Lorem ipsum dolor sit amet consectetur adipisicing elit.</h3><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias repellat illo libero accusamus voluptatibus earum possimus non necessitatibus fugiat quia dolor, assumenda consectetur ut.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias repellat illo libero accusamus voluptatibus earum possimus non necessitatibus fugiat quia dolor, assumenda consectetur ut.</p><p><br></p>', 1, '2025-01-01 06:03:11', '2025-01-01 09:30:59');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('ravi@gmail.com', '$2y$12$tL7NS6oKHuG5LX0PD8MstuZ7CPU25onhLGhlYBHkKxIfDhU9emGC6', '2025-01-01 07:18:38'),
('rkconsultancy34@gmail.com', '$2y$12$UKB8RZiLb7nouC6K71G7b.V4zf5HJrk9YyYBVN3fPofNjJqWzlYMq', '2025-01-01 07:23:23');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2025-01-02 05:52:22', '2025-01-02 05:52:22'),
(2, 'marketing', '2025-01-02 06:07:23', '2025-01-02 06:07:23'),
(3, 'normal', '2025-01-02 06:10:01', '2025-01-02 06:10:01');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `icon_class` varchar(255) DEFAULT NULL,
  `short_desc` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `slug`, `icon_class`, `short_desc`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Digital Marketing', 'digital-marketing', 'Dumy', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy</p>', 1, '2024-12-26 08:47:08', '2025-01-01 08:52:50'),
(3, 'Graphic design', 'graphic-design', 'Dumy', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy</p>', 1, '2024-12-26 08:47:45', '2025-01-01 08:53:38'),
(4, 'Search Engine Optimization', 'search-engine-optimization', 'Dumy', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod</p>', 1, '2024-12-26 08:49:47', '2025-01-01 08:55:33'),
(5, 'Logo Design', 'logo-design', 'Dumy', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy</p>', 1, '2024-12-26 08:50:27', '2025-01-01 08:55:48'),
(6, 'Web Design', 'web-design', 'Dumy', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy</p>', 1, '2024-12-26 08:51:01', '2025-01-01 08:56:11');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` bigint(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role_id`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Ravi kumar', 'ravi395950@gmail.com', NULL, '$2y$12$J5VhKv/sJGXBu5REuhnA3.Ng/yqyv3woY.FcQ1ER8IrIX23MYv9vm', 0, 1, 'RbIe5ubfNjsVav5oklQQnnPLUOSKImnGHMQoNWr7IEHTv5EyNU2UFfc5UuU2', '2024-12-26 07:36:23', '2025-01-02 06:20:31'),
(3, 'Krish', 'rkconsultancy34@gmail.com', NULL, '$2y$12$mXv5kUm2.xYSfBIbvY03K.SEdcakKISdKTUg//K7IOfnwrfZbwW..', 2, 1, NULL, '2025-01-01 07:22:54', '2025-01-02 06:10:24'),
(4, 'Krish', 'krish@gmail.com', NULL, '$2y$12$mbeHzKP4w6sq2gV84CUonegXU1AuOHCM038dMnGuM.Z1AKyrAHc1m', 3, 1, NULL, '2025-01-02 05:53:08', '2025-01-02 06:06:22'),
(5, 'Education', 'education@gmail.com', NULL, '$2y$12$EW0cpTl3jY5afU8hHmDQxucRJXWOqnMhbByC558N8dSCSLs7o0EQO', 0, 1, NULL, '2025-01-02 07:49:23', '2025-01-02 07:49:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_category_id_foreign` (`category_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exports`
--
ALTER TABLE `exports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exports_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_import_rows`
--
ALTER TABLE `failed_import_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `failed_import_rows_import_id_foreign` (`import_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `imports`
--
ALTER TABLE `imports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `imports_user_id_foreign` (`user_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `exports`
--
ALTER TABLE `exports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_import_rows`
--
ALTER TABLE `failed_import_rows`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `imports`
--
ALTER TABLE `imports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `exports`
--
ALTER TABLE `exports`
  ADD CONSTRAINT `exports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `failed_import_rows`
--
ALTER TABLE `failed_import_rows`
  ADD CONSTRAINT `failed_import_rows_import_id_foreign` FOREIGN KEY (`import_id`) REFERENCES `imports` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `imports`
--
ALTER TABLE `imports`
  ADD CONSTRAINT `imports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
