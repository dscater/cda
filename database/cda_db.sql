-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 01-04-2026 a las 16:56:12
-- Versión del servidor: 8.0.30
-- Versión de PHP: 8.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cda_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogos`
--

CREATE TABLE `catalogos` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `catalogos`
--

INSERT INTO `catalogos` (`id`, `nombre`, `imagen`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'MENU 1', '11775049242.png', '2026-03-31 20:53:01', '2026-04-01 13:14:02', NULL),
(2, 'MENU 2', '21775049374.png', '2026-04-01 13:16:14', '2026-04-01 13:16:14', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracions`
--

CREATE TABLE `configuracions` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre_sistema` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `configuracions`
--

INSERT INTO `configuracions` (`id`, `nombre_sistema`, `alias`, `logo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'SISTEMA SVT', 'SVT', 'logo.png', NULL, '2026-03-16 19:52:06', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_accions`
--

CREATE TABLE `historial_accions` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `accion` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `datos_original` json DEFAULT NULL,
  `datos_nuevo` json DEFAULT NULL,
  `modulo` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `historial_accions`
--

INSERT INTO `historial_accions` (`id`, `user_id`, `accion`, `descripcion`, `datos_original`, `datos_nuevo`, `modulo`, `fecha`, `hora`, `created_at`, `updated_at`) VALUES
(1, 1, 'CREACIÓN', 'EL USUARIO admin REGISTRO UN CATALOGO', '{\"id\": 1, \"imagen\": \"11774990381.png\", \"nombre\": \"MENU 1\", \"created_at\": \"2026-03-31T20:53:01.000000Z\", \"updated_at\": \"2026-03-31T20:53:01.000000Z\"}', NULL, 'CATALOGOS', '2026-03-31', '16:53:01', '2026-03-31 20:53:01', '2026-03-31 20:53:01'),
(2, 1, 'MODIFICACIÓN', 'EL USUARIO admin ACTUALIZÓ UN CATALOGO', '{\"id\": 1, \"imagen\": \"11774990381.png\", \"nombre\": \"MENU 1\", \"created_at\": \"2026-03-31T20:53:01.000000Z\", \"deleted_at\": null, \"updated_at\": \"2026-03-31T20:53:01.000000Z\"}', '{\"id\": 1, \"imagen\": \"11774990508.png\", \"nombre\": \"MENU 1\", \"created_at\": \"2026-03-31T20:53:01.000000Z\", \"deleted_at\": null, \"updated_at\": \"2026-03-31T20:55:08.000000Z\"}', 'CATALOGOS', '2026-03-31', '16:55:08', '2026-03-31 20:55:08', '2026-03-31 20:55:08'),
(3, 1, 'CREACIÓN', 'EL USUARIO admin REGISTRO UN PRODUCTO', '{\"id\": 1, \"estado\": \"PÚBLICO\", \"imagen\": \"11774991329.jpeg\", \"nombre\": \"PRODUCTO 1\", \"created_at\": \"2026-03-31T21:08:49.000000Z\", \"updated_at\": \"2026-03-31T21:08:49.000000Z\", \"catalogo_id\": \"1\"}', NULL, 'PRODUCTOS', '2026-03-31', '17:08:49', '2026-03-31 21:08:49', '2026-03-31 21:08:49'),
(4, 1, 'MODIFICACIÓN', 'EL USUARIO admin ACTUALIZÓ UN PRODUCTO', '{\"id\": 1, \"estado\": \"PÚBLICO\", \"imagen\": \"11774991329.jpeg\", \"nombre\": \"PRODUCTO 1\", \"created_at\": \"2026-03-31T21:08:49.000000Z\", \"deleted_at\": null, \"updated_at\": \"2026-03-31T21:08:49.000000Z\", \"catalogo_id\": 1}', '{\"id\": 1, \"estado\": \"PÚBLICO\", \"imagen\": \"11774991387.webp\", \"nombre\": \"PRODUCTO 1\", \"created_at\": \"2026-03-31T21:08:49.000000Z\", \"deleted_at\": null, \"updated_at\": \"2026-03-31T21:09:47.000000Z\", \"catalogo_id\": \"1\"}', 'PRODUCTOS', '2026-03-31', '17:09:47', '2026-03-31 21:09:47', '2026-03-31 21:09:47'),
(5, 1, 'MODIFICACIÓN', 'EL USUARIO admin ACTUALIZÓ UN CATALOGO', '{\"id\": 1, \"imagen\": \"11774990508.png\", \"nombre\": \"MENU 1\", \"created_at\": \"2026-03-31T20:53:01.000000Z\", \"deleted_at\": null, \"updated_at\": \"2026-03-31T20:55:08.000000Z\"}', '{\"id\": 1, \"imagen\": \"11775049242.png\", \"nombre\": \"MENU 1\", \"created_at\": \"2026-03-31T20:53:01.000000Z\", \"deleted_at\": null, \"updated_at\": \"2026-04-01T13:14:02.000000Z\"}', 'CATALOGOS', '2026-04-01', '09:14:02', '2026-04-01 13:14:02', '2026-04-01 13:14:02'),
(6, 1, 'CREACIÓN', 'EL USUARIO admin REGISTRO UN CATALOGO', '{\"id\": 2, \"imagen\": \"21775049374.png\", \"nombre\": \"MENU 2\", \"created_at\": \"2026-04-01T13:16:14.000000Z\", \"updated_at\": \"2026-04-01T13:16:14.000000Z\"}', NULL, 'CATALOGOS', '2026-04-01', '09:16:14', '2026-04-01 13:16:14', '2026-04-01 13:16:14'),
(7, 1, 'CREACIÓN', 'EL USUARIO admin REGISTRO UN PRODUCTO', '{\"id\": 2, \"estado\": \"PÚBLICO\", \"imagen\": \"21775049484.jpg\", \"nombre\": \"PRODUCTO 2\", \"created_at\": \"2026-04-01T13:18:04.000000Z\", \"updated_at\": \"2026-04-01T13:18:04.000000Z\", \"catalogo_id\": \"1\"}', NULL, 'PRODUCTOS', '2026-04-01', '09:18:04', '2026-04-01 13:18:04', '2026-04-01 13:18:04'),
(8, 1, 'CREACIÓN', 'EL USUARIO admin REGISTRO UN PRODUCTO', '{\"id\": 3, \"estado\": \"PÚBLICO\", \"imagen\": \"31775049495.jpg\", \"nombre\": \"PRODUCTO 3\", \"created_at\": \"2026-04-01T13:18:15.000000Z\", \"updated_at\": \"2026-04-01T13:18:15.000000Z\", \"catalogo_id\": \"2\"}', NULL, 'PRODUCTOS', '2026-04-01', '09:18:15', '2026-04-01 13:18:15', '2026-04-01 13:18:15'),
(9, 1, 'CREACIÓN', 'EL USUARIO admin REGISTRO UN PRODUCTO', '{\"id\": 4, \"estado\": \"PÚBLICO\", \"imagen\": \"41775049516.webp\", \"nombre\": \"PROUCTO 4\", \"created_at\": \"2026-04-01T13:18:36.000000Z\", \"updated_at\": \"2026-04-01T13:18:36.000000Z\", \"catalogo_id\": \"2\"}', NULL, 'PRODUCTOS', '2026-04-01', '09:18:36', '2026-04-01 13:18:36', '2026-04-01 13:18:36'),
(10, 1, 'CREACIÓN', 'EL USUARIO admin REGISTRO UN PRODUCTO', '{\"id\": 5, \"estado\": \"PÚBLICO\", \"imagen\": \"51775056587.jpg\", \"nombre\": \"PRODUCTO NUEVO\", \"created_at\": \"2026-04-01T15:16:27.000000Z\", \"updated_at\": \"2026-04-01T15:16:27.000000Z\", \"catalogo_id\": \"1\"}', NULL, 'PRODUCTOS', '2026-04-01', '11:16:27', '2026-04-01 15:16:27', '2026-04-01 15:16:27'),
(11, 1, 'MODIFICACIÓN', 'EL USUARIO admin ACTUALIZÓ UN PRODUCTO', '{\"id\": 5, \"estado\": \"PÚBLICO\", \"imagen\": \"51775056587.jpg\", \"nombre\": \"PRODUCTO NUEVO\", \"created_at\": \"2026-04-01T15:16:27.000000Z\", \"deleted_at\": null, \"updated_at\": \"2026-04-01T15:16:27.000000Z\", \"catalogo_id\": 1}', '{\"id\": 5, \"estado\": \"DESHABILITADO\", \"imagen\": \"51775056587.jpg\", \"nombre\": \"PRODUCTO NUEVO\", \"created_at\": \"2026-04-01T15:16:27.000000Z\", \"deleted_at\": null, \"updated_at\": \"2026-04-01T15:17:30.000000Z\", \"catalogo_id\": \"1\"}', 'PRODUCTOS', '2026-04-01', '11:17:30', '2026-04-01 15:17:30', '2026-04-01 15:17:30'),
(12, 1, 'MODIFICACIÓN', 'EL USUARIO admin ACTUALIZÓ UN PRODUCTO', '{\"id\": 5, \"estado\": \"DESHABILITADO\", \"imagen\": \"51775056587.jpg\", \"nombre\": \"PRODUCTO NUEVO\", \"created_at\": \"2026-04-01T15:16:27.000000Z\", \"deleted_at\": null, \"updated_at\": \"2026-04-01T15:17:30.000000Z\", \"catalogo_id\": 1}', '{\"id\": 5, \"estado\": \"PÚBLICO\", \"imagen\": \"51775056587.jpg\", \"nombre\": \"PRODUCTO NUEVO\", \"created_at\": \"2026-04-01T15:16:27.000000Z\", \"deleted_at\": null, \"updated_at\": \"2026-04-01T15:17:51.000000Z\", \"catalogo_id\": \"1\"}', 'PRODUCTOS', '2026-04-01', '11:17:51', '2026-04-01 15:17:51', '2026-04-01 15:17:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2024_01_31_165641_create_configuracions_table', 1),
(2, '2024_11_02_153317_create_users_table', 1),
(3, '2024_11_02_153318_create_historial_accions_table', 1),
(4, '2026_03_30_160030_create_catalogos_table', 1),
(5, '2026_03_30_160031_create_productos_table', 1),
(6, '2026_03_30_160227_create_socials_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` bigint UNSIGNED NOT NULL,
  `catalogo_id` bigint UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `catalogo_id`, `nombre`, `imagen`, `estado`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'PRODUCTO 1', '11774991387.webp', 'PÚBLICO', '2026-03-31 21:08:49', '2026-03-31 21:09:47', NULL),
