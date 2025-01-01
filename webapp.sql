-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2025 at 06:47 PM
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

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('62dcdddd2131784090e8a5916c260a90678e71b3', 'i:2;', 1735753422),
('62dcdddd2131784090e8a5916c260a90678e71b3:timer', 'i:1735753422;', 1735753422),
('a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1735745973),
('a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1735745973;', 1735745973),
('c249f2149727eeb79f1792b01e586e68c4ec6608', 'i:2;', 1735736017),
('c249f2149727eeb79f1792b01e586e68c4ec6608:timer', 'i:1735736017;', 1735736017),
('da4b9237bacccdf19c0760cab7aec4a8359010b0', 'i:1;', 1735753207),
('da4b9237bacccdf19c0760cab7aec4a8359010b0:timer', 'i:1735753207;', 1735753207);

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
(5, 'default', '{\"uuid\":\"8ab9a171-f778-4435-aa14-471139c23cfb\",\"displayName\":\"Filament\\\\Notifications\\\\Auth\\\\ResetPassword\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:41:\\\"Filament\\\\Notifications\\\\Auth\\\\ResetPassword\\\":3:{s:3:\\\"url\\\";s:223:\\\"http:\\/\\/127.0.0.1:8000\\/admin\\/password-reset\\/reset?email=ravi395950%40gmail.com&token=b2027bb2fbae12a2228231f009832580f7d533235e645b470a8a5d0a1a9d7e4a&signature=5fb43e347ad41899ee08fa99f312a79e2eb4525d9237a052dbeac9da7be42849\\\";s:5:\\\"token\\\";s:64:\\\"b2027bb2fbae12a2228231f009832580f7d533235e645b470a8a5d0a1a9d7e4a\\\";s:2:\\\"id\\\";s:36:\\\"6cf77a82-7482-472a-adc2-497bc1d1d74a\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1735753362, 1735753362);

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
(12, '2025_01_01_145519_update_pages_table', 10);

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
('ravi395950@gmail.com', '$2y$12$h9KxQrTlgzpit1SN2GoCju5insnHbuA8ucenziViPD.oH9o97ERvq', '2025-01-01 12:12:42'),
('rkconsultancy34@gmail.com', '$2y$12$UKB8RZiLb7nouC6K71G7b.V4zf5HJrk9YyYBVN3fPofNjJqWzlYMq', '2025-01-01 07:23:23');

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Ravi kumar', 'ravi395950@gmail.com', NULL, '$2y$12$ffuqUEzTETJqjUZDReh79O0.Vx1mBnKnadkbr/mX50S..5s5tjKIe', 'qkDdtGkUe22LPz8rCXIgjMvODoe0Wuf44En3MxiP4UOqJGvRF5cRirh2qnE4', '2024-12-26 07:36:23', '2025-01-01 07:19:23'),
(3, 'Krish', 'rkconsultancy34@gmail.com', NULL, '$2y$12$m2TNIx7C44UhokVdL3UU5OIFQD8ODPsU8vK.piLwHkPF6qJ8h84F6', NULL, '2025-01-01 07:22:54', '2025-01-01 07:22:54');

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
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
