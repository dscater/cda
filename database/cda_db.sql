-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 06-04-2026 a las 13:14:18
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
  `tipo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descargar` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `catalogos`
--

INSERT INTO `catalogos` (`id`, `nombre`, `tipo`, `imagen`, `descargar`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'MENU 1', 'imagen', '11775049242.png', 0, '2026-03-31 20:53:01', '2026-04-01 20:10:06', NULL),
(2, 'MENU 2', 'icono', 'fas fa-phone', 1, '2026-04-01 13:16:14', '2026-04-02 22:04:45', NULL),
(3, 'MENU 3', 'imagen', '31775080005.png', 1, '2026-04-01 21:46:45', '2026-04-01 21:46:45', NULL),
(4, 'MENU 4', 'imagen', '41775080014.png', 1, '2026-04-01 21:46:54', '2026-04-01 21:46:54', NULL),
(5, 'MENU 5', 'imagen', '51775080021.png', 1, '2026-04-01 21:47:01', '2026-04-01 21:47:01', NULL),
(6, 'MENU 6', 'imagen', '61775080030.png', 1, '2026-04-01 21:47:10', '2026-04-01 21:47:10', NULL),
(7, 'MENU 7', 'imagen', '71775080038.png', 1, '2026-04-01 21:47:18', '2026-04-01 21:47:18', NULL),
(8, 'MENU 8', 'imagen', '81775080049.png', 1, '2026-04-01 21:47:29', '2026-04-01 21:47:29', NULL),
(9, 'MENU 9', 'imagen', '91775080085.png', 1, '2026-04-01 21:48:05', '2026-04-01 21:48:05', NULL),
(10, 'MENU 10', 'imagen', '101775080092.png', 1, '2026-04-01 21:48:12', '2026-04-01 21:48:12', NULL),
(11, 'MENU 11', 'icono', 'fas fa-credit-card', 1, '2026-04-02 22:03:15', '2026-04-02 22:03:15', NULL),
(12, 'MENU 12', 'imagen', '121775167415.png', 1, '2026-04-02 22:03:35', '2026-04-02 22:03:35', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracions`
--

CREATE TABLE `configuracions` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre_sistema` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portada` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `configuracions`
--

INSERT INTO `configuracions` (`id`, `nombre_sistema`, `alias`, `logo`, `portada`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'SISTEMA CDA', 'CDA', 'logo.png', 'portada11775163668.jpg', NULL, '2026-04-02 21:01:08', NULL);

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
(12, 1, 'MODIFICACIÓN', 'EL USUARIO admin ACTUALIZÓ UN PRODUCTO', '{\"id\": 5, \"estado\": \"DESHABILITADO\", \"imagen\": \"51775056587.jpg\", \"nombre\": \"PRODUCTO NUEVO\", \"created_at\": \"2026-04-01T15:16:27.000000Z\", \"deleted_at\": null, \"updated_at\": \"2026-04-01T15:17:30.000000Z\", \"catalogo_id\": 1}', '{\"id\": 5, \"estado\": \"PÚBLICO\", \"imagen\": \"51775056587.jpg\", \"nombre\": \"PRODUCTO NUEVO\", \"created_at\": \"2026-04-01T15:16:27.000000Z\", \"deleted_at\": null, \"updated_at\": \"2026-04-01T15:17:51.000000Z\", \"catalogo_id\": \"1\"}', 'PRODUCTOS', '2026-04-01', '11:17:51', '2026-04-01 15:17:51', '2026-04-01 15:17:51'),
(13, 1, 'MODIFICACIÓN', 'EL USUARIO admin ACTUALIZÓ UN CATALOGO', '{\"id\": 1, \"imagen\": \"11775049242.png\", \"nombre\": \"MENU 1\", \"descargar\": 1, \"created_at\": \"2026-03-31T20:53:01.000000Z\", \"deleted_at\": null, \"updated_at\": \"2026-04-01T13:14:02.000000Z\"}', '{\"id\": 1, \"imagen\": \"11775049242.png\", \"nombre\": \"MENU 1\", \"descargar\": \"0\", \"created_at\": \"2026-03-31T20:53:01.000000Z\", \"deleted_at\": null, \"updated_at\": \"2026-04-01T20:10:06.000000Z\"}', 'CATALOGOS', '2026-04-01', '16:10:06', '2026-04-01 20:10:06', '2026-04-01 20:10:06'),
(14, 1, 'CREACIÓN', 'EL USUARIO admin REGISTRO UN CATALOGO', '{\"id\": 3, \"imagen\": \"31775080005.png\", \"nombre\": \"MENU 3\", \"descargar\": \"1\", \"created_at\": \"2026-04-01T21:46:45.000000Z\", \"updated_at\": \"2026-04-01T21:46:45.000000Z\"}', NULL, 'CATALOGOS', '2026-04-01', '17:46:45', '2026-04-01 21:46:45', '2026-04-01 21:46:45'),
(15, 1, 'CREACIÓN', 'EL USUARIO admin REGISTRO UN CATALOGO', '{\"id\": 4, \"imagen\": \"41775080014.png\", \"nombre\": \"MENU 4\", \"descargar\": \"1\", \"created_at\": \"2026-04-01T21:46:54.000000Z\", \"updated_at\": \"2026-04-01T21:46:54.000000Z\"}', NULL, 'CATALOGOS', '2026-04-01', '17:46:54', '2026-04-01 21:46:54', '2026-04-01 21:46:54'),
(16, 1, 'CREACIÓN', 'EL USUARIO admin REGISTRO UN CATALOGO', '{\"id\": 5, \"imagen\": \"51775080021.png\", \"nombre\": \"MENU 5\", \"descargar\": \"1\", \"created_at\": \"2026-04-01T21:47:01.000000Z\", \"updated_at\": \"2026-04-01T21:47:01.000000Z\"}', NULL, 'CATALOGOS', '2026-04-01', '17:47:01', '2026-04-01 21:47:01', '2026-04-01 21:47:01'),
(17, 1, 'CREACIÓN', 'EL USUARIO admin REGISTRO UN CATALOGO', '{\"id\": 6, \"imagen\": \"61775080030.png\", \"nombre\": \"MENU 6\", \"descargar\": \"1\", \"created_at\": \"2026-04-01T21:47:10.000000Z\", \"updated_at\": \"2026-04-01T21:47:10.000000Z\"}', NULL, 'CATALOGOS', '2026-04-01', '17:47:10', '2026-04-01 21:47:10', '2026-04-01 21:47:10'),
(18, 1, 'CREACIÓN', 'EL USUARIO admin REGISTRO UN CATALOGO', '{\"id\": 7, \"imagen\": \"71775080038.png\", \"nombre\": \"MENU 7\", \"descargar\": \"1\", \"created_at\": \"2026-04-01T21:47:18.000000Z\", \"updated_at\": \"2026-04-01T21:47:18.000000Z\"}', NULL, 'CATALOGOS', '2026-04-01', '17:47:18', '2026-04-01 21:47:18', '2026-04-01 21:47:18'),
(19, 1, 'CREACIÓN', 'EL USUARIO admin REGISTRO UN CATALOGO', '{\"id\": 8, \"imagen\": \"81775080049.png\", \"nombre\": \"MENU 8\", \"descargar\": \"1\", \"created_at\": \"2026-04-01T21:47:29.000000Z\", \"updated_at\": \"2026-04-01T21:47:29.000000Z\"}', NULL, 'CATALOGOS', '2026-04-01', '17:47:29', '2026-04-01 21:47:29', '2026-04-01 21:47:29'),
(20, 1, 'CREACIÓN', 'EL USUARIO admin REGISTRO UN CATALOGO', '{\"id\": 9, \"imagen\": \"91775080085.png\", \"nombre\": \"MENU 9\", \"descargar\": \"1\", \"created_at\": \"2026-04-01T21:48:05.000000Z\", \"updated_at\": \"2026-04-01T21:48:05.000000Z\"}', NULL, 'CATALOGOS', '2026-04-01', '17:48:05', '2026-04-01 21:48:05', '2026-04-01 21:48:05'),
(21, 1, 'CREACIÓN', 'EL USUARIO admin REGISTRO UN CATALOGO', '{\"id\": 10, \"imagen\": \"101775080092.png\", \"nombre\": \"MENU 10\", \"descargar\": \"1\", \"created_at\": \"2026-04-01T21:48:12.000000Z\", \"updated_at\": \"2026-04-01T21:48:12.000000Z\"}', NULL, 'CATALOGOS', '2026-04-01', '17:48:12', '2026-04-01 21:48:12', '2026-04-01 21:48:12'),
(22, 1, 'MODIFICACIÓN', 'EL USUARIO admin ACTUALIZÓ UN PRODUCTO', '{\"id\": 1, \"codigo\": \"\", \"estado\": \"PÚBLICO\", \"imagen\": \"11774991387.webp\", \"nombre\": \"PRODUCTO 1\", \"precio\": \"0.00\", \"created_at\": \"2026-03-31T21:08:49.000000Z\", \"deleted_at\": null, \"updated_at\": \"2026-03-31T21:09:47.000000Z\", \"catalogo_id\": 1}', '{\"id\": 1, \"codigo\": \"P001\", \"estado\": \"PÚBLICO\", \"imagen\": \"11774991387.webp\", \"nombre\": \"PRODUCTO 1\", \"precio\": \"300\", \"created_at\": \"2026-03-31T21:08:49.000000Z\", \"deleted_at\": null, \"updated_at\": \"2026-04-02T21:09:19.000000Z\", \"catalogo_id\": \"1\"}', 'PRODUCTOS', '2026-04-02', '17:09:19', '2026-04-02 21:09:19', '2026-04-02 21:09:19'),
(23, 1, 'MODIFICACIÓN', 'EL USUARIO admin ACTUALIZÓ UN PRODUCTO', '{\"id\": 2, \"codigo\": \"\", \"estado\": \"PÚBLICO\", \"imagen\": \"21775049484.jpg\", \"nombre\": \"PRODUCTO 2\", \"precio\": \"0.00\", \"created_at\": \"2026-04-01T13:18:04.000000Z\", \"deleted_at\": null, \"updated_at\": \"2026-04-01T13:18:04.000000Z\", \"catalogo_id\": 1}', '{\"id\": 2, \"codigo\": \"P002\", \"estado\": \"PÚBLICO\", \"imagen\": \"21775049484.jpg\", \"nombre\": \"PRODUCTO 2\", \"precio\": \"455\", \"created_at\": \"2026-04-01T13:18:04.000000Z\", \"deleted_at\": null, \"updated_at\": \"2026-04-02T21:09:33.000000Z\", \"catalogo_id\": \"1\"}', 'PRODUCTOS', '2026-04-02', '17:09:33', '2026-04-02 21:09:33', '2026-04-02 21:09:33'),
(24, 1, 'MODIFICACIÓN', 'EL USUARIO admin ACTUALIZÓ UN PRODUCTO', '{\"id\": 3, \"codigo\": \"\", \"estado\": \"PÚBLICO\", \"imagen\": \"31775049495.jpg\", \"nombre\": \"PRODUCTO 3\", \"precio\": \"0.00\", \"created_at\": \"2026-04-01T13:18:15.000000Z\", \"deleted_at\": null, \"updated_at\": \"2026-04-01T13:18:15.000000Z\", \"catalogo_id\": 2}', '{\"id\": 3, \"codigo\": \"P003\", \"estado\": \"PÚBLICO\", \"imagen\": \"31775049495.jpg\", \"nombre\": \"PRODUCTO 3\", \"precio\": \"175\", \"created_at\": \"2026-04-01T13:18:15.000000Z\", \"deleted_at\": null, \"updated_at\": \"2026-04-02T21:09:41.000000Z\", \"catalogo_id\": \"2\"}', 'PRODUCTOS', '2026-04-02', '17:09:41', '2026-04-02 21:09:41', '2026-04-02 21:09:41'),
(25, 1, 'MODIFICACIÓN', 'EL USUARIO admin ACTUALIZÓ UN PRODUCTO', '{\"id\": 4, \"codigo\": \"\", \"estado\": \"PÚBLICO\", \"imagen\": \"41775049516.webp\", \"nombre\": \"PROUCTO 4\", \"precio\": \"0.00\", \"created_at\": \"2026-04-01T13:18:36.000000Z\", \"deleted_at\": null, \"updated_at\": \"2026-04-01T13:18:36.000000Z\", \"catalogo_id\": 2}', '{\"id\": 4, \"codigo\": \"P004\", \"estado\": \"PÚBLICO\", \"imagen\": \"41775049516.webp\", \"nombre\": \"PROUCTO 4\", \"precio\": \"375.5\", \"created_at\": \"2026-04-01T13:18:36.000000Z\", \"deleted_at\": null, \"updated_at\": \"2026-04-02T21:09:48.000000Z\", \"catalogo_id\": \"2\"}', 'PRODUCTOS', '2026-04-02', '17:09:48', '2026-04-02 21:09:48', '2026-04-02 21:09:48'),
(26, 1, 'MODIFICACIÓN', 'EL USUARIO admin ACTUALIZÓ UN PRODUCTO', '{\"id\": 5, \"codigo\": \"\", \"estado\": \"PÚBLICO\", \"imagen\": \"51775056587.jpg\", \"nombre\": \"PRODUCTO NUEVO\", \"precio\": \"0.00\", \"created_at\": \"2026-04-01T15:16:27.000000Z\", \"deleted_at\": null, \"updated_at\": \"2026-04-01T15:17:51.000000Z\", \"catalogo_id\": 1}', '{\"id\": 5, \"codigo\": \"P005\", \"estado\": \"PÚBLICO\", \"imagen\": \"51775056587.jpg\", \"nombre\": \"PRODUCTO NUEVO\", \"precio\": \"356\", \"created_at\": \"2026-04-01T15:16:27.000000Z\", \"deleted_at\": null, \"updated_at\": \"2026-04-02T21:09:57.000000Z\", \"catalogo_id\": \"1\"}', 'PRODUCTOS', '2026-04-02', '17:09:57', '2026-04-02 21:09:57', '2026-04-02 21:09:57'),
(27, 1, 'CREACIÓN', 'EL USUARIO admin REGISTRO UN PRODUCTO', '{\"id\": 6, \"codigo\": \"P006\", \"estado\": \"PÚBLICO\", \"imagen\": \"61775164218.jpg\", \"nombre\": \"PROD 6\", \"precio\": \"454\", \"created_at\": \"2026-04-02T21:10:18.000000Z\", \"updated_at\": \"2026-04-02T21:10:18.000000Z\", \"catalogo_id\": \"1\"}', NULL, 'PRODUCTOS', '2026-04-02', '17:10:18', '2026-04-02 21:10:18', '2026-04-02 21:10:18'),
(28, 1, 'MODIFICACIÓN', 'EL USUARIO admin ACTUALIZÓ UN PRODUCTO', '{\"id\": 6, \"codigo\": \"P006\", \"estado\": \"PÚBLICO\", \"imagen\": \"61775164218.jpg\", \"nombre\": \"PROD 6\", \"precio\": \"454.00\", \"created_at\": \"2026-04-02T21:10:18.000000Z\", \"deleted_at\": null, \"updated_at\": \"2026-04-02T21:10:18.000000Z\", \"catalogo_id\": 1}', '{\"id\": 6, \"codigo\": \"P006\", \"estado\": \"PÚBLICO\", \"imagen\": \"61775164230.jpg\", \"nombre\": \"PROD 6\", \"precio\": \"454.00\", \"created_at\": \"2026-04-02T21:10:18.000000Z\", \"deleted_at\": null, \"updated_at\": \"2026-04-02T21:10:30.000000Z\", \"catalogo_id\": \"1\"}', 'PRODUCTOS', '2026-04-02', '17:10:30', '2026-04-02 21:10:30', '2026-04-02 21:10:30'),
(29, 1, 'MODIFICACIÓN', 'EL USUARIO admin ACTUALIZÓ UN PRODUCTO', '{\"id\": 6, \"codigo\": \"P006\", \"estado\": \"PÚBLICO\", \"imagen\": \"61775164230.jpg\", \"nombre\": \"PROD 6\", \"precio\": \"454.00\", \"created_at\": \"2026-04-02T21:10:18.000000Z\", \"deleted_at\": null, \"updated_at\": \"2026-04-02T21:10:30.000000Z\", \"catalogo_id\": 1}', '{\"id\": 6, \"codigo\": \"P006\", \"estado\": \"PÚBLICO\", \"imagen\": \"61775164246.jpg\", \"nombre\": \"PROD 6\", \"precio\": \"454.00\", \"created_at\": \"2026-04-02T21:10:18.000000Z\", \"deleted_at\": null, \"updated_at\": \"2026-04-02T21:10:46.000000Z\", \"catalogo_id\": \"1\"}', 'PRODUCTOS', '2026-04-02', '17:10:46', '2026-04-02 21:10:46', '2026-04-02 21:10:46'),
(30, 1, 'CREACIÓN', 'EL USUARIO admin REGISTRO UN CATALOGO', '{\"id\": 11, \"tipo\": \"icono\", \"imagen\": \"fas fa-credit-card\", \"nombre\": \"MENU 11\", \"descargar\": \"1\", \"created_at\": \"2026-04-02T22:03:15.000000Z\", \"updated_at\": \"2026-04-02T22:03:15.000000Z\"}', NULL, 'CATALOGOS', '2026-04-02', '18:03:15', '2026-04-02 22:03:15', '2026-04-02 22:03:15'),
(31, 1, 'CREACIÓN', 'EL USUARIO admin REGISTRO UN CATALOGO', '{\"id\": 12, \"tipo\": \"imagen\", \"imagen\": \"121775167415.png\", \"nombre\": \"MENU 12\", \"descargar\": \"1\", \"created_at\": \"2026-04-02T22:03:35.000000Z\", \"updated_at\": \"2026-04-02T22:03:35.000000Z\"}', NULL, 'CATALOGOS', '2026-04-02', '18:03:35', '2026-04-02 22:03:35', '2026-04-02 22:03:35'),
(32, 1, 'MODIFICACIÓN', 'EL USUARIO admin ACTUALIZÓ UN CATALOGO', '{\"id\": 2, \"tipo\": \"imagen\", \"imagen\": \"21775049374.png\", \"nombre\": \"MENU 2\", \"descargar\": 1, \"created_at\": \"2026-04-01T13:16:14.000000Z\", \"deleted_at\": null, \"updated_at\": \"2026-04-01T13:16:14.000000Z\"}', '{\"id\": 2, \"tipo\": \"icono\", \"imagen\": \"fas fa-phone\", \"nombre\": \"MENU 2\", \"descargar\": \"1\", \"created_at\": \"2026-04-01T13:16:14.000000Z\", \"deleted_at\": null, \"updated_at\": \"2026-04-02T22:04:45.000000Z\"}', 'CATALOGOS', '2026-04-02', '18:04:45', '2026-04-02 22:04:45', '2026-04-02 22:04:45');

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
(6, '2026_03_30_160227_create_socials_table', 1),
(7, '2026_04_01_171321_create_pedidos_table', 2),
(8, '2026_04_01_171324_create_pedido_detalles_table', 2),
(9, '2026_04_01_182619_create_visitantes_table', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` bigint UNSIGNED NOT NULL,
  `ip_cliente` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pdf` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `ip_cliente`, `pdf`, `fecha`, `hora`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 'pedido_1.pdf', '2026-04-01', '17:42:54', '2026-04-01 21:42:54', '2026-04-01 21:42:59'),
(2, '127.0.0.1', 'pedido_2.pdf', '2026-04-01', '19:24:55', '2026-04-01 23:24:55', '2026-04-01 23:24:57'),
(3, '127.0.0.1', 'pedido_3.pdf', '2026-04-01', '19:30:11', '2026-04-01 23:30:11', '2026-04-01 23:30:14'),
(4, '127.0.0.1', NULL, '2026-04-02', '17:30:56', '2026-04-02 21:30:56', '2026-04-02 21:30:56'),
(5, '127.0.0.1', NULL, '2026-04-02', '17:31:38', '2026-04-02 21:31:38', '2026-04-02 21:31:38'),
(6, '127.0.0.1', NULL, '2026-04-02', '17:32:22', '2026-04-02 21:32:22', '2026-04-02 21:32:22'),
(7, '127.0.0.1', NULL, '2026-04-02', '17:33:03', '2026-04-02 21:33:03', '2026-04-02 21:33:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_detalles`
--

CREATE TABLE `pedido_detalles` (
  `id` bigint UNSIGNED NOT NULL,
  `pedido_id` bigint UNSIGNED NOT NULL,
  `producto_id` bigint UNSIGNED NOT NULL,
  `precio` decimal(24,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pedido_detalles`
--

INSERT INTO `pedido_detalles` (`id`, `pedido_id`, `producto_id`, `precio`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 0.00, '2026-04-01 21:42:54', '2026-04-01 21:42:54'),
(2, 1, 1, 0.00, '2026-04-01 21:42:54', '2026-04-01 21:42:54'),
(3, 1, 5, 0.00, '2026-04-01 21:42:54', '2026-04-01 21:42:54'),
(4, 2, 5, 0.00, '2026-04-01 23:24:55', '2026-04-01 23:24:55'),
(5, 2, 4, 0.00, '2026-04-01 23:24:55', '2026-04-01 23:24:55'),
(6, 3, 1, 0.00, '2026-04-01 23:30:11', '2026-04-01 23:30:11'),
(7, 3, 5, 0.00, '2026-04-01 23:30:11', '2026-04-01 23:30:11'),
(8, 5, 1, 300.00, '2026-04-02 21:31:38', '2026-04-02 21:31:38'),
(9, 5, 5, 356.00, '2026-04-02 21:31:38', '2026-04-02 21:31:38'),
(10, 5, 6, 454.00, '2026-04-02 21:31:38', '2026-04-02 21:31:38'),
(11, 6, 3, 175.00, '2026-04-02 21:32:22', '2026-04-02 21:32:22'),
(12, 6, 4, 375.50, '2026-04-02 21:32:22', '2026-04-02 21:32:22'),
(13, 7, 1, 300.00, '2026-04-02 21:33:03', '2026-04-02 21:33:03');

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
  `codigo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` decimal(24,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `catalogo_id`, `nombre`, `imagen`, `estado`, `codigo`, `precio`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'PRODUCTO 1', '11774991387.webp', 'PÚBLICO', 'P001', 300.00, '2026-03-31 21:08:49', '2026-04-02 21:09:19', NULL),
(2, 1, 'PRODUCTO 2', '21775049484.jpg', 'PÚBLICO', 'P002', 455.00, '2026-04-01 13:18:04', '2026-04-02 21:09:33', NULL),
(3, 2, 'PRODUCTO 3', '31775049495.jpg', 'PÚBLICO', 'P003', 175.00, '2026-04-01 13:18:15', '2026-04-02 21:09:41', NULL),
(4, 2, 'PROUCTO 4', '41775049516.webp', 'PÚBLICO', 'P004', 375.50, '2026-04-01 13:18:36', '2026-04-02 21:09:48', NULL),
(5, 1, 'PRODUCTO NUEVO', '51775056587.jpg', 'PÚBLICO', 'P005', 356.00, '2026-04-01 15:16:27', '2026-04-02 21:09:57', NULL),
(6, 1, 'PROD 6', '61775164246.jpg', 'PÚBLICO', 'P006', 454.00, '2026-04-02 21:10:18', '2026-04-02 21:10:46', NULL);

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
(1, '+59173594451', 'https://facebook.com', 'https://tiktok.com', 'https://instagram.com', 'https://youtube.com', 'https://x.com', 'www.google.com', 'correo@gmail.com', '2026-03-31 21:21:51', '2026-04-01 21:36:41', NULL);

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitantes`
--

CREATE TABLE `visitantes` (
  `id` bigint UNSIGNED NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `browser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `platform` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `visitantes`
--

INSERT INTO `visitantes` (`id`, `ip`, `user_agent`, `browser`, `platform`, `device`, `url`, `referer`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Chrome', 'Windows', 'Desktop', 'http://cda.test/productos/1?page=2', 'http://cda.test/productos/1?page=2', '2026-04-01 22:36:43', '2026-04-01 22:36:43'),
(2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Chrome', 'Windows', 'Desktop', 'http://cda.test/productos/1?page=2', 'http://cda.test/productos/1?page=2', '2026-04-01 22:37:45', '2026-04-01 22:37:45'),
(3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Chrome', 'Windows', 'Desktop', 'http://cda.test/productos/1?page=2', 'http://cda.test/productos/1?page=2', '2026-04-01 22:47:26', '2026-04-01 22:47:26'),
(4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Chrome', 'Windows', 'Desktop', 'http://cda.test/productos/1?page=2', NULL, '2026-04-01 22:54:23', '2026-04-01 22:54:23'),
(5, '192.168.100.3', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Mobile Safari/537.36', 'Chrome', 'AndroidOS', 'Mobile', 'http://192.168.100.128:8081', NULL, '2026-04-01 23:04:01', '2026-04-01 23:04:01'),
(6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Chrome', 'Windows', 'Desktop', 'http://cda.test', NULL, '2026-04-01 23:04:33', '2026-04-01 23:04:33'),
(7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Chrome', 'Windows', 'Desktop', 'http://cda.test/productos/1', NULL, '2026-04-01 23:10:30', '2026-04-01 23:10:30'),
(8, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Mobile/15E148 Safari/604.1', 'Safari', 'iOS', 'Mobile', 'https://cda.test/productos/1?page=1', 'https://cda.test/productos/1', '2026-04-01 23:15:32', '2026-04-01 23:15:32'),
(9, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Mobile/15E148 Safari/604.1', 'Safari', 'iOS', 'Mobile', 'https://cda.test/productos/1?page=2', 'https://cda.test/productos/1?page=3', '2026-04-01 23:20:32', '2026-04-01 23:20:32'),
(10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Chrome', 'Windows', 'Desktop', 'http://cda.test', NULL, '2026-04-01 23:26:08', '2026-04-01 23:26:08'),
(11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Chrome', 'Windows', 'Desktop', 'https://cda.test', 'https://cda.test/login', '2026-04-01 23:38:35', '2026-04-01 23:38:35'),
(12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Chrome', 'Windows', 'Desktop', 'http://cda.test', NULL, '2026-04-02 20:52:42', '2026-04-02 20:52:42'),
(13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Chrome', 'Windows', 'Desktop', 'http://cda.test', NULL, '2026-04-02 21:01:10', '2026-04-02 21:01:10'),
(14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Chrome', 'Windows', 'Desktop', 'https://cda.test', NULL, '2026-04-02 21:28:27', '2026-04-02 21:28:27'),
(15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Chrome', 'Windows', 'Desktop', 'http://cda.test', NULL, '2026-04-02 21:34:50', '2026-04-02 21:34:50'),
(16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Chrome', 'Windows', 'Desktop', 'https://cda.test', 'https://cda.test/productos/miCatalogo', '2026-04-02 21:40:13', '2026-04-02 21:40:13'),
(17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Chrome', 'Windows', 'Desktop', 'https://cda.test', 'https://cda.test/', '2026-04-02 21:50:07', '2026-04-02 21:50:07'),
(18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Chrome', 'Windows', 'Desktop', 'https://cda.test', 'https://cda.test/', '2026-04-02 22:04:58', '2026-04-02 22:04:58'),
(19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Chrome', 'Windows', 'Desktop', 'https://cda.test', NULL, '2026-04-02 22:14:38', '2026-04-02 22:14:38');

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
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedido_detalles`
--
ALTER TABLE `pedido_detalles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedido_detalles_pedido_id_foreign` (`pedido_id`),
  ADD KEY `pedido_detalles_producto_id_foreign` (`producto_id`);

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
-- Indices de la tabla `visitantes`
--
ALTER TABLE `visitantes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `catalogos`
--
ALTER TABLE `catalogos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `configuracions`
--
ALTER TABLE `configuracions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `historial_accions`
--
ALTER TABLE `historial_accions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `pedido_detalles`
--
ALTER TABLE `pedido_detalles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
-- AUTO_INCREMENT de la tabla `visitantes`
--
ALTER TABLE `visitantes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `historial_accions`
--
ALTER TABLE `historial_accions`
  ADD CONSTRAINT `historial_accions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `pedido_detalles`
--
ALTER TABLE `pedido_detalles`
  ADD CONSTRAINT `pedido_detalles_pedido_id_foreign` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pedido_detalles_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
