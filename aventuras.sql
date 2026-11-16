-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-11-2026 a las 15:46:00
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `aventuras`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add perfil', 7, 'add_perfil'),
(26, 'Can change perfil', 7, 'change_perfil'),
(27, 'Can delete perfil', 7, 'delete_perfil'),
(28, 'Can view perfil', 7, 'view_perfil'),
(29, 'Can add categoria', 8, 'add_categoria'),
(30, 'Can change categoria', 8, 'change_categoria'),
(31, 'Can delete categoria', 8, 'delete_categoria'),
(32, 'Can view categoria', 8, 'view_categoria'),
(33, 'Can add experiencia', 9, 'add_experiencia'),
(34, 'Can change experiencia', 9, 'change_experiencia'),
(35, 'Can delete experiencia', 9, 'delete_experiencia'),
(36, 'Can view experiencia', 9, 'view_experiencia'),
(37, 'Can add inscripcion', 10, 'add_inscripcion'),
(38, 'Can change inscripcion', 10, 'change_inscripcion'),
(39, 'Can delete inscripcion', 10, 'delete_inscripcion'),
(40, 'Can view inscripcion', 10, 'view_inscripcion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$Zya1VBl7pSfOZGvIPUQ3zG$qKDKtww0tyNI2pj9mE3wU8l4HlMwtQb603FupSM7F4w=', '2026-11-15 16:59:33.683676', 1, 'prueba3test', '', '', 'olaola12@gmail.com', 1, 1, '2026-11-15 16:56:46.278957'),
(2, 'pbkdf2_sha256$720000$azhPOt473IMbNiRi8M2wHp$HKFQFCwQaGzALWGwUa6ZNF/KinQMg0JSL+aEQzTsDAM=', '2026-11-15 16:59:11.887462', 0, 'NathanDrake', '', '', 'lacontraeseldichodedrake@gmail.com', 0, 1, '2026-11-15 16:59:01.566796'),
(3, 'pbkdf2_sha256$720000$Y7QNMHPYFyERVCKWS0tJ4b$2Bb9OSRCfSSn08blk6WAjmajbyLNF044hrvMCZf3N/A=', NULL, 0, 'GuiaTilinaso', 'Juan Tilinez', 'Godoy', 'tilinazo12@gmail.com', 0, 0, '2026-11-15 17:00:30.653996'),
(4, 'pbkdf2_sha256$720000$gTVDcj51vCJm7IUrTT1RDq$DkVTf6ebiCS+nKFBWHOK3xI2QTsh+jjXuz7JtkdThmM=', '2026-11-16 14:12:26.712678', 1, 'AdminEvaluacion', '', '', 'prueba3@gmail.com', 1, 1, '2026-11-15 17:12:26.058333'),
(5, 'pbkdf2_sha256$720000$mAD9jxBychgl1jPWHak4Cx$e3NwGVReQHM6fk9xpIFlucxMA1oyNft7+OadrRboIE0=', '2026-11-15 17:18:00.711728', 0, 'Guia1', 'Enrique Ignacio', 'Iglesias', 'enriqueiglesiascantamalxd@gmail.com', 0, 1, '2026-11-15 17:15:30.195918'),
(6, 'pbkdf2_sha256$720000$SZ2SbhNOoLN2QutrSOfCWk$z15SFkBM6vU8j4PlIO6XMs92KuthRT3Oy6HdPtoNS2o=', '2026-11-16 14:18:39.680474', 0, 'Guia2', 'Joel', 'Miller', 'joelmiller@gmail.com', 0, 1, '2026-11-15 17:16:22.976772'),
(7, 'pbkdf2_sha256$720000$I4xeVYVSHqhYW56rUZ1TPx$XhP2Ah4T+NY6v7XeL1QF/VzJZmHP6ENEQSvplgAQc2k=', '2026-11-15 17:25:34.885259', 0, 'Soap', '', '', 'soap@gmail.com', 0, 1, '2026-11-15 17:25:23.936362'),
(8, 'pbkdf2_sha256$720000$mC8uToHz1Oc2W8Jch2d7D1$GxS5mVEgEalRkxEST2zCOE9py6w/xfbTtTT6ARV6z74=', '2026-11-15 17:26:40.766878', 0, 'Ellie', '', '', 'ladetelastofus@gmail.com', 0, 1, '2026-11-15 17:26:19.852969'),
(9, 'pbkdf2_sha256$720000$COMF6qtmdLkFTOUK6jd6wf$yy5P99Nu692WwD9syvf1uwjnTmlZDpx+zgfAWsevp1s=', NULL, 0, 'Prueba3', 'ola12', 'ola12', 'ola1234@gmail.com', 0, 1, '2026-11-16 14:14:44.692486'),
(10, 'pbkdf2_sha256$720000$KkVZLOem042CE8bBW6U67Z$jUSPQ0uaR3+hdOsi/Jt8v3RDMnEBfJeeeZHiTucZZLw=', '2026-11-16 14:21:09.414051', 0, 'Juanito', '', '', 'juanito@gmail.com', 0, 1, '2026-11-16 14:21:00.768797');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentas_perfil`
--

CREATE TABLE `cuentas_perfil` (
  `id` bigint(20) NOT NULL,
  `rol` varchar(20) NOT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cuentas_perfil`
