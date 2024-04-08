-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Време на генериране:  8 апр 2024 в 15:28
-- Версия на сървъра: 10.4.32-MariaDB
-- Версия на PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данни: `dzi_12_2`
--

-- --------------------------------------------------------

--
-- Структура на таблица `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `auth_permission`
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
(25, 'Can add Склад', 7, 'add_stock'),
(26, 'Can change Склад', 7, 'change_stock'),
(27, 'Can delete Склад', 7, 'delete_stock'),
(28, 'Can view Склад', 7, 'view_stock'),
(29, 'Can add Операция', 8, 'add_operationtitle'),
(30, 'Can change Операция', 8, 'change_operationtitle'),
(31, 'Can delete Операция', 8, 'delete_operationtitle'),
(32, 'Can view Операция', 8, 'view_operationtitle'),
(33, 'Can add Артикул', 9, 'add_item'),
(34, 'Can change Артикул', 9, 'change_item'),
(35, 'Can delete Артикул', 9, 'delete_item'),
(36, 'Can view Артикул', 9, 'view_item'),
(37, 'Can add Артикул от доставка/изписване', 10, 'add_operationitem'),
(38, 'Can change Артикул от доставка/изписване', 10, 'change_operationitem'),
(39, 'Can delete Артикул от доставка/изписване', 10, 'delete_operationitem'),
(40, 'Can view Артикул от доставка/изписване', 10, 'view_operationitem');

-- --------------------------------------------------------

--
-- Структура на таблица `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$d3VFL32Gn8Kk$UH6GRVkeR/MOqkDtNBDpaCHTiQQPWxCYmaeA6caKX/o=', '2024-04-06 21:35:39.341384', 1, 'admin', '', '', '', 1, 1, '2024-04-04 20:52:05.402121'),
(2, 'pbkdf2_sha256$180000$EMsWO7qY2vKG$WSRoyJvzxkpg2XbJpz8PLA6ZKefYGLmhYz6sj5PErR0=', '2024-04-06 22:42:56.375805', 0, 'staff', 'Венцислав', 'Топузов', '', 1, 1, '2024-04-05 16:11:57.000000');

-- --------------------------------------------------------