(2, 1, 'PRODUCTO 2', '21775049484.jpg', 'PÚBLICO', '2026-04-01 13:18:04', '2026-04-01 13:18:04', NULL),
(3, 2, 'PRODUCTO 3', '31775049495.jpg', 'PÚBLICO', '2026-04-01 13:18:15', '2026-04-01 13:18:15', NULL),
(4, 2, 'PROUCTO 4', '41775049516.webp', 'PÚBLICO', '2026-04-01 13:18:36', '2026-04-01 13:18:36', NULL),
(5, 1, 'PRODUCTO NUEVO', '51775056587.jpg', 'PÚBLICO', '2026-04-01 15:16:27', '2026-04-01 15:17:51', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socials`
--

CREATE TABLE `socials` (
  `id` bigint UNSIGNED NOT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tiktok` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `x` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `web` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `socials`
--

INSERT INTO `socials` (`id`, `whatsapp`, `facebook`, `tiktok`, `instagram`, `youtube`, `x`, `web`, `correo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '73594451', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-31 21:21:51', '2026-03-31 21:21:55', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `usuario` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paterno` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `materno` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fono` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acceso` int NOT NULL,
  `tipo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_registro` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `usuario`, `nombre`, `paterno`, `materno`, `correo`, `fono`, `password`, `acceso`, `tipo`, `foto`, `fecha_registro`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'admin', 'admin', NULL, NULL, '', '$2y$12$65d4fgZsvBV5Lc/AxNKh4eoUdbGyaczQ4sSco20feSQANshNLuxSC', 1, 'ADMINISTRADOR', NULL, '2026-03-31', NULL, NULL, NULL),
(2, 'juan@gmail.com', 'JUAN', 'PERES', 'MAMANI', 'juan@gmail.com', '78787878', '$2y$12$GZh2qQ0RqNR.dK0ms/iGPODh9Xc3bgOBV4LbzNPfBb4yOXnWf3PL2', 1, 'OPERADOR', '21774988990.jpg', '2026-03-31', '2026-03-31 20:26:48', '2026-03-31 20:29:50', NULL),
(3, 'maria@gmail.com', 'MARIA', 'GONZALES', 'MAMANI', 'maria@gmail.com', '68686868', '$2y$12$0PLGno3XV30aT5ZPROOAle3uZNxrOkuHrb5VVU9MDeafzOxAqFzYK', 1, 'OPERADOR', '31774989056.jpg', '2026-03-31', '2026-03-31 20:30:56', '2026-03-31 20:34:43', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `catalogos`
--
ALTER TABLE `catalogos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `configuracions`
--
ALTER TABLE `configuracions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `historial_accions`
--
ALTER TABLE `historial_accions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `historial_accions_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `catalogos`
--
ALTER TABLE `catalogos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `configuracions`
--
ALTER TABLE `configuracions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `historial_accions`
--
ALTER TABLE `historial_accions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `historial_accions`
--
ALTER TABLE `historial_accions`
  ADD CONSTRAINT `historial_accions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
