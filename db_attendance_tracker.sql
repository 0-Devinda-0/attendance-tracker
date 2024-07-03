-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2024 at 01:03 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_attendance_tracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `marked_by` bigint(20) UNSIGNED NOT NULL,
  `student` bigint(20) UNSIGNED NOT NULL,
  `subject` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `marked_by`, `student`, `subject`, `created_at`, `updated_at`) VALUES
(3, 1, 1, 1, '2024-07-03 01:04:42', NULL),
(4, 1, 2, 1, '2024-07-03 01:23:25', NULL),
(5, 1, 3, 1, '2024-07-03 01:23:25', NULL),
(6, 1, 4, 1, '2024-07-03 01:23:25', NULL),
(7, 1, 6, 1, '2024-07-03 01:23:25', NULL),
(8, 1, 9, 1, '2024-07-03 01:23:25', NULL),
(9, 1, 11, 1, '2024-07-03 01:23:25', NULL),
(10, 1, 14, 1, '2024-07-03 01:23:25', NULL),
(11, 1, 5, 1, '2024-07-03 02:51:01', NULL),
(12, 1, 7, 1, '2024-07-03 02:51:01', NULL),
(13, 1, 3, 4, '2024-07-03 03:32:53', NULL),
(14, 1, 8, 4, '2024-07-03 03:32:53', NULL),
(15, 1, 11, 4, '2024-07-03 03:32:53', NULL),
(16, 1, 13, 4, '2024-07-03 03:32:53', NULL),
(17, 1, 16, 4, '2024-07-03 03:32:53', NULL);

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
-- Table structure for table `enrolled`
--

CREATE TABLE `enrolled` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student` bigint(20) UNSIGNED NOT NULL,
  `subject` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enrolled`
--