--

INSERT INTO `cuentas_perfil` (`id`, `rol`, `telefono`, `user_id`) VALUES
(1, 'turista', NULL, 2),
(2, 'guia', NULL, 3),
(3, 'guia', NULL, 5),
(4, 'guia', NULL, 6),
(5, 'turista', NULL, 7),
(6, 'turista', NULL, 8),
(7, 'guia', NULL, 9),
(8, 'turista', NULL, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'cuentas', 'perfil'),
(8, 'experiencias', 'categoria'),
(9, 'experiencias', 'experiencia'),
(10, 'experiencias', 'inscripcion'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2026-11-15 16:54:38.731154'),
(2, 'auth', '0001_initial', '2026-11-15 16:54:39.141289'),
(3, 'admin', '0001_initial', '2026-11-15 16:54:39.243996'),
(4, 'admin', '0002_logentry_remove_auto_add', '2026-11-15 16:54:39.265994'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2026-11-15 16:54:39.274018'),
(6, 'contenttypes', '0002_remove_content_type_name', '2026-11-15 16:54:39.343594'),
(7, 'auth', '0002_alter_permission_name_max_length', '2026-11-15 16:54:39.391188'),
(8, 'auth', '0003_alter_user_email_max_length', '2026-11-15 16:54:39.405189'),
(9, 'auth', '0004_alter_user_username_opts', '2026-11-15 16:54:39.413188'),
(10, 'auth', '0005_alter_user_last_login_null', '2026-11-15 16:54:39.455410'),
(11, 'auth', '0006_require_contenttypes_0002', '2026-11-15 16:54:39.458411'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2026-11-15 16:54:39.469424'),
(13, 'auth', '0008_alter_user_username_max_length', '2026-11-15 16:54:39.488437'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2026-11-15 16:54:39.504459'),
(15, 'auth', '0010_alter_group_name_max_length', '2026-11-15 16:54:39.521370'),
(16, 'auth', '0011_update_proxy_permissions', '2026-11-15 16:54:39.538365'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2026-11-15 16:54:39.552366'),
(18, 'cuentas', '0001_initial', '2026-11-15 16:54:39.637485'),
(19, 'cuentas', '0002_crear_perfiles_existentes', '2026-11-15 16:54:39.651488'),
(20, 'experiencias', '0001_initial', '2026-11-15 16:54:39.912739'),
(21, 'experiencias', '0002_experiencia_activa', '2026-11-15 16:54:39.934736'),
(22, 'sessions', '0001_initial', '2026-11-15 16:54:39.972738');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencias_categoria`
--

CREATE TABLE `experiencias_categoria` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` longtext DEFAULT NULL,
  `activo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `experiencias_categoria`
--

INSERT INTO `experiencias_categoria` (`id`, `nombre`, `descripcion`, `activo`) VALUES
(1, 'Viaje', NULL, 1),
(2, 'Trekking', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencias_experiencia`
--

CREATE TABLE `experiencias_experiencia` (
  `id` bigint(20) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `descripcion` longtext NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cupo_maximo` int(10) UNSIGNED NOT NULL CHECK (`cupo_maximo` >= 0),
  `fecha_hora` datetime(6) NOT NULL,
  `categoria_id` bigint(20) NOT NULL,
  `creador_id` int(11) NOT NULL,
  `activo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `experiencias_experiencia`
--

INSERT INTO `experiencias_experiencia` (`id`, `titulo`, `descripcion`, `precio`, `cupo_maximo`, `fecha_hora`, `categoria_id`, `creador_id`, `activo`) VALUES
(1, 'Viaje a peru', 'vamos a peru', 300000.00, 20, '2026-12-06 17:30:00.000000', 1, 5, 1),
(2, 'Viaje a bolivia', 'viaje a volibia xd', 100.00, 10, '2026-12-06 20:30:00.000000', 1, 5, 1),
(3, 'Trekking Monte chilliat', 'Subimos al monte a pelear con el pie grande', 35000.00, 5, '2026-12-07 20:30:00.000000', 2, 6, 1),
(4, 'Trekking Monte de verdansk', 'Vamos a verdanks a sacar la nuclear', 20000.00, 4, '2026-12-08 20:30:00.000000', 2, 6, 1),
(6, 'inacap peru', 'ola12', 30000.00, 5, '2026-12-20 18:30:00.000000', 1, 6, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencias_inscripcion`
--

CREATE TABLE `experiencias_inscripcion` (
  `id` bigint(20) NOT NULL,
  `fecha_inscripcion` datetime(6) NOT NULL,
  `estado_pago` varchar(20) NOT NULL,
  `experiencia_id` bigint(20) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `experiencias_inscripcion`
--

INSERT INTO `experiencias_inscripcion` (`id`, `fecha_inscripcion`, `estado_pago`, `experiencia_id`, `usuario_id`) VALUES
(1, '2026-11-15 17:25:37.705457', 'pendiente', 1, 7),
(2, '2026-11-15 17:25:39.083495', 'pendiente', 2, 7),
(3, '2026-11-15 17:26:43.951819', 'pendiente', 3, 8),
(4, '2026-11-15 17:26:45.424405', 'pendiente', 4, 8),
(5, '2026-11-16 14:21:22.540908', 'pendiente', 6, 10);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `cuentas_perfil`
--
ALTER TABLE `cuentas_perfil`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `experiencias_categoria`
--
ALTER TABLE `experiencias_categoria`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `experiencias_experiencia`
--
ALTER TABLE `experiencias_experiencia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `experiencias_experie_categoria_id_b03f452f_fk_experienc` (`categoria_id`),
  ADD KEY `experiencias_experiencia_creador_id_70b19025_fk_auth_user_id` (`creador_id`);

--
-- Indices de la tabla `experiencias_inscripcion`
--
ALTER TABLE `experiencias_inscripcion`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `experiencias_inscripcion_usuario_id_experiencia_id_996e38c7_uniq` (`usuario_id`,`experiencia_id`),
  ADD KEY `experiencias_inscrip_experiencia_id_2fbecc6b_fk_experienc` (`experiencia_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cuentas_perfil`
--
ALTER TABLE `cuentas_perfil`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `experiencias_categoria`
--
ALTER TABLE `experiencias_categoria`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `experiencias_experiencia`
--
ALTER TABLE `experiencias_experiencia`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `experiencias_inscripcion`
--
ALTER TABLE `experiencias_inscripcion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `cuentas_perfil`
--
ALTER TABLE `cuentas_perfil`
  ADD CONSTRAINT `cuentas_perfil_user_id_38159a56_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `experiencias_experiencia`
--
ALTER TABLE `experiencias_experiencia`
  ADD CONSTRAINT `experiencias_experie_categoria_id_b03f452f_fk_experienc` FOREIGN KEY (`categoria_id`) REFERENCES `experiencias_categoria` (`id`),
  ADD CONSTRAINT `experiencias_experiencia_creador_id_70b19025_fk_auth_user_id` FOREIGN KEY (`creador_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `experiencias_inscripcion`
--
ALTER TABLE `experiencias_inscripcion`
  ADD CONSTRAINT `experiencias_inscrip_experiencia_id_2fbecc6b_fk_experienc` FOREIGN KEY (`experiencia_id`) REFERENCES `experiencias_experiencia` (`id`),
  ADD CONSTRAINT `experiencias_inscripcion_usuario_id_9d6f5da2_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
