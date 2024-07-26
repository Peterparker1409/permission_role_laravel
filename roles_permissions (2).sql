-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 26, 2024 lúc 11:58 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `roles_permissions`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_05_26_145836_create_permission_tables', 1),
(6, '2023_05_26_150238_create_products_table', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 5),
(1, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 4),
(3, 'App\\Models\\User', 7),
(3, 'App\\Models\\User', 11),
(3, 'App\\Models\\User', 14),
(3, 'App\\Models\\User', 15),
(3, 'App\\Models\\User', 18),
(3, 'App\\Models\\User', 23),
(3, 'App\\Models\\User', 25),
(4, 'App\\Models\\User', 16);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) NOT NULL,
  `guard_name` varchar(125) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', '2023-05-26 08:13:22', '2023-05-26 08:13:22'),
(2, 'role-create', 'web', '2023-05-26 08:13:22', '2023-05-26 08:13:22'),
(3, 'role-edit', 'web', '2023-05-26 08:13:22', '2023-05-26 08:13:22'),
(4, 'role-delete', 'web', '2023-05-26 08:13:22', '2023-05-26 08:13:22'),
(5, 'product-list', 'web', '2023-05-26 08:13:22', '2023-05-26 08:13:22'),
(6, 'product-create', 'web', '2023-05-26 08:13:22', '2023-05-26 08:13:22'),
(7, 'product-edit', 'web', '2023-05-26 08:13:22', '2023-05-26 08:13:22'),
(8, 'product-delete', 'web', '2023-05-26 08:13:22', '2023-05-26 08:13:22'),
(9, 'menu-list', 'web', NULL, NULL),
(10, 'user-list', 'web', NULL, NULL),
(11, 'user-create', 'web', NULL, NULL),
(12, 'user-edit', 'web', NULL, NULL),
(13, 'user-delete', 'web', NULL, NULL),
(14, 'menu-create', 'web', NULL, NULL),
(15, 'menu-edit', 'web', NULL, NULL),
(16, 'menu-delete', 'web', NULL, NULL),
(17, 'home-list', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `detail` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `detail`, `created_at`, `updated_at`) VALUES
(1, 'Xiaomi Redmi Pad SE 6GB 128GB', 'Trải nghiệm giải trí tốt hơn - Màn hình rộng 11\" với độ sáng 400nits và tần số quét 90Hz giúp hình ảnh hiển thị sắc nét, sống động\r\nBảo vệ mắt bạn tốt hơn - Dễ chịu hơn với Chế độ Đọc 3.0, tính năng chống nháy màn hình và hạn chế ánh sáng xanh\r\nThỏa sức sáng tạo suốt cả ngày - Chip Snapdragon® 680, RAM 6GB cùng\r\nThiết kế hút ánh nhìn - Mặt lưng nhôm nguyên khối mỏng chỉ 7.36 mm', NULL, '2024-07-17 23:40:03'),
(5, 'Xiaomi Pad 6 8GB 128GB 12', 'Thiết kế kim loại nguyên khối - Nhỏ gọn, sang trọng với hai gam màu hiện đại.\r\nSnapdragon 870 - Hiệu suất cao hàng đầu trong phân khúc.\r\nDung lượng pin lớn 8840 mAh - Đáp ứng tốt được nhu cầu làm việc cả ngày dài.\r\nThoải thích đắm chìm trong các bộ phim với màn hình hiển thị sắc nét độ phân giải 2,8K; mượt mà với tốc độ làm mới 144Hz.\r\nTận hưởng âm thanh thực sự đắm chìm với Quad Speakers cùng ánh xạ kênh giúp điều chỉnh đầu ra âm thanh theo hướng màn hình của bạn.', '2023-05-26 09:09:46', '2024-07-25 00:31:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) NOT NULL,
  `guard_name` varchar(125) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2023-05-26 08:14:11', '2023-05-26 08:14:11'),
(2, 'super admin', 'web', '2023-05-26 09:47:56', '2023-05-26 09:47:56'),
(3, 'Author', 'web', '2024-07-17 23:44:02', '2024-07-17 23:44:02'),
(4, 'writer', 'web', '2024-07-19 02:07:12', '2024-07-19 02:07:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 4),
(2, 2),
(3, 2),
(4, 2),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(9, 1),
(9, 2),
(9, 4),
(10, 1),
(10, 2),
(10, 4),
(11, 1),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 1),
(17, 2),
(17, 3),
(17, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'admin', 'admin@gmail.com', NULL, '$2y$10$Ii1uW.eGnZRCrVKQZdhmuuSeWcT/fieWeNAJ0NjZrkW3ab5T1lxtq', NULL, '2023-05-26 08:14:11', '2023-05-26 08:14:11'),
(4, 'minh', 'minh@gmail.com', NULL, '$2y$10$NFYGmjIF7CVpDd6WmJb8U.MxQup4pjYhkt2YO4vaz0879jL/.GPam', NULL, '2024-07-17 23:44:51', '2024-07-17 23:44:51'),
(5, 'khang', 'khang@gmail.com', NULL, '$2y$10$SGvK8YOYz7D/JaqWc/f3Gu3xFayEn7s23VVl2CKXxxzYb6ydda/uy', NULL, '2024-07-17 23:57:48', '2024-07-17 23:57:48'),
(6, 'trang', 'trang@gmail.com', NULL, '$2y$10$QCU5P8GGc7Y57q7mgAZiNu7B4MpUPPZ7e.vBuSN41cap8PestHyvW', NULL, '2024-07-17 23:58:12', '2024-07-17 23:58:12'),
(7, 'ha', 'ha@gmail.com', NULL, '$2y$10$2MUFQtdRuL8V4fJNomccQOTAdKBaB.M8iBR2Iu7428FrX1s7SzB86', NULL, '2024-07-17 23:58:41', '2024-07-17 23:58:41'),
(11, 'sdas', 'admin2@gmail.com', NULL, '$2y$10$TUiprRZi9qSd/NQnaP1NR.ogZOuVb3fx7So.zmteUbEqobP2dSjki', NULL, '2024-07-18 02:30:39', '2024-07-18 02:30:39'),
(14, 'khang', 'khang12@gmail.com', NULL, '$2y$10$Da6HSN83Lij/vvNw.V5jLexwFdED0pg1f2Mm9vdunWjT0UOCqVaNa', NULL, '2024-07-18 02:44:09', '2024-07-18 02:44:09'),
(15, 'lam', 'minh1233333@gmail.com', NULL, '$2y$10$86apD0wEYqNSPbg2S9R.1uFcJOxu81aO83CTKKJ7IYJ4XVSSQH.x.', NULL, '2024-07-18 19:10:07', '2024-07-18 19:10:07'),
(16, 'minh', 'minh123@gmail.com', NULL, '$2y$10$/IO2oXzqpBiyOjra2DkrDez5atmGPvYL90Ah3FJz0721YdfjuDjgW', NULL, '2024-07-19 02:04:37', '2024-07-19 02:04:37'),
(18, 'khang12', 'ngoc12@gmail.com', NULL, '$2y$10$phStwHTYMU9qH0GSNq5/QO.S2hMFCKLrD/vJWUsyI8VMSI8xviisS', NULL, '2024-07-25 00:30:51', '2024-07-25 00:30:51'),
(23, 'khang', 'khang1234567@gmail.com', NULL, '$2y$10$w5BTrsIf7IzZABCItnq9peFR5amep5tXQgOro9H9ZsT8EEDLE0ew6', NULL, '2024-07-25 01:02:53', '2024-07-25 01:02:53'),
(25, 'khang', 'khang@gmail.comsd', NULL, '$2y$10$5e5dsit20lYCMHEEUkv/VupFTkWMlGwQIbk3WY.s/0SDLtIEqX1Xe', NULL, '2024-07-25 02:09:01', '2024-07-25 02:09:01');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Chỉ mục cho bảng `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Chỉ mục cho bảng `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
