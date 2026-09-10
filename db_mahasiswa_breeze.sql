-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2026 at 01:10 PM
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
-- Database: `db_mahasiswa_breeze`
--

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
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nim` varchar(20) NOT NULL,
  `nama_mahasiswa` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `alamat` text NOT NULL,
  `program_studi` varchar(255) NOT NULL,
  `nomor_hp` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nim`, `nama_mahasiswa`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `program_studi`, `nomor_hp`, `email`, `created_at`, `updated_at`) VALUES
(1, '25781023', 'Sebriana Sihotang', 'sarolangun, jambi', '2006-09-30', 'Perempuan', 'pakkat, medan', 'Manajemen Informatika', '081234567890', 'sebriana@gmail.com', '2026-09-10 09:40:43', '2026-09-10 03:31:56'),
(3, '25781022', 'Rosmeri simatupang', 'medan', '2006-12-20', 'Perempuan', 'sidikalang', 'manejemen informatika', '082176326653', 'rosmeri@gmail.com', '2026-09-10 03:33:21', '2026-09-10 03:33:21'),
(4, '25781010', 'haya agniya jaida malik', 'tasik', '2006-11-20', 'Perempuan', 'tasikmalaya', 'manejemen informatika', '098764314176', 'haya@gmail.com', '2026-09-10 03:45:05', '2026-09-10 03:45:05'),
(5, '25781009', 'gandis asmara', 'muara enim,palembang', '2005-09-29', 'Perempuan', 'muara enim, palembang', 'manejemen informatika', '086354787165', 'ndis@gmail.com', '2026-09-10 03:46:25', '2026-09-10 03:46:25'),
(6, '25781000', 'ariesman partogi purba', 'siantar, medan', '2004-03-23', 'Laki-laki', 'doloksanggul,medan', 'manajemen informatika', '0827166534345', 'man@gmail.com', '2026-09-10 03:48:21', '2026-09-10 03:48:21'),
(7, '25781001', 'Abdul Qohar Ataqiyu', 'Bandar Lampung', '2006-01-01', 'Laki-laki', 'Bandar Lampung', 'Manajemen Informatika', '081234560001', 'abdul.kohar01@gmail.com', '2026-09-10 10:59:58', '2026-09-10 10:59:58'),
(8, '25781002', 'Alvin Aditya Tama', 'Bandar Lampung', '2006-01-01', 'Laki-laki', 'Bandar Lampung', 'Manajemen Informatika', '081234560002', 'alvin.aditya02@gmail.com', '2026-09-10 10:59:58', '2026-09-10 10:59:58'),
(9, '25781003', 'Dimar Gevira Agista', 'Bandar Lampung', '2006-08-20', 'Perempuan', 'Bandar Lampung', 'Manajemen Informatika', '081234560003', 'dimar.gefira03@gmail.com', '2026-09-10 10:59:58', '2026-09-10 10:59:58'),
(10, '25781004', 'Bontor halomoan silalahi', 'Pematangsiantar', '2006-01-01', 'Laki-laki', 'Siantar, Medan', 'Manajemen Informatika', '081234560004', 'bontor04@gmail.com', '2026-09-10 10:59:58', '2026-09-10 10:59:58'),
(11, '25781016', 'Naillah risqika intan saputri', 'Palembang', '2007-08-11', 'Perempuan', 'Palembang, Sumatera Selatan', 'Manajemen Informatika', '081234560016', 'laila.reskika16@gmail.com', '2026-09-10 10:59:58', '2026-09-10 10:59:58'),
(12, '25781017', 'Putri Aulia Rahmatilah', 'Bandar Lampung', '2006-08-21', 'Perempuan', 'Kedaton, Bandar Lampung', 'Manajemen Informatika', '081234560017', 'putri.aulia17@gmail.com', '2026-09-10 10:59:58', '2026-09-10 10:59:58'),
(13, '25781018', 'zenissa Pratiwi', 'Bandar Lampung', '2006-01-01', 'Perempuan', 'Bandar Lampung', 'Manajemen Informatika', '081234560018', 'jennifer.tiwi18@gmail.com', '2026-09-10 10:59:58', '2026-09-10 10:59:58'),
(14, '25781019', 'Yandri Utama', 'Lampung Selatan', '2006-01-01', 'Laki-laki', 'Lampung Selatan', 'Manajemen Informatika', '081234560019', 'yandri.utama19@gmail.com', '2026-09-10 10:59:58', '2026-09-10 10:59:58'),
(15, '2578125', 'Ana Cantik', 'jambi', '2006-09-30', 'Perempuan', 'Bandar lampung', 'manajemen informatika', '08543543323481', 'anaaaaavv@gmail.com', '2026-09-10 04:03:55', '2026-09-10 04:03:55'),
(16, '2578110', 'princess sebri', 'kayangan', '2026-09-12', 'Perempuan', 'langit dan bumi', 'tidak ada yang tau', '098765432234', 'kayang@gmail.com', '2026-09-10 04:05:40', '2026-09-10 04:06:09');

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
(4, '2026_09_10_093715_create_mahasiswas_table', 2);

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
('BM6vonboZrQLLco53I5ZGeBohMds0Cp1KjKhNEFp', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:155.0) Gecko/20100101 Firefox/155.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidlNhajFXYm5HR0NRc2dIenk5Qk5iczNIQlA4ZzdpTjltNE53UHFBSyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7czo1OiJyb3V0ZSI7czo1OiJsb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789038139),
('KfvaKHszby4CE4ar7XV8DYR5AooOwBj2uN949ipD', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:155.0) Gecko/20100101 Firefox/155.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWVJmbFcyMVZNZFpYRjNxZXcySmRRTVlXbUtJYldRMFVyRHlNNjg3UiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL21haGFzaXN3YSI7fXM6OToiX3ByZXZpb3VzIjthOjI6e3M6MzoidXJsIjtzOjMxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvbWFoYXNpc3dhIjtzOjU6InJvdXRlIjtzOjE1OiJtYWhhc2lzd2EuaW5kZXgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1789038139),
('kyUgY3uwseetwOikFcPoicxim8d3Agtb7mkfW6h7', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:155.0) Gecko/20100101 Firefox/155.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiTnp5djJzaTl5YzhoMktONU1QMlpySURqZTlCM0x6Y1NzMzZyaUZkVCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9tYWhhc2lzd2EiO3M6NToicm91dGUiO3M6MTU6Im1haGFzaXN3YS5pbmRleCI7fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1789038534),
('LuUurexkxPYkQJxk4CZD8m2x7ZNgDa5CMS8ZBKuZ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:155.0) Gecko/20100101 Firefox/155.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOTdNQWtTd2VpNnhoVWplNmhiNnNib01iTURvdm9WVWFzV1o4YnN6SCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7czo1OiJyb3V0ZSI7czo1OiJsb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789037529),
('nz7jiC7TGFN4rFH87X5gyeLNIDhkr6zptPjr25hM', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMnU0SW5DV0JFaW9LNWZjdkE0RXpGQTdOdVZieGlqaWtkNnl0RWE1cyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9tYWhhc2lzd2EiO3M6NToicm91dGUiO3M6MTU6Im1haGFzaXN3YS5pbmRleCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1789034524),
('ySPEaBZOxreT6ho1lbE5Ob2OBZ3AiNjhqNpd5r4p', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:155.0) Gecko/20100101 Firefox/155.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSnAzN0k2TjZmTXhKMTJFWkdNNjNCZm01bEl3OUY0RVU4OUZBNWNxYyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozODoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL21haGFzaXN3YS9jcmVhdGUiO31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czozODoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL21haGFzaXN3YS9jcmVhdGUiO3M6NToicm91dGUiO3M6MTY6Im1haGFzaXN3YS5jcmVhdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1789037529);

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
(1, 'sebriana', 'sebrianasihotang@gmail.com', NULL, '$2y$12$0OPdmKYWYZsB2t8YGzyS1Oy6BbXJD1RuIL9HUhhqOm9lN1eoIfN0u', 'nUuJkwgDHcBaZ4zkZjkbOXvu4SM62d0hxyiWaA3kV91BdkmP9Cb19sXUcuct', '2026-09-10 02:36:23', '2026-09-10 02:36:23');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mahasiswa_nim_unique` (`nim`),
  ADD UNIQUE KEY `mahasiswa_email_unique` (`email`);

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
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