INSERT INTO `enrolled` (`id`, `student`, `subject`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(2, 1, 2, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(3, 1, 3, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(4, 2, 4, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(5, 2, 5, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(6, 2, 1, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(7, 3, 2, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(8, 3, 3, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(9, 3, 4, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(10, 4, 5, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(11, 4, 1, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(12, 4, 3, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(13, 5, 4, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(14, 5, 5, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(15, 5, 1, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(16, 6, 2, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(17, 6, 3, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(18, 6, 4, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(19, 7, 5, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(20, 7, 1, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(21, 7, 2, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(22, 8, 3, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(23, 8, 4, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(24, 8, 5, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(25, 9, 1, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(26, 9, 2, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(27, 9, 3, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(28, 10, 4, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(29, 10, 5, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(30, 10, 1, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(31, 11, 2, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(32, 11, 3, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(33, 11, 4, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(34, 12, 5, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(35, 12, 1, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(36, 12, 2, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(37, 13, 3, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(38, 13, 4, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(39, 13, 5, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(40, 14, 1, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(41, 14, 2, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(42, 14, 3, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(43, 15, 4, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(44, 15, 5, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(45, 15, 1, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(46, 16, 2, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(47, 16, 3, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(48, 16, 4, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(49, 17, 5, '2024-07-03 05:54:10', '2024-07-03 05:54:10'),
(50, 17, 1, '2024-07-03 05:54:10', '2024-07-03 05:54:10');

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
(4, '2024_07_02_212048_create_personal_access_tokens_table', 1),
(5, '2024_07_02_212240_create_students_table', 1),
(6, '2024_07_02_212254_create_teachers_table', 1),
(7, '2024_07_02_212304_create_subjects_table', 1),
(8, '2024_07_02_212321_create_enrolled_table', 1),
(9, '2024_07_02_212334_create_teach_table', 1),
(10, '2024_07_02_212822_create_attendance_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('AVFmuwUwqa0EaxJcZgZvthJwyfTJJa3dtj5LBGzH', NULL, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaUhmcEZtbGxHakd4RlgwZTVUT0MzMno5VktRNXk5VmZkRkN3WjJMeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1720001217),
('BLvd1fYXs8ZXc6qMeDJTfl0h8ov16YPRkODqPbj2', NULL, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZzVzZ1pnczhrMEhlOFUwNlU0TWJaVXIwcFNDZzMxTHNJdThUbDdLZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1719999840),
('cg78qKAz7VSEtav45dxzU4vkX8alv7pNZHW9dLlo', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicG0yRzFMSVRETzJzOWVtU3gzMjA1dXd3MmhvRkxjUWVVSGUyclRuUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1719999795),
('gZtfJ7SzjIZDoVOn6sbHysaALNMC428QBeXAOC3x', NULL, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTDFVQVdmS3VVYW0ySWkyd3V5TUgxVE9XcUs2ajlicjZ2U0pNN2JBNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1720001203),
('iadGdUzenuUNzgso22hLgJSdoK4ifnYV8o0eKAfy', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOXdrMzc0SThaOTFaYmxZVUxRVm9GdEhkbnlNUXFVbmtaOWFvYU9JRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1719955879),
('LXLAg6dRytka0NYJv26c1Pgp5jzIjNKs4dMFywno', NULL, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaEpTalBNQnkzQ2p4UnhUZDdrQ2JxN2Q5QWFVOGhTRlJ4MXN5N0R0aSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1719999814),
('maDrmSnJFVUkqW9c2bV0LiFgRw9aw6XoZw4gBtSZ', NULL, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ3I4VjJieUVOZFhLM2Jham13ZkdMUm1kdUJJRGVidEhpZGR2ZWVMNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1720000086),
('tuvGwflJrqUHlxSJNAWnpZ3YEjyDc5cTTcVcNxst', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSHVubU1hOTJUT2JhR2owQTNnNWFBQU5wckdJeEMxcUppRUh4emdlTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1720001093);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `s_first_name` varchar(255) NOT NULL,
  `s_last_name` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `s_first_name`, `s_last_name`, `dob`, `created_at`, `updated_at`) VALUES
(1, 'Marina Huels Jr.', 'Justine Wintheiser', '1979-05-12', '2024-07-02 17:35:48', '2024-07-02 17:35:48'),
(2, 'Vivienne Nader', 'Dorothea Moore', '1987-05-12', '2024-07-02 17:35:48', '2024-07-02 17:35:48'),
(3, 'Prof. Narciso Satterfield', 'Cole Tillman MD', '1997-08-14', '2024-07-02 17:35:48', '2024-07-02 17:35:48'),
(4, 'Stephon Strosin', 'Roxane Dietrich', '1988-08-04', '2024-07-02 17:35:48', '2024-07-02 17:35:48'),
(5, 'Shanie Lakin', 'August Fisher', '1977-02-06', '2024-07-02 17:35:48', '2024-07-02 17:35:48'),
(6, 'Jeffrey Larson PhD', 'Oda Kub', '2008-06-22', '2024-07-02 17:35:48', '2024-07-02 17:35:48'),
(7, 'Lonnie Herman Sr.', 'Maxwell Gutmann', '1971-05-28', '2024-07-02 17:35:48', '2024-07-02 17:35:48'),
(8, 'Abigale Haley', 'Lesly Dickens PhD', '1997-03-23', '2024-07-02 17:35:48', '2024-07-02 17:35:48'),
(9, 'Hassie Gleason', 'Margie Kautzer PhD', '1992-03-15', '2024-07-02 17:35:48', '2024-07-02 17:35:48'),
(10, 'Dr. Efren Schmitt', 'Elias Padberg', '2024-01-01', '2024-07-02 17:35:48', '2024-07-02 17:35:48'),
(11, 'Emmett Maggio', 'Armand Breitenberg', '2013-05-17', '2024-07-02 17:35:49', '2024-07-02 17:35:49'),
(12, 'Kaycee Yost', 'Prof. Chaim Collins', '1990-03-27', '2024-07-02 17:35:49', '2024-07-02 17:35:49'),
(13, 'Trevor Murphy II', 'Bonnie Ullrich', '2013-06-04', '2024-07-02 17:35:49', '2024-07-02 17:35:49'),
(14, 'Prof. Savanah Grimes', 'Joy Hauck', '2011-08-31', '2024-07-02 17:35:49', '2024-07-02 17:35:49'),
(15, 'Elvera Beahan', 'Mona Prohaska', '2003-12-25', '2024-07-02 17:35:49', '2024-07-02 17:35:49'),
(16, 'Ms. Fiona Skiles', 'Meaghan Miller', '1992-09-10', '2024-07-02 17:35:49', '2024-07-02 17:35:49'),
(17, 'Charlie Lowe', 'Alexandro Keeling', '2014-09-19', '2024-07-02 17:35:49', '2024-07-02 17:35:49'),
(18, 'Elisabeth Green', 'Prof. Beatrice Renner', '2024-01-20', '2024-07-02 17:35:49', '2024-07-02 17:35:49'),
(19, 'Dr. Ricky Prohaska DDS', 'Zoila Kreiger', '1991-02-04', '2024-07-02 17:35:49', '2024-07-02 17:35:49'),
(20, 'Mr. Arnoldo Bergstrom', 'Lennie Rowe', '2000-10-30', '2024-07-02 17:35:49', '2024-07-02 17:35:49'),
(21, 'Landen Altenwerth', 'Prof. Darrick Williamson Jr.', '1984-02-19', '2024-07-02 17:35:49', '2024-07-02 17:35:49'),
(22, 'Kobe Aufderhar', 'Penelope Parker Jr.', '2000-12-04', '2024-07-02 17:35:49', '2024-07-02 17:35:49'),
(23, 'Breana Price', 'Hortense Franecki', '1994-02-15', '2024-07-02 17:35:49', '2024-07-02 17:35:49'),
(24, 'Ines Hill', 'Rubie Reichert', '2007-02-28', '2024-07-02 17:35:49', '2024-07-02 17:35:49'),
(25, 'Dr. Kay Bosco Sr.', 'Marianna Nikolaus', '1977-08-19', '2024-07-02 17:35:49', '2024-07-02 17:35:49'),
(26, 'Sibyl Goldner', 'Trevion Schoen', '2011-03-20', '2024-07-02 17:35:49', '2024-07-02 17:35:49'),
(27, 'Brock Douglas Sr.', 'Bertrand Yost PhD', '2019-08-18', '2024-07-02 17:35:49', '2024-07-02 17:35:49'),
(28, 'Ivy Lehner II', 'Jacklyn Hoeger', '2019-06-16', '2024-07-02 17:35:49', '2024-07-02 17:35:49'),
(29, 'Carson Casper', 'Vernon Stiedemann Jr.', '2006-02-16', '2024-07-02 17:35:49', '2024-07-02 17:35:49'),
(30, 'Guillermo Windler', 'Christopher White Sr.', '1980-04-16', '2024-07-02 17:35:49', '2024-07-02 17:35:49'),
(31, 'Brooklyn Lubowitz', 'Prof. Jason Koelpin', '1970-05-19', '2024-07-02 17:35:49', '2024-07-02 17:35:49'),
(32, 'Ms. Whitney Littel', 'Mrs. Sallie Olson', '1989-12-24', '2024-07-02 17:35:49', '2024-07-02 17:35:49'),
(33, 'Savanna Hilpert', 'Miss Reta Stracke V', '1998-05-27', '2024-07-02 17:35:49', '2024-07-02 17:35:49'),
(34, 'Dr. Paolo Bergstrom IV', 'Ezequiel Auer', '2012-10-31', '2024-07-02 17:35:49', '2024-07-02 17:35:49'),
(35, 'Emiliano Hansen', 'Prof. Weston Upton DVM', '2015-09-21', '2024-07-02 17:35:49', '2024-07-02 17:35:49'),
(36, 'Jess Sauer', 'Ms. Brandi Harris PhD', '2021-10-08', '2024-07-02 17:35:49', '2024-07-02 17:35:49'),
(37, 'Rae Gleason', 'Dolly Boehm Jr.', '1971-11-01', '2024-07-02 17:35:49', '2024-07-02 17:35:49'),
(38, 'Mr. Karl Jenkins', 'Bill McDermott', '1995-08-23', '2024-07-02 17:35:49', '2024-07-02 17:35:49'),
(39, 'Bill Leuschke', 'Reba Koepp', '1971-07-16', '2024-07-02 17:35:49', '2024-07-02 17:35:49'),
(40, 'Prof. Terence Feil III', 'Amani Tromp', '2014-09-09', '2024-07-02 17:35:49', '2024-07-02 17:35:49'),
(41, 'Mrs. Marcelle Krajcik V', 'Melvina Wisoky IV', '2012-01-03', '2024-07-02 17:35:49', '2024-07-02 17:35:49'),
(42, 'Ms. Shanie Farrell', 'Nicolette Bechtelar III', '2002-10-03', '2024-07-02 17:35:49', '2024-07-02 17:35:49'),
(43, 'Maude Schaden', 'Justen Schaden', '1975-08-14', '2024-07-02 17:35:49', '2024-07-02 17:35:49'),
(44, 'Jerrold Graham', 'Jeromy Yundt', '1998-12-30', '2024-07-02 17:35:49', '2024-07-02 17:35:49'),
(45, 'Arlene Lueilwitz DDS', 'Johathan Krajcik', '1976-11-19', '2024-07-02 17:35:49', '2024-07-02 17:35:49'),
(46, 'Cleveland West', 'Ms. Muriel Gutmann Sr.', '1980-07-13', '2024-07-02 17:35:49', '2024-07-02 17:35:49'),
(47, 'Milan West', 'Dariana Osinski', '2002-10-03', '2024-07-02 17:35:49', '2024-07-02 17:35:49'),
(48, 'Amie Lindgren', 'Arvel Mayer', '1986-12-30', '2024-07-02 17:35:49', '2024-07-02 17:35:49'),
(49, 'Florencio Lang', 'Darby Mills', '2021-08-08', '2024-07-02 17:35:49', '2024-07-02 17:35:49'),
(50, 'Salvatore Wyman', 'Timmothy Hickle', '2020-01-12', '2024-07-02 17:35:49', '2024-07-02 17:35:49');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `subject_name`, `created_at`, `updated_at`) VALUES
(1, 'test3', '2024-07-02 16:40:03', '2024-07-02 16:40:03'),
(2, 'test1', '2024-07-03 00:23:45', '2024-07-03 00:23:45'),
(3, 'test2', '2024-07-03 00:23:55', '2024-07-03 00:23:55'),
(4, 'test4', '2024-07-03 00:24:01', '2024-07-03 00:24:01'),
(5, 'test5', '2024-07-03 00:24:06', '2024-07-03 00:24:06');

-- --------------------------------------------------------

--
-- Table structure for table `teach`
--

CREATE TABLE `teach` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teach` bigint(20) UNSIGNED NOT NULL,
  `subject` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `first_name`, `last_name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', 'hashed_password1', '2024-07-03 06:32:25', '2024-07-03 06:32:25'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', 'hashed_password2', '2024-07-03 06:32:25', '2024-07-03 06:32:25'),
(3, 'Michael', 'Johnson', 'michael.johnson@example.com', 'hashed_password3', '2024-07-03 06:32:25', '2024-07-03 06:32:25'),
(4, 'Emily', 'Brown', 'emily.brown@example.com', 'hashed_password4', '2024-07-03 06:32:25', '2024-07-03 06:32:25'),
(5, 'David', 'Wilson', 'david.wilson@example.com', 'hashed_password5', '2024-07-03 06:32:25', '2024-07-03 06:32:25');

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
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendance_marked_by_foreign` (`marked_by`),
  ADD KEY `attendance_student_foreign` (`student`),
  ADD KEY `attendance_subject_foreign` (`subject`);

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
-- Indexes for table `enrolled`
--
ALTER TABLE `enrolled`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enrolled_student_foreign` (`student`),
  ADD KEY `enrolled_subject_foreign` (`subject`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teach`
--
ALTER TABLE `teach`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teach_teach_foreign` (`teach`),
  ADD KEY `teach_subject_foreign` (`subject`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `enrolled`
--
ALTER TABLE `enrolled`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `teach`
--
ALTER TABLE `teach`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_marked_by_foreign` FOREIGN KEY (`marked_by`) REFERENCES `teachers` (`id`),
  ADD CONSTRAINT `attendance_student_foreign` FOREIGN KEY (`student`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `attendance_subject_foreign` FOREIGN KEY (`subject`) REFERENCES `subjects` (`id`);

--
-- Constraints for table `enrolled`
--
ALTER TABLE `enrolled`
  ADD CONSTRAINT `enrolled_student_foreign` FOREIGN KEY (`student`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `enrolled_subject_foreign` FOREIGN KEY (`subject`) REFERENCES `subjects` (`id`);

--
-- Constraints for table `teach`
--
ALTER TABLE `teach`
  ADD CONSTRAINT `teach_subject_foreign` FOREIGN KEY (`subject`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `teach_teach_foreign` FOREIGN KEY (`teach`) REFERENCES `teachers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