--
-- Структура на таблица `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
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

--
-- Схема на данните от таблица `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-04-05 16:11:57.677413', '2', 'staff', 1, '[{\"added\": {}}]', 4, 1),
(2, '2024-04-05 16:12:38.126173', '2', 'staff', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Staff status\"]}}]', 4, 1),
(3, '2024-04-06 12:52:06.877117', '1', 'Домакински', 1, '[{\"added\": {}}]', 7, 1),
(4, '2024-04-06 12:52:20.794273', '2', 'Оборудване', 1, '[{\"added\": {}}]', 7, 1),
(5, '2024-04-06 12:52:33.179458', '3', 'Материали', 1, '[{\"added\": {}}]', 7, 1),
(6, '2024-04-06 12:53:43.568660', '1', 'кофа 10 л.', 1, '[{\"added\": {}}]', 9, 1),
(7, '2024-04-06 12:54:04.857952', '2', 'гъба домакинска', 1, '[{\"added\": {}}]', 9, 1),
(8, '2024-04-06 12:54:38.158279', '3', 'стол метален', 1, '[{\"added\": {}}]', 9, 1),
(9, '2024-04-06 12:55:03.473731', '4', 'стол тапициран син', 1, '[{\"added\": {}}]', 9, 1),
(10, '2024-04-06 12:55:52.349658', '5', 'препарат за чистене на стъкла', 1, '[{\"added\": {}}]', 9, 1),
(11, '2024-04-06 12:57:26.833899', '6', 'лента предпазна сигнална', 1, '[{\"added\": {}}]', 9, 1),
(12, '2024-04-06 13:00:46.444979', '1', 'Доставка №1, фактура 345 от 02/12/2024/23/12/2024г.', 1, '[{\"added\": {}}]', 8, 1),
(13, '2024-04-06 13:08:05.907032', '5', '4', 1, '[{\"added\": {}}]', 10, 1),
(14, '2024-04-06 13:08:26.058254', '6', '11', 1, '[{\"added\": {}}]', 10, 1),
(15, '2024-04-06 21:37:28.772158', '2', 'Изписване №2, приемо-предавателен протокол/23/12/2023', 1, '[{\"added\": {}}]', 8, 1),
(16, '2024-04-06 21:40:36.717418', '7', '3', 1, '[{\"added\": {}}]', 10, 1),
(17, '2024-04-06 21:40:39.432779', '7', '3', 2, '[]', 10, 1),
(18, '2024-04-06 21:41:06.806052', '8', '1', 1, '[{\"added\": {}}]', 10, 1);

-- --------------------------------------------------------

--
-- Структура на таблица `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'main', 'item'),
(10, 'main', 'operationitem'),
(8, 'main', 'operationtitle'),
(7, 'main', 'stock'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Структура на таблица `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-04-04 20:49:42.189547'),
(2, 'auth', '0001_initial', '2024-04-04 20:49:42.473571'),
(3, 'admin', '0001_initial', '2024-04-04 20:49:43.491207'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-04-04 20:49:43.736782'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-04-04 20:49:43.744795'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-04-04 20:49:43.857156'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-04-04 20:49:43.973317'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-04-04 20:49:43.992329'),
(9, 'auth', '0004_alter_user_username_opts', '2024-04-04 20:49:44.005500'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-04-04 20:49:44.098820'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-04-04 20:49:44.107846'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-04-04 20:49:44.118827'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-04-04 20:49:44.185671'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-04-04 20:49:44.202563'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-04-04 20:49:44.243961'),
(16, 'auth', '0011_update_proxy_permissions', '2024-04-04 20:49:44.263304'),
(17, 'sessions', '0001_initial', '2024-04-04 20:49:44.307248'),
(18, 'main', '0001_initial', '2024-04-06 12:47:39.162825');

-- --------------------------------------------------------

--
-- Структура на таблица `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('i6bvmsgbiu0x67st4o9ladf5uzr0osm0', 'NTkyMzYzOGUxYjUwMTQ5ZTM4YzdiYTI3MDlkYWY5MjQyMGRjMWQ0NDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwYTFjY2QyZDRlNzc2ODI1MDA3MDBhMzI3OTU5NjBlMzBhNDk3M2FhIn0=', '2024-04-20 22:42:56.379791');

-- --------------------------------------------------------

--
-- Структура на таблица `main_item`
--

DROP TABLE IF EXISTS `main_item`;
CREATE TABLE `main_item` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `measure` varchar(15) NOT NULL,
  `stock_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `main_item`
--

INSERT INTO `main_item` (`id`, `name`, `quantity`, `measure`, `stock_id`) VALUES
(1, 'кофа 10 л.', 0, 'бр.', 1),
(2, 'гъба домакинска', 0, 'бр.', 1),
(3, 'стол метален', 0, 'бр.', 2),
(4, 'стол тапициран син', 0, 'бр.', 2),
(5, 'препарат за чистене на стъкла', 0, 'л.', 3),
(6, 'лента предпазна сигнална', 0, 'м.', 3);

-- --------------------------------------------------------

--
-- Структура на таблица `main_operationitem`
--

DROP TABLE IF EXISTS `main_operationitem`;
CREATE TABLE `main_operationitem` (
  `id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `measure` varchar(15) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `operation_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `main_operationitem`
--

INSERT INTO `main_operationitem` (`id`, `quantity`, `measure`, `item_id`, `operation_id`) VALUES
(5, 4, 'бр.', 1, 1),
(6, 11, 'бр.', 2, 1),
(7, 3, 'бр.', 4, 2),
(8, 1, 'бр.', 2, 2);

-- --------------------------------------------------------

--
-- Структура на таблица `main_operationtitle`
--

DROP TABLE IF EXISTS `main_operationtitle`;
CREATE TABLE `main_operationtitle` (
  `id` int(11) NOT NULL,
  `type` smallint(6) NOT NULL,
  `date` varchar(15) NOT NULL,
  `partner1` longtext NOT NULL,
  `partner2` varchar(100) NOT NULL,
  `doc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `main_operationtitle`
--

INSERT INTO `main_operationtitle` (`id`, `type`, `date`, `partner1`, `partner2`, `doc`) VALUES
(1, 0, '23/12/2024г.', '\"Фирма\" ООД', 'Петър Петров', 'фактура 345 от 02/12/2024'),
(2, 1, '23/12/2023', 'клуб \"Роботика\" - Георги Бориков', 'Димитър Петров', 'приемо-предавателен протокол');

-- --------------------------------------------------------

--
-- Структура на таблица `main_stock`
--

DROP TABLE IF EXISTS `main_stock`;
CREATE TABLE `main_stock` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `main_stock`
--

INSERT INTO `main_stock` (`id`, `name`) VALUES
(1, 'Домакински'),
(2, 'Оборудване'),
(3, 'Материали');

--
-- Indexes for dumped tables
--

--
-- Индекси за таблица `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индекси за таблица `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Индекси за таблица `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Индекси за таблица `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Индекси за таблица `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Индекси за таблица `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Индекси за таблица `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Индекси за таблица `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Индекси за таблица `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индекси за таблица `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Индекси за таблица `main_item`
--
ALTER TABLE `main_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_item_stock_id_26dabb30_fk_main_stock_id` (`stock_id`);

--
-- Индекси за таблица `main_operationitem`
--
ALTER TABLE `main_operationitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_operationitem_item_id_5488e5a4_fk_main_item_id` (`item_id`),
  ADD KEY `main_operationitem_operation_id_808af067_fk_main_oper` (`operation_id`);

--
-- Индекси за таблица `main_operationtitle`
--
ALTER TABLE `main_operationtitle`
  ADD PRIMARY KEY (`id`);

--
-- Индекси за таблица `main_stock`
--
ALTER TABLE `main_stock`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `main_item`
--
ALTER TABLE `main_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `main_operationitem`
--
ALTER TABLE `main_operationitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `main_operationtitle`
--
ALTER TABLE `main_operationtitle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `main_stock`
--
ALTER TABLE `main_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ограничения за дъмпнати таблици
--

--
-- Ограничения за таблица `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Ограничения за таблица `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ограничения за таблица `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения за таблица `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения за таблица `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения за таблица `main_item`
--
ALTER TABLE `main_item`
  ADD CONSTRAINT `main_item_stock_id_26dabb30_fk_main_stock_id` FOREIGN KEY (`stock_id`) REFERENCES `main_stock` (`id`);

--
-- Ограничения за таблица `main_operationitem`
--
ALTER TABLE `main_operationitem`
  ADD CONSTRAINT `main_operationitem_item_id_5488e5a4_fk_main_item_id` FOREIGN KEY (`item_id`) REFERENCES `main_item` (`id`),
  ADD CONSTRAINT `main_operationitem_operation_id_808af067_fk_main_oper` FOREIGN KEY (`operation_id`) REFERENCES `main_operationtitle` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
