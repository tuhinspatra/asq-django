-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 26, 2018 at 10:30 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asq`
--
CREATE DATABASE IF NOT EXISTS `asq` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `asq`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add users', 7, 'add_users'),
(20, 'Can change users', 7, 'change_users'),
(21, 'Can delete users', 7, 'delete_users');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8_bin NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_bin NOT NULL,
  `first_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `last_name` varchar(150) COLLATE utf8_bin NOT NULL,
  `email` varchar(254) COLLATE utf8_bin NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_bin,
  `object_repr` varchar(200) COLLATE utf8_bin NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8_bin NOT NULL,
  `model` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'form', 'users'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-09-16 19:30:50.300697'),
(2, 'auth', '0001_initial', '2018-09-16 19:31:14.419368'),
(3, 'admin', '0001_initial', '2018-09-16 19:31:22.237623'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-09-16 19:31:22.310421'),
(5, 'contenttypes', '0002_remove_content_type_name', '2018-09-16 19:31:24.928079'),
(6, 'auth', '0002_alter_permission_name_max_length', '2018-09-16 19:31:26.876661'),
(7, 'auth', '0003_alter_user_email_max_length', '2018-09-16 19:31:29.035222'),
(8, 'auth', '0004_alter_user_username_opts', '2018-09-16 19:31:29.134458'),
(9, 'auth', '0005_alter_user_last_login_null', '2018-09-16 19:31:32.166791'),
(10, 'auth', '0006_require_contenttypes_0002', '2018-09-16 19:31:32.262072'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2018-09-16 19:31:32.351646'),
(12, 'auth', '0008_alter_user_username_max_length', '2018-09-16 19:31:34.379773'),
(13, 'auth', '0009_alter_user_last_name_max_length', '2018-09-16 19:31:36.669632'),
(14, 'sessions', '0001_initial', '2018-09-16 19:31:38.678483'),
(15, 'form', '0001_initial', '2018-09-16 20:29:58.908153');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_bin NOT NULL,
  `session_data` longtext COLLATE utf8_bin NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `form_users`
--

CREATE TABLE `form_users` (
  `id` int(11) NOT NULL,
  `uname` varchar(100) COLLATE utf8_bin NOT NULL,
  `password` varchar(100) COLLATE utf8_bin NOT NULL,
  `name` varchar(200) COLLATE utf8_bin NOT NULL,
  `rating` int(11) NOT NULL,
  `email` varchar(254) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `form_users`
--
ALTER TABLE `form_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `form_users`
--
ALTER TABLE `form_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
--
-- Database: `asqdb`
--
CREATE DATABASE IF NOT EXISTS `asqdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci;
USE `asqdb`;

-- --------------------------------------------------------

--
-- Table structure for table `asq_app_answer`
--

CREATE TABLE `asq_app_answer` (
  `id` int(11) NOT NULL,
  `body` longtext COLLATE latin1_general_ci NOT NULL,
  `upvotes` int(11) NOT NULL,
  `downvotes` int(11) NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `last_modified_on` datetime(6) NOT NULL,
  `author_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `asq_app_notification`
--

CREATE TABLE `asq_app_notification` (
  `id` int(11) NOT NULL,
  `isans` tinyint(1) NOT NULL,
  `iscomment` tinyint(1) NOT NULL,
  `new_notification` tinyint(1) NOT NULL,
  `answer_id` int(11) DEFAULT NULL,
  `comment_id` int(11) DEFAULT NULL,
  `created_by_id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `received_by_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `asq_app_qcomment`
--

CREATE TABLE `asq_app_qcomment` (
  `id` int(11) NOT NULL,
  `commentbody` longtext COLLATE latin1_general_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `asq_app_question`
--

CREATE TABLE `asq_app_question` (
  `id` int(11) NOT NULL,
  `author_name` varchar(1000) COLLATE latin1_general_ci NOT NULL,
  `title` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `slug` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `tags` varchar(1000) COLLATE latin1_general_ci NOT NULL,
  `body` longtext COLLATE latin1_general_ci NOT NULL,
  `upvotes` int(11) NOT NULL,
  `downvotes` int(11) NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `last_modified_on` datetime(6) NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `asq_app_question`
--

INSERT INTO `asq_app_question` (`id`, `author_name`, `title`, `slug`, `tags`, `body`, `upvotes`, `downvotes`, `created_on`, `last_modified_on`, `author_id`) VALUES
(1, 'milanbavishi', 'best place to learn all web technologies', 'best-place-to-learn-all-web-technologies', 'html,css,js,django', '<p>what is the&nbsp;best place to learn <strong><u>all</u></strong> web technologies?</p>', 0, 0, '2018-09-26 19:06:18.994987', '2018-09-26 19:06:18.994443', 1);

-- --------------------------------------------------------

--
-- Table structure for table `asq_app_standardtags`
--

CREATE TABLE `asq_app_standardtags` (
  `id` int(11) NOT NULL,
  `standardTags` varchar(200) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `asq_app_standardtags`
--

INSERT INTO `asq_app_standardtags` (`id`, `standardTags`) VALUES
(1, 'HTML'),
(2, 'JavaScript'),
(3, 'Web'),
(4, 'AJAX'),
(5, 'Django'),
(6, 'CSS'),
(7, 'PHP'),
(8, 'Python'),
(9, 'JQuery'),
(10, 'Node.js');

-- --------------------------------------------------------

--
-- Table structure for table `asq_app_tagsearch`
--

CREATE TABLE `asq_app_tagsearch` (
  `id` int(11) NOT NULL,
  `tag` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `question_id` int(11) NOT NULL,
  `question_slug` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `question_title` varchar(200) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `asq_app_tagsearch`
--

INSERT INTO `asq_app_tagsearch` (`id`, `tag`, `question_id`, `question_slug`, `question_title`) VALUES
(1, 'html', 1, 'best-place-to-learn-all-web-technologies', 'best place to learn all web technologies'),
(2, 'css', 1, 'best-place-to-learn-all-web-technologies', 'best place to learn all web technologies'),
(3, 'js', 1, 'best-place-to-learn-all-web-technologies', 'best place to learn all web technologies'),
(4, 'django', 1, 'best-place-to-learn-all-web-technologies', 'best place to learn all web technologies');

-- --------------------------------------------------------

--
-- Table structure for table `asq_app_userdashboard`
--

CREATE TABLE `asq_app_userdashboard` (
  `id` int(11) NOT NULL,
  `question` int(11) NOT NULL,
  `answer` int(11) NOT NULL,
  `comment` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `asq_app_uservotedetail`
--

CREATE TABLE `asq_app_uservotedetail` (
  `id` int(11) NOT NULL,
  `question` int(11) NOT NULL,
  `answer` int(11) NOT NULL,
  `upvote` tinyint(1) NOT NULL,
  `downvote` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `auth_permission`
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
(25, 'Can add answer', 7, 'add_answer'),
(26, 'Can change answer', 7, 'change_answer'),
(27, 'Can delete answer', 7, 'delete_answer'),
(28, 'Can view answer', 7, 'view_answer'),
(29, 'Can add notification', 8, 'add_notification'),
(30, 'Can change notification', 8, 'change_notification'),
(31, 'Can delete notification', 8, 'delete_notification'),
(32, 'Can view notification', 8, 'view_notification'),
(33, 'Can add q comment', 9, 'add_qcomment'),
(34, 'Can change q comment', 9, 'change_qcomment'),
(35, 'Can delete q comment', 9, 'delete_qcomment'),
(36, 'Can view q comment', 9, 'view_qcomment'),
(37, 'Can add question', 10, 'add_question'),
(38, 'Can change question', 10, 'change_question'),
(39, 'Can delete question', 10, 'delete_question'),
(40, 'Can view question', 10, 'view_question'),
(41, 'Can add standard tags', 11, 'add_standardtags'),
(42, 'Can change standard tags', 11, 'change_standardtags'),
(43, 'Can delete standard tags', 11, 'delete_standardtags'),
(44, 'Can view standard tags', 11, 'view_standardtags'),
(45, 'Can add tag search', 12, 'add_tagsearch'),
(46, 'Can change tag search', 12, 'change_tagsearch'),
(47, 'Can delete tag search', 12, 'delete_tagsearch'),
(48, 'Can view tag search', 12, 'view_tagsearch'),
(49, 'Can add user dash board', 13, 'add_userdashboard'),
(50, 'Can change user dash board', 13, 'change_userdashboard'),
(51, 'Can delete user dash board', 13, 'delete_userdashboard'),
(52, 'Can view user dash board', 13, 'view_userdashboard'),
(53, 'Can add user vote detail', 14, 'add_uservotedetail'),
(54, 'Can change user vote detail', 14, 'change_uservotedetail'),
(55, 'Can delete user vote detail', 14, 'delete_uservotedetail'),
(56, 'Can view user vote detail', 14, 'view_uservotedetail'),
(57, 'Can add association', 15, 'add_association'),
(58, 'Can change association', 15, 'change_association'),
(59, 'Can delete association', 15, 'delete_association'),
(60, 'Can view association', 15, 'view_association'),
(61, 'Can add code', 16, 'add_code'),
(62, 'Can change code', 16, 'change_code'),
(63, 'Can delete code', 16, 'delete_code'),
(64, 'Can view code', 16, 'view_code'),
(65, 'Can add nonce', 17, 'add_nonce'),
(66, 'Can change nonce', 17, 'change_nonce'),
(67, 'Can delete nonce', 17, 'delete_nonce'),
(68, 'Can view nonce', 17, 'view_nonce'),
(69, 'Can add user social auth', 18, 'add_usersocialauth'),
(70, 'Can change user social auth', 18, 'change_usersocialauth'),
(71, 'Can delete user social auth', 18, 'delete_usersocialauth'),
(72, 'Can view user social auth', 18, 'view_usersocialauth'),
(73, 'Can add partial', 19, 'add_partial'),
(74, 'Can change partial', 19, 'change_partial'),
(75, 'Can delete partial', 19, 'delete_partial'),
(76, 'Can view partial', 19, 'view_partial');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE latin1_general_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE latin1_general_ci NOT NULL,
  `first_name` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `last_name` varchar(150) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(254) COLLATE latin1_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$120000$jAq9vCu4D92H$4TTk7FFyqbRlXw0uGU2VU/xfzBvs5k9bk6Yocri76d8=', '2018-09-26 19:02:46.461425', 0, 'milanbavishi', 'milan', 'bavishi', 'a@b.com', 0, 1, '2018-09-26 19:02:45.013384'),
(2, 'pbkdf2_sha256$120000$1SUnUIxlaGvr$YDTLzZ3rFDO8ctsgHtraiPA0vFkw13xlQfM69A5Yvgk=', '2018-09-26 19:12:37.894191', 1, 'milan11', '', '', 'aa@bb.com', 1, 1, '2018-09-26 19:12:04.846799');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE latin1_general_ci,
  `object_repr` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext COLLATE latin1_general_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2018-09-26 19:12:49.303666', '1', 'HTML', 1, '[{\"added\": {}}]', 11, 2),
(2, '2018-09-26 19:12:54.815088', '2', 'JavaScript', 1, '[{\"added\": {}}]', 11, 2),
(3, '2018-09-26 19:12:59.151960', '3', 'Web', 1, '[{\"added\": {}}]', 11, 2),
(4, '2018-09-26 19:13:02.892852', '4', 'AJAX', 1, '[{\"added\": {}}]', 11, 2),
(5, '2018-09-26 19:13:06.432876', '5', 'Django', 1, '[{\"added\": {}}]', 11, 2),
(6, '2018-09-26 19:13:09.510725', '6', 'CSS', 1, '[{\"added\": {}}]', 11, 2),
(7, '2018-09-26 19:13:16.009444', '7', 'PHP', 1, '[{\"added\": {}}]', 11, 2),
(8, '2018-09-26 19:13:19.161875', '8', 'Python', 1, '[{\"added\": {}}]', 11, 2),
(9, '2018-09-26 19:13:24.526297', '9', 'JQuery', 1, '[{\"added\": {}}]', 11, 2),
(10, '2018-09-26 19:13:36.032197', '10', 'Node.js', 1, '[{\"added\": {}}]', 11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `model` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'asq_app', 'answer'),
(8, 'asq_app', 'notification'),
(9, 'asq_app', 'qcomment'),
(10, 'asq_app', 'question'),
(11, 'asq_app', 'standardtags'),
(12, 'asq_app', 'tagsearch'),
(13, 'asq_app', 'userdashboard'),
(14, 'asq_app', 'uservotedetail'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(15, 'social_django', 'association'),
(16, 'social_django', 'code'),
(17, 'social_django', 'nonce'),
(19, 'social_django', 'partial'),
(18, 'social_django', 'usersocialauth');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `name` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-09-26 18:56:03.865818'),
(2, 'auth', '0001_initial', '2018-09-26 18:56:33.359863'),
(3, 'admin', '0001_initial', '2018-09-26 18:56:50.935594'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-09-26 18:56:51.012586'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2018-09-26 18:56:51.193791'),
(6, 'asq_app', '0001_initial', '2018-09-26 18:57:49.896730'),
(7, 'contenttypes', '0002_remove_content_type_name', '2018-09-26 18:57:52.480301'),
(8, 'auth', '0002_alter_permission_name_max_length', '2018-09-26 18:57:57.592541'),
(9, 'auth', '0003_alter_user_email_max_length', '2018-09-26 18:58:00.736285'),
(10, 'auth', '0004_alter_user_username_opts', '2018-09-26 18:58:00.848501'),
(11, 'auth', '0005_alter_user_last_login_null', '2018-09-26 18:58:02.054965'),
(12, 'auth', '0006_require_contenttypes_0002', '2018-09-26 18:58:02.111312'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2018-09-26 18:58:02.200717'),
(14, 'auth', '0008_alter_user_username_max_length', '2018-09-26 18:58:05.666126'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2018-09-26 18:58:07.626535'),
(16, 'sessions', '0001_initial', '2018-09-26 18:58:13.518394'),
(17, 'default', '0001_initial', '2018-09-26 18:58:17.904723'),
(18, 'social_auth', '0001_initial', '2018-09-26 18:58:18.029530'),
(19, 'default', '0002_add_related_name', '2018-09-26 18:58:21.680319'),
(20, 'social_auth', '0002_add_related_name', '2018-09-26 18:58:22.086156'),
(21, 'default', '0003_alter_email_max_length', '2018-09-26 18:58:29.896411'),
(22, 'social_auth', '0003_alter_email_max_length', '2018-09-26 18:58:30.688581'),
(23, 'default', '0004_auto_20160423_0400', '2018-09-26 18:58:31.757815'),
(24, 'social_auth', '0004_auto_20160423_0400', '2018-09-26 18:58:31.962277'),
(25, 'social_auth', '0005_auto_20160727_2333', '2018-09-26 18:58:35.804588'),
(26, 'social_django', '0006_partial', '2018-09-26 18:58:41.211983'),
(27, 'social_django', '0007_code_timestamp', '2018-09-26 18:58:47.928335'),
(28, 'social_django', '0008_partial_timestamp', '2018-09-26 18:58:55.938239'),
(29, 'social_django', '0005_auto_20160727_2333', '2018-09-26 18:58:56.533791'),
(30, 'social_django', '0003_alter_email_max_length', '2018-09-26 18:58:57.231302'),
(31, 'social_django', '0001_initial', '2018-09-26 18:58:57.355571'),
(32, 'social_django', '0002_add_related_name', '2018-09-26 18:58:57.891587'),
(33, 'social_django', '0004_auto_20160423_0400', '2018-09-26 18:58:58.065875');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `session_data` longtext COLLATE latin1_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('cofxmgveq2geih0b4g2hrlbaz6yi2tpm', 'MDBjMjg5MzRmYTFmOTBiZDQ0MDY2OTg2ZWQwM2FhZDU4N2RjYTBjZDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZDVlZjZjN2M2MjIzNDNmOTIxYzIzZTY2ZDhjNWVlNTc3MDYyNWEyIn0=', '2018-10-10 19:12:37.961319');

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_association`
--

CREATE TABLE `social_auth_association` (
  `id` int(11) NOT NULL,
  `server_url` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `handle` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `secret` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `issued` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL,
  `assoc_type` varchar(64) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_code`
--

CREATE TABLE `social_auth_code` (
  `id` int(11) NOT NULL,
  `email` varchar(254) COLLATE latin1_general_ci NOT NULL,
  `code` varchar(32) COLLATE latin1_general_ci NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `timestamp` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_nonce`
--

CREATE TABLE `social_auth_nonce` (
  `id` int(11) NOT NULL,
  `server_url` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `salt` varchar(65) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_partial`
--

CREATE TABLE `social_auth_partial` (
  `id` int(11) NOT NULL,
  `token` varchar(32) COLLATE latin1_general_ci NOT NULL,
  `next_step` smallint(5) UNSIGNED NOT NULL,
  `backend` varchar(32) COLLATE latin1_general_ci NOT NULL,
  `data` longtext COLLATE latin1_general_ci NOT NULL,
  `timestamp` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_usersocialauth`
--

CREATE TABLE `social_auth_usersocialauth` (
  `id` int(11) NOT NULL,
  `provider` varchar(32) COLLATE latin1_general_ci NOT NULL,
  `uid` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `extra_data` longtext COLLATE latin1_general_ci NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asq_app_answer`
--
ALTER TABLE `asq_app_answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `asq_app_answer_author_id_f781daeb_fk_auth_user_id` (`author_id`),
  ADD KEY `asq_app_answer_question_id_5719613d_fk_asq_app_question_id` (`question_id`);

--
-- Indexes for table `asq_app_notification`
--
ALTER TABLE `asq_app_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `asq_app_notification_answer_id_8feface3_fk_asq_app_answer_id` (`answer_id`),
  ADD KEY `asq_app_notification_comment_id_6b558b80_fk_asq_app_qcomment_id` (`comment_id`),
  ADD KEY `asq_app_notification_created_by_id_37777e69_fk_auth_user_id` (`created_by_id`),
  ADD KEY `asq_app_notification_question_id_2d073fc5_fk_asq_app_question_id` (`question_id`),
  ADD KEY `asq_app_notification_received_by_id_52350b0b_fk_auth_user_id` (`received_by_id`);

--
-- Indexes for table `asq_app_qcomment`
--
ALTER TABLE `asq_app_qcomment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `asq_app_qcomment_author_id_b180c140_fk_auth_user_id` (`author_id`),
  ADD KEY `asq_app_qcomment_question_id_a30b1ab5_fk_asq_app_question_id` (`question_id`);

--
-- Indexes for table `asq_app_question`
--
ALTER TABLE `asq_app_question`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `asq_app_question_author_id_426f51ec_fk_auth_user_id` (`author_id`);

--
-- Indexes for table `asq_app_standardtags`
--
ALTER TABLE `asq_app_standardtags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asq_app_tagsearch`
--
ALTER TABLE `asq_app_tagsearch`
  ADD PRIMARY KEY (`id`),
  ADD KEY `asq_app_tagsearch_question_slug_9e4997d7` (`question_slug`);

--
-- Indexes for table `asq_app_userdashboard`
--
ALTER TABLE `asq_app_userdashboard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `asq_app_userdashboard_user_id_72bcb4ec_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `asq_app_uservotedetail`
--
ALTER TABLE `asq_app_uservotedetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `asq_app_uservotedetail_user_id_afdd4b12_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `social_auth_association`
--
ALTER TABLE `social_auth_association`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_association_server_url_handle_078befa2_uniq` (`server_url`,`handle`);

--
-- Indexes for table `social_auth_code`
--
ALTER TABLE `social_auth_code`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_code_email_code_801b2d02_uniq` (`email`,`code`),
  ADD KEY `social_auth_code_code_a2393167` (`code`),
  ADD KEY `social_auth_code_timestamp_176b341f` (`timestamp`);

--
-- Indexes for table `social_auth_nonce`
--
ALTER TABLE `social_auth_nonce`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_nonce_server_url_timestamp_salt_f6284463_uniq` (`server_url`,`timestamp`,`salt`);

--
-- Indexes for table `social_auth_partial`
--
ALTER TABLE `social_auth_partial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_auth_partial_token_3017fea3` (`token`),
  ADD KEY `social_auth_partial_timestamp_50f2119f` (`timestamp`);

--
-- Indexes for table `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_usersocialauth_provider_uid_e6b5e668_uniq` (`provider`,`uid`),
  ADD KEY `social_auth_usersocialauth_user_id_17d28448_fk_auth_user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `asq_app_answer`
--
ALTER TABLE `asq_app_answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `asq_app_notification`
--
ALTER TABLE `asq_app_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `asq_app_qcomment`
--
ALTER TABLE `asq_app_qcomment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `asq_app_question`
--
ALTER TABLE `asq_app_question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `asq_app_standardtags`
--
ALTER TABLE `asq_app_standardtags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `asq_app_tagsearch`
--
ALTER TABLE `asq_app_tagsearch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `asq_app_userdashboard`
--
ALTER TABLE `asq_app_userdashboard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `asq_app_uservotedetail`
--
ALTER TABLE `asq_app_uservotedetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `social_auth_association`
--
ALTER TABLE `social_auth_association`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_code`
--
ALTER TABLE `social_auth_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_nonce`
--
ALTER TABLE `social_auth_nonce`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_partial`
--
ALTER TABLE `social_auth_partial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `asq_app_answer`
--
ALTER TABLE `asq_app_answer`
  ADD CONSTRAINT `asq_app_answer_author_id_f781daeb_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `asq_app_answer_question_id_5719613d_fk_asq_app_question_id` FOREIGN KEY (`question_id`) REFERENCES `asq_app_question` (`id`);

--
-- Constraints for table `asq_app_notification`
--
ALTER TABLE `asq_app_notification`
  ADD CONSTRAINT `asq_app_notification_answer_id_8feface3_fk_asq_app_answer_id` FOREIGN KEY (`answer_id`) REFERENCES `asq_app_answer` (`id`),
  ADD CONSTRAINT `asq_app_notification_comment_id_6b558b80_fk_asq_app_qcomment_id` FOREIGN KEY (`comment_id`) REFERENCES `asq_app_qcomment` (`id`),
  ADD CONSTRAINT `asq_app_notification_created_by_id_37777e69_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `asq_app_notification_question_id_2d073fc5_fk_asq_app_question_id` FOREIGN KEY (`question_id`) REFERENCES `asq_app_question` (`id`),
  ADD CONSTRAINT `asq_app_notification_received_by_id_52350b0b_fk_auth_user_id` FOREIGN KEY (`received_by_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `asq_app_qcomment`
--
ALTER TABLE `asq_app_qcomment`
  ADD CONSTRAINT `asq_app_qcomment_author_id_b180c140_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `asq_app_qcomment_question_id_a30b1ab5_fk_asq_app_question_id` FOREIGN KEY (`question_id`) REFERENCES `asq_app_question` (`id`);

--
-- Constraints for table `asq_app_question`
--
ALTER TABLE `asq_app_question`
  ADD CONSTRAINT `asq_app_question_author_id_426f51ec_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `asq_app_userdashboard`
--
ALTER TABLE `asq_app_userdashboard`
  ADD CONSTRAINT `asq_app_userdashboard_user_id_72bcb4ec_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `asq_app_uservotedetail`
--
ALTER TABLE `asq_app_uservotedetail`
  ADD CONSTRAINT `asq_app_uservotedetail_user_id_afdd4b12_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  ADD CONSTRAINT `social_auth_usersocialauth_user_id_17d28448_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
--
-- Database: `onsite`
--
CREATE DATABASE IF NOT EXISTS `onsite` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `onsite`;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uname` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uname`) VALUES
(''),
('milan'),
('milan2'),
('milan3'),
('milan1'),
('milan4');
--
-- Database: `Peer_Data`
--
CREATE DATABASE IF NOT EXISTS `Peer_Data` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `Peer_Data`;

-- --------------------------------------------------------

--
-- Table structure for table `channels`
--

CREATE TABLE `channels` (
  `cid` varchar(150) NOT NULL,
  `cname` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `name` varchar(250) NOT NULL,
  `path` varchar(300) NOT NULL,
  `cid` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `channels`
--
ALTER TABLE `channels`
  ADD UNIQUE KEY `cid` (`cid`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD UNIQUE KEY `path` (`path`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'Peer_Data', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"channels\",\"videos\"],\"table_structure[]\":[\"channels\",\"videos\"],\"table_data[]\":[\"channels\",\"videos\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(2, 'root', 'server', 'asqdb', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"asq\",\"asqdb\",\"onsite\",\"Peer_Data\",\"phpmyadmin\",\"SportsBlog\",\"sqlfordjango\",\"test\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"asqdb\",\"table\":\"asq_app_standardtags\"},{\"db\":\"asqdb\",\"table\":\"asq_app_question\"},{\"db\":\"asqdb\",\"table\":\"asq_app_uservotedetail\"},{\"db\":\"asqdb\",\"table\":\"asq_app_qcomment\"},{\"db\":\"asqdb\",\"table\":\"asq_app_tagsearch\"},{\"db\":\"asqdb\",\"table\":\"asq_app_answer\"},{\"db\":\"asqdb\",\"table\":\"auth_user\"},{\"db\":\"asqdb\",\"table\":\"asq_app_notification\"},{\"db\":\"Peer_Data\",\"table\":\"channels\"},{\"db\":\"asqdb\",\"table\":\"auth_permission\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2018-09-26 19:00:36', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `SportsBlog`
--
CREATE DATABASE IF NOT EXISTS `SportsBlog` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `SportsBlog`;

-- --------------------------------------------------------

--
-- Table structure for table `Activity`
--

CREATE TABLE `Activity` (
  `ActivityID` int(11) NOT NULL,
  `ActivityTypeID` int(11) NOT NULL,
  `ActivityOwnerID` int(11) NOT NULL,
  `ActivityTime` datetime NOT NULL,
  `AffectedUserCount` int(11) NOT NULL DEFAULT '0',
  `AffectedMainUserID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='To keep track recent activities of a user.';

-- --------------------------------------------------------

--
-- Table structure for table `ActivityType`
--

CREATE TABLE `ActivityType` (
  `ActivityTypeID` int(11) NOT NULL,
  `ActivityName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ActivityPriority` int(11) NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Define different activities.';

--
-- Dumping data for table `ActivityType`
--

INSERT INTO `ActivityType` (`ActivityTypeID`, `ActivityName`, `ActivityPriority`) VALUES
(1, 'Post Published from scratch. Not from Saved Draft.', 1),
(2, 'Post published from Saved Draft.', 1),
(3, 'Post not published. Saved as Draft.', 2),
(4, 'Commented on a post.', 2),
(5, 'Started following a topic.', 2),
(6, 'Stopped following a topic.', 2),
(7, 'Deleted a live post.', 2),
(8, 'Edited a live post.', 2),
(9, 'Started following somebody.', 2),
(10, 'Stopped following somebody.', 2),
(11, 'Changed status of live post to draft.', 2),
(12, 'Changed profile picture.', 2),
(13, 'Updated profile details.', 2),
(14, 'Upvoted a post.', 2),
(15, 'Downvoted a post.', 2),
(16, 'Deleted a comment.', 2),
(17, 'Edited a comment.', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ChatGroups`
--

CREATE TABLE `ChatGroups` (
  `ChatGroupsTableID` int(11) NOT NULL,
  `ChatGroupID` int(11) NOT NULL,
  `ChatGroupUserID` int(11) NOT NULL,
  `ChatGroupUserPriority` int(11) NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ChatGroups`
--

INSERT INTO `ChatGroups` (`ChatGroupsTableID`, `ChatGroupID`, `ChatGroupUserID`, `ChatGroupUserPriority`) VALUES
(1, 5, 10, 1),
(2, 5, 15, 2),
(3, 5, 19, 2),
(4, 5, 20, 2),
(5, 5, 21, 2),
(6, 5, 22, 2),
(7, 5, 23, 2),
(8, 5, 26, 2),
(9, 5, 27, 2),
(10, 5, 28, 2),
(11, 5, 29, 2),
(12, 5, 30, 2),
(13, 5, 31, 2),
(14, 6, 10, 2),
(15, 6, 19, 1),
(16, 6, 31, 2),
(17, 6, 28, 2),
(18, 7, 10, 2),
(19, 7, 30, 2),
(20, 8, 23, 2),
(21, 8, 29, 2),
(22, 8, 21, 1),
(23, 9, 26, 2),
(24, 9, 27, 2),
(25, 10, 22, 2),
(26, 10, 23, 2),
(27, 11, 27, 2),
(28, 11, 28, 2),
(29, 12, 30, 2),
(30, 12, 20, 2),
(31, 10, 29, 2),
(32, 10, 19, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ChatMessages`
--

CREATE TABLE `ChatMessages` (
  `ChatMessageID` int(11) NOT NULL,
  `ChatMessageTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ChatSenderID` int(11) NOT NULL,
  `ChatGroupID` int(11) NOT NULL,
  `ChatText` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Individual message texts with sender and receiver group.';

--
-- Dumping data for table `ChatMessages`
--

INSERT INTO `ChatMessages` (`ChatMessageID`, `ChatMessageTime`, `ChatSenderID`, `ChatGroupID`, `ChatText`) VALUES
(1, '2017-05-11 17:30:38', 10, 5, 'Hello World!'),
(2, '2017-05-11 17:30:39', 19, 5, 'Are you nuts!'),
(3, '2017-05-11 17:39:06', 20, 5, 'Hello guys!'),
(4, '2017-05-11 17:39:07', 21, 5, 'Yea hello...'),
(5, '2017-05-11 17:39:08', 22, 5, 'Hello guys!'),
(6, '2017-05-11 17:39:09', 23, 5, 'hey!!!'),
(7, '2017-05-11 17:39:10', 26, 5, 'wow !!'),
(8, '2017-05-11 17:39:11', 27, 5, 'Hello guys!'),
(9, '2017-05-11 17:39:12', 28, 5, 'how are you??'),
(10, '2017-05-11 17:39:13', 29, 5, 'Hello guys!'),
(11, '2017-05-11 17:39:14', 30, 5, 'how do you do??'),
(12, '2017-05-11 17:39:15', 31, 5, 'Hello guys!'),
(13, '2017-05-11 17:39:16', 10, 6, 'how do you do??'),
(14, '2017-05-11 17:39:17', 28, 6, 'hey!!!'),
(15, '2017-05-11 17:39:18', 31, 6, 'how do you do??'),
(16, '2017-05-11 17:39:19', 10, 7, 'hey!!!'),
(17, '2017-05-11 17:39:20', 29, 8, 'how are you??'),
(18, '2017-05-11 17:39:21', 27, 9, 'hey!!!'),
(19, '2017-05-11 17:39:28', 26, 9, 'how do you do??'),
(20, '2017-05-12 04:14:20', 10, 5, 'I am feeling bored.'),
(23, '2017-05-12 09:03:17', 10, 5, 'helloooo'),
(24, '2017-05-12 10:32:34', 10, 5, 'is anybody there'),
(25, '2017-05-12 10:41:30', 10, 5, 'hello'),
(26, '2017-05-12 10:44:35', 20, 5, 'why are you bothering everyone else??'),
(27, '2017-05-12 10:45:09', 20, 5, 'I am bored too'),
(28, '2017-05-12 10:45:15', 10, 5, 'I see..'),
(29, '2017-05-12 10:45:30', 20, 5, 'Should we go somewhere??'),
(30, '2017-05-12 10:48:35', 10, 5, 'u still there??'),
(31, '2017-05-12 10:48:43', 10, 5, 'wow ...'),
(32, '2017-05-12 10:49:10', 20, 5, 'this page is refrshing on its own!'),
(33, '2017-05-12 10:49:21', 10, 5, 'weird!!'),
(34, '2017-05-12 12:11:06', 20, 5, 'should we go for dinner somewhere??'),
(35, '2017-05-12 12:11:37', 10, 5, 'this is not a private chat!! People can listen'),
(36, '2017-05-12 12:11:48', 20, 5, 'OOps.'),
(37, '2017-05-12 13:13:02', 10, 5, 'good!'),
(38, '2017-05-12 13:14:14', 20, 5, 'Everything alright?'),
(39, '2017-05-12 13:32:09', 30, 5, 'hey!'),
(40, '2017-05-12 13:35:04', 20, 5, 'quick!'),
(41, '2017-10-11 08:18:45', 10, 5, 'ajdfslkjasdfl'),
(42, '2018-01-14 14:11:16', 10, 5, 'hurry');

-- --------------------------------------------------------

--
-- Table structure for table `Comments`
--

CREATE TABLE `Comments` (
  `CommentID` int(100) NOT NULL,
  `Comment` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `CommenterID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CommentDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Deleted` int(11) NOT NULL DEFAULT '0',
  `PostID` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Stores all the comments for all the posts.';

--
-- Dumping data for table `Comments`
--

INSERT INTO `Comments` (`CommentID`, `Comment`, `CommenterID`, `CommentDate`, `Deleted`, `PostID`) VALUES
(1, 'Nice Blog.', '10', '2017-05-01 00:03:42', 0, 1),
(2, 'Great work!', '15', '2017-05-01 08:27:47', 0, 1),
(3, 'but this looks like copied....', '10', '2017-05-01 08:28:29', 0, 1),
(4, 'Nice Examples.', '15', '2017-05-01 08:33:26', 0, 3),
(5, 'Totally impractical. What\'s the use of such a long article?', '23', '2017-05-01 08:52:30', 0, 4),
(6, 'But web animation started much earlier than said above.', '19', '2017-05-01 08:53:24', 0, 4),
(7, 'Gooooooood!!!', '23', '2017-05-01 08:54:03', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `Followers`
--

CREATE TABLE `Followers` (
  `FollowersTableID` int(100) NOT NULL,
  `UserID` int(100) NOT NULL,
  `FollowerID` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Followers`
--

INSERT INTO `Followers` (`FollowersTableID`, `UserID`, `FollowerID`) VALUES
(1, 10, 15),
(3, 10, 19),
(4, 10, 20),
(5, 10, 21),
(6, 10, 22),
(7, 15, 23),
(8, 23, 15),
(9, 21, 22),
(10, 22, 15),
(11, 15, 10),
(12, 21, 10),
(13, 15, 20),
(14, 20, 10),
(15, 23, 19),
(16, 26, 27),
(17, 27, 28),
(18, 28, 29),
(19, 29, 31),
(20, 31, 30),
(21, 31, 27),
(22, 31, 28),
(23, 31, 29),
(24, 31, 19),
(25, 31, 10),
(26, 29, 21),
(27, 29, 22),
(28, 29, 27),
(29, 15, 31),
(30, 15, 30),
(31, 15, 29),
(32, 15, 26),
(33, 26, 10),
(34, 26, 30);

-- --------------------------------------------------------

--
-- Table structure for table `PostDetails`
--

CREATE TABLE `PostDetails` (
  `PostDetailID` int(100) NOT NULL,
  `PostID` int(100) NOT NULL,
  `Sequence` int(100) NOT NULL DEFAULT '1',
  `PostText` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Stores the post body.';

--
-- Dumping data for table `PostDetails`
--

INSERT INTO `PostDetails` (`PostDetailID`, `PostID`, `Sequence`, `PostText`) VALUES
(1, 1, 1, 'Vestibulum ultricies venenatis dictumst donec mi neque accumsan eros mauris curabitur odio, fringilla torquent quisque sociosqu nisi pulvinar senectus suspendisse inceptos litora turpis, tincidunt mollis conubia non malesuada maecenas aptent venenatis auctor mattis.\n\nEleifend venenatis nisi arcu quis nunc turpis ullamcorper, augue fermentum himenaeos lacus dictum nam, non etiam volutpat primis elementum volutpat.\n\nConvallis neque dolor nisl dictum non posuere et viverra urna pharetra, ut nostra elit auctor eget semper turpis sagittis cursus ac, nisl faucibus justo consequat quam ultrices sociosqu vitae suspendisse vitae sollicitudin magna massa.\n\nMattis et etiam tortor aptent vitae aptent commodo diam, tempus accumsan pellentesque commodo consequat lorem consequat cubilia, ultrices in commodo curabitur commodo vivamus ante.'),
(2, 2, 1, 'Vestibulum ultricies venenatis dictumst donec mi neque accumsan eros mauris curabitur odio, fringilla torquent quisque sociosqu nisi pulvinar senectus suspendisse inceptos litora turpis, tincidunt mollis conubia non malesuada maecenas aptent venenatis auctor mattis.\n\nEleifend venenatis nisi arcu quis nunc turpis ullamcorper, augue fermentum himenaeos lacus dictum nam, non etiam volutpat primis elementum volutpat.\n\nConvallis neque dolor nisl dictum non posuere et viverra urna pharetra, ut nostra elit auctor eget semper turpis sagittis cursus ac, nisl faucibus justo consequat quam ultrices sociosqu vitae suspendisse vitae sollicitudin magna massa.\n\nMattis et etiam tortor aptent vitae aptent commodo diam, tempus accumsan pellentesque commodo consequat lorem consequat cubilia, ultrices in commodo curabitur commodo vivamus ante.'),
(3, 3, 1, 'Vestibulum ultricies venenatis dictumst donec mi neque accumsan eros mauris curabitur odio, fringilla torquent quisque sociosqu nisi pulvinar senectus suspendisse inceptos litora turpis, tincidunt mollis conubia non malesuada maecenas aptent venenatis auctor mattis.\n\nEleifend venenatis nisi arcu quis nunc turpis ullamcorper, augue fermentum himenaeos lacus dictum nam, non etiam volutpat primis elementum volutpat.\n\nConvallis neque dolor nisl dictum non posuere et viverra urna pharetra, ut nostra elit auctor eget semper turpis sagittis cursus ac, nisl faucibus justo consequat quam ultrices sociosqu vitae suspendisse vitae sollicitudin magna massa.\n\nMattis et etiam tortor aptent vitae aptent commodo diam, tempus accumsan pellentesque commodo consequat lorem consequat cubilia, ultrices in commodo curabitur commodo vivamus ante.'),
(4, 4, 1, 'Vestibulum ultricies venenatis dictumst donec mi neque accumsan eros mauris curabitur odio, fringilla torquent quisque sociosqu nisi pulvinar senectus suspendisse inceptos litora turpis, tincidunt mollis conubia non malesuada maecenas aptent venenatis auctor mattis.\n\nEleifend venenatis nisi arcu quis nunc turpis ullamcorper, augue fermentum himenaeos lacus dictum nam, non etiam volutpat primis elementum volutpat.\n\nConvallis neque dolor nisl dictum non posuere et viverra urna pharetra, ut nostra elit auctor eget semper turpis sagittis cursus ac, nisl faucibus justo consequat quam ultrices sociosqu vitae suspendisse vitae sollicitudin magna massa.\n\nMattis et etiam tortor aptent vitae aptent commodo diam, tempus accumsan pellentesque commodo consequat lorem consequat cubilia, ultrices in commodo curabitur commodo vivamus ante.'),
(5, 4, 2, 'Vestibulum ultricies venenatis dictumst donec mi neque accumsan eros mauris curabitur odio, fringilla torquent quisque sociosqu nisi pulvinar senectus suspendisse inceptos litora turpis, tincidunt mollis conubia non malesuada maecenas aptent venenatis auctor mattis.\n\nEleifend venenatis nisi arcu quis nunc turpis ullamcorper, augue fermentum himenaeos lacus dictum nam, non etiam volutpat primis elementum volutpat.\n\nConvallis neque dolor nisl dictum non posuere et viverra urna pharetra, ut nostra elit auctor eget semper turpis sagittis cursus ac, nisl faucibus justo consequat quam ultrices sociosqu vitae suspendisse vitae sollicitudin magna massa.\n\nMattis et etiam tortor aptent vitae aptent commodo diam, tempus accumsan pellentesque commodo consequat lorem consequat cubilia, ultrices in commodo curabitur commodo vivamus ante.'),
(6, 5, 1, 'Vestibulum ultricies venenatis dictumst donec mi neque accumsan eros mauris curabitur odio, fringilla torquent quisque sociosqu nisi pulvinar senectus suspendisse inceptos litora turpis, tincidunt mollis conubia non malesuada maecenas aptent venenatis auctor mattis.\n\nEleifend venenatis nisi arcu quis nunc turpis ullamcorper, augue fermentum himenaeos lacus dictum nam, non etiam volutpat primis elementum volutpat.\n\nConvallis neque dolor nisl dictum non posuere et viverra urna pharetra, ut nostra elit auctor eget semper turpis sagittis cursus ac, nisl faucibus justo consequat quam ultrices sociosqu vitae suspendisse vitae sollicitudin magna massa.\n\nMattis et etiam tortor aptent vitae aptent commodo diam, tempus accumsan pellentesque commodo consequat lorem consequat cubilia, ultrices in commodo curabitur commodo vivamus ante.'),
(7, 6, 1, 'Vestibulum ultricies venenatis dictumst donec mi neque accumsan eros mauris curabitur odio, fringilla torquent quisque sociosqu nisi pulvinar senectus suspendisse inceptos litora turpis, tincidunt mollis conubia non malesuada maecenas aptent venenatis auctor mattis.\n\nEleifend venenatis nisi arcu quis nunc turpis ullamcorper, augue fermentum himenaeos lacus dictum nam, non etiam volutpat primis elementum volutpat.\n\nConvallis neque dolor nisl dictum non posuere et viverra urna pharetra, ut nostra elit auctor eget semper turpis sagittis cursus ac, nisl faucibus justo consequat quam ultrices sociosqu vitae suspendisse vitae sollicitudin magna massa.\n\nMattis et etiam tortor aptent vitae aptent commodo diam, tempus accumsan pellentesque commodo consequat lorem consequat cubilia, ultrices in commodo curabitur commodo vivamus ante.'),
(8, 6, 2, 'Vestibulum ultricies venenatis dictumst donec mi neque accumsan eros mauris curabitur odio, fringilla torquent quisque sociosqu nisi pulvinar senectus suspendisse inceptos litora turpis, tincidunt mollis conubia non malesuada maecenas aptent venenatis auctor mattis.\n\nEleifend venenatis nisi arcu quis nunc turpis ullamcorper, augue fermentum himenaeos lacus dictum nam, non etiam volutpat primis elementum volutpat.\n\nConvallis neque dolor nisl dictum non posuere et viverra urna pharetra, ut nostra elit auctor eget semper turpis sagittis cursus ac, nisl faucibus justo consequat quam ultrices sociosqu vitae suspendisse vitae sollicitudin magna massa.\n\nMattis et etiam tortor aptent vitae aptent commodo diam, tempus accumsan pellentesque commodo consequat lorem consequat cubilia, ultrices in commodo curabitur commodo vivamus ante.'),
(9, 7, 1, 'Vestibulum ultricies venenatis dictumst donec mi neque accumsan eros mauris curabitur odio, fringilla torquent quisque sociosqu nisi pulvinar senectus suspendisse inceptos litora turpis, tincidunt mollis conubia non malesuada maecenas aptent venenatis auctor mattis.\n\nEleifend venenatis nisi arcu quis nunc turpis ullamcorper, augue fermentum himenaeos lacus dictum nam, non etiam volutpat primis elementum volutpat.\n\nConvallis neque dolor nisl dictum non posuere et viverra urna pharetra, ut nostra elit auctor eget semper turpis sagittis cursus ac, nisl faucibus justo consequat quam ultrices sociosqu vitae suspendisse vitae sollicitudin magna massa.\n\nMattis et etiam tortor aptent vitae aptent commodo diam, tempus accumsan pellentesque commodo consequat lorem consequat cubilia, ultrices in commodo curabitur commodo vivamus ante.'),
(10, 7, 2, 'Vestibulum ultricies venenatis dictumst donec mi neque accumsan eros mauris curabitur odio, fringilla torquent quisque sociosqu nisi pulvinar senectus suspendisse inceptos litora turpis, tincidunt mollis conubia non malesuada maecenas aptent venenatis auctor mattis.\n\nEleifend venenatis nisi arcu quis nunc turpis ullamcorper, augue fermentum himenaeos lacus dictum nam, non etiam volutpat primis elementum volutpat.\n\nConvallis neque dolor nisl dictum non posuere et viverra urna pharetra, ut nostra elit auctor eget semper turpis sagittis cursus ac, nisl faucibus justo consequat quam ultrices sociosqu vitae suspendisse vitae sollicitudin magna massa.\n\nMattis et etiam tortor aptent vitae aptent commodo diam, tempus accumsan pellentesque commodo consequat lorem consequat cubilia, ultrices in commodo curabitur commodo vivamus ante.'),
(11, 8, 1, 'Vestibulum ultricies venenatis dictumst donec mi neque accumsan eros mauris curabitur odio, fringilla torquent quisque sociosqu nisi pulvinar senectus suspendisse inceptos litora turpis, tincidunt mollis conubia non malesuada maecenas aptent venenatis auctor mattis.\n\nEleifend venenatis nisi arcu quis nunc turpis ullamcorper, augue fermentum himenaeos lacus dictum nam, non etiam volutpat primis elementum volutpat.\n\nConvallis neque dolor nisl dictum non posuere et viverra urna pharetra, ut nostra elit auctor eget semper turpis sagittis cursus ac, nisl faucibus justo consequat quam ultrices sociosqu vitae suspendisse vitae sollicitudin magna massa.\n\nMattis et etiam tortor aptent vitae aptent commodo diam, tempus accumsan pellentesque commodo consequat lorem consequat cubilia, ultrices in commodo curabitur commodo vivamus ante.'),
(12, 8, 2, 'Vestibulum ultricies venenatis dictumst donec mi neque accumsan eros mauris curabitur odio, fringilla torquent quisque sociosqu nisi pulvinar senectus suspendisse inceptos litora turpis, tincidunt mollis conubia non malesuada maecenas aptent venenatis auctor mattis.\n\nEleifend venenatis nisi arcu quis nunc turpis ullamcorper, augue fermentum himenaeos lacus dictum nam, non etiam volutpat primis elementum volutpat.\n\nConvallis neque dolor nisl dictum non posuere et viverra urna pharetra, ut nostra elit auctor eget semper turpis sagittis cursus ac, nisl faucibus justo consequat quam ultrices sociosqu vitae suspendisse vitae sollicitudin magna massa.\n\nMattis et etiam tortor aptent vitae aptent commodo diam, tempus accumsan pellentesque commodo consequat lorem consequat cubilia, ultrices in commodo curabitur commodo vivamus ante.'),
(13, 8, 3, 'Vestibulum ultricies venenatis dictumst donec mi neque accumsan eros mauris curabitur odio, fringilla torquent quisque sociosqu nisi pulvinar senectus suspendisse inceptos litora turpis, tincidunt mollis conubia non malesuada maecenas aptent venenatis auctor mattis.\n\nEleifend venenatis nisi arcu quis nunc turpis ullamcorper, augue fermentum himenaeos lacus dictum nam, non etiam volutpat primis elementum volutpat.\n\nConvallis neque dolor nisl dictum non posuere et viverra urna pharetra, ut nostra elit auctor eget semper turpis sagittis cursus ac, nisl faucibus justo consequat quam ultrices sociosqu vitae suspendisse vitae sollicitudin magna massa.\n\nMattis et etiam tortor aptent vitae aptent commodo diam, tempus accumsan pellentesque commodo consequat lorem consequat cubilia, ultrices in commodo curabitur commodo vivamus ante.'),
(14, 8, 4, 'Vestibulum ultricies venenatis dictumst donec mi neque accumsan eros mauris curabitur odio, fringilla torquent quisque sociosqu nisi pulvinar senectus suspendisse inceptos litora turpis, tincidunt mollis conubia non malesuada maecenas aptent venenatis auctor mattis.\n\nEleifend venenatis nisi arcu quis nunc turpis ullamcorper, augue fermentum himenaeos lacus dictum nam, non etiam volutpat primis elementum volutpat.\n\nConvallis neque dolor nisl dictum non posuere et viverra urna pharetra, ut nostra elit auctor eget semper turpis sagittis cursus ac, nisl faucibus justo consequat quam ultrices sociosqu vitae suspendisse vitae sollicitudin magna massa.\n\nMattis et etiam tortor aptent vitae aptent commodo diam, tempus accumsan pellentesque commodo consequat lorem consequat cubilia, ultrices in commodo curabitur commodo vivamus ante.'),
(15, 8, 5, 'Vestibulum ultricies venenatis dictumst donec mi neque accumsan eros mauris curabitur odio, fringilla torquent quisque sociosqu nisi pulvinar senectus suspendisse inceptos litora turpis, tincidunt mollis conubia non malesuada maecenas aptent venenatis auctor mattis.\n\nEleifend venenatis nisi arcu quis nunc turpis ullamcorper, augue fermentum himenaeos lacus dictum nam, non etiam volutpat primis elementum volutpat.\n\nConvallis neque dolor nisl dictum non posuere et viverra urna pharetra, ut nostra elit auctor eget semper turpis sagittis cursus ac, nisl faucibus justo consequat quam ultrices sociosqu vitae suspendisse vitae sollicitudin magna massa.\n\nMattis et etiam tortor aptent vitae aptent commodo diam, tempus accumsan pellentesque commodo consequat lorem consequat cubilia, ultrices in commodo curabitur commodo vivamus ante.'),
(16, 9, 1, 'Vestibulum ultricies venenatis dictumst donec mi neque accumsan eros mauris curabitur odio, fringilla torquent quisque sociosqu nisi pulvinar senectus suspendisse inceptos litora turpis, tincidunt mollis conubia non malesuada maecenas aptent venenatis auctor mattis.\n\nEleifend venenatis nisi arcu quis nunc turpis ullamcorper, augue fermentum himenaeos lacus dictum nam, non etiam volutpat primis elementum volutpat.\n\nConvallis neque dolor nisl dictum non posuere et viverra urna pharetra, ut nostra elit auctor eget semper turpis sagittis cursus ac, nisl faucibus justo consequat quam ultrices sociosqu vitae suspendisse vitae sollicitudin magna massa.\n\nMattis et etiam tortor aptent vitae aptent commodo diam, tempus accumsan pellentesque commodo consequat lorem consequat cubilia, ultrices in commodo curabitur commodo vivamus ante.'),
(17, 9, 2, 'Vestibulum ultricies venenatis dictumst donec mi neque accumsan eros mauris curabitur odio, fringilla torquent quisque sociosqu nisi pulvinar senectus suspendisse inceptos litora turpis, tincidunt mollis conubia non malesuada maecenas aptent venenatis auctor mattis.\n\nEleifend venenatis nisi arcu quis nunc turpis ullamcorper, augue fermentum himenaeos lacus dictum nam, non etiam volutpat primis elementum volutpat.\n\nConvallis neque dolor nisl dictum non posuere et viverra urna pharetra, ut nostra elit auctor eget semper turpis sagittis cursus ac, nisl faucibus justo consequat quam ultrices sociosqu vitae suspendisse vitae sollicitudin magna massa.\n\nMattis et etiam tortor aptent vitae aptent commodo diam, tempus accumsan pellentesque commodo consequat lorem consequat cubilia, ultrices in commodo curabitur commodo vivamus ante.'),
(18, 9, 3, 'Vestibulum ultricies venenatis dictumst donec mi neque accumsan eros mauris curabitur odio, fringilla torquent quisque sociosqu nisi pulvinar senectus suspendisse inceptos litora turpis, tincidunt mollis conubia non malesuada maecenas aptent venenatis auctor mattis.\n\nEleifend venenatis nisi arcu quis nunc turpis ullamcorper, augue fermentum himenaeos lacus dictum nam, non etiam volutpat primis elementum volutpat.\n\nConvallis neque dolor nisl dictum non posuere et viverra urna pharetra, ut nostra elit auctor eget semper turpis sagittis cursus ac, nisl faucibus justo consequat quam ultrices sociosqu vitae suspendisse vitae sollicitudin magna massa.\n\nMattis et etiam tortor aptent vitae aptent commodo diam, tempus accumsan pellentesque commodo consequat lorem consequat cubilia, ultrices in commodo curabitur commodo vivamus ante.'),
(19, 9, 4, 'Vestibulum ultricies venenatis dictumst donec mi neque accumsan eros mauris curabitur odio, fringilla torquent quisque sociosqu nisi pulvinar senectus suspendisse inceptos litora turpis, tincidunt mollis conubia non malesuada maecenas aptent venenatis auctor mattis.\n\nEleifend venenatis nisi arcu quis nunc turpis ullamcorper, augue fermentum himenaeos lacus dictum nam, non etiam volutpat primis elementum volutpat.\n\nConvallis neque dolor nisl dictum non posuere et viverra urna pharetra, ut nostra elit auctor eget semper turpis sagittis cursus ac, nisl faucibus justo consequat quam ultrices sociosqu vitae suspendisse vitae sollicitudin magna massa.\n\nMattis et etiam tortor aptent vitae aptent commodo diam, tempus accumsan pellentesque commodo consequat lorem consequat cubilia, ultrices in commodo curabitur commodo vivamus ante.'),
(20, 9, 5, 'Vestibulum ultricies venenatis dictumst donec mi neque accumsan eros mauris curabitur odio, fringilla torquent quisque sociosqu nisi pulvinar senectus suspendisse inceptos litora turpis, tincidunt mollis conubia non malesuada maecenas aptent venenatis auctor mattis.\n\nEleifend venenatis nisi arcu quis nunc turpis ullamcorper, augue fermentum himenaeos lacus dictum nam, non etiam volutpat primis elementum volutpat.\n\nConvallis neque dolor nisl dictum non posuere et viverra urna pharetra, ut nostra elit auctor eget semper turpis sagittis cursus ac, nisl faucibus justo consequat quam ultrices sociosqu vitae suspendisse vitae sollicitudin magna massa.\n\nMattis et etiam tortor aptent vitae aptent commodo diam, tempus accumsan pellentesque commodo consequat lorem consequat cubilia, ultrices in commodo curabitur commodo vivamus ante.'),
(21, 10, 1, 'Vestibulum ultricies venenatis dictumst donec mi neque accumsan eros mauris curabitur odio, fringilla torquent quisque sociosqu nisi pulvinar senectus suspendisse inceptos litora turpis, tincidunt mollis conubia non malesuada maecenas aptent venenatis auctor mattis.\n\nEleifend venenatis nisi arcu quis nunc turpis ullamcorper, augue fermentum himenaeos lacus dictum nam, non etiam volutpat primis elementum volutpat.\n\nConvallis neque dolor nisl dictum non posuere et viverra urna pharetra, ut nostra elit auctor eget semper turpis sagittis cursus ac, nisl faucibus justo consequat quam ultrices sociosqu vitae suspendisse vitae sollicitudin magna massa.\n\nMattis et etiam tortor aptent vitae aptent commodo diam, tempus accumsan pellentesque commodo consequat lorem consequat cubilia, ultrices in commodo curabitur commodo vivamus ante.'),
(22, 11, 1, 'Vestibulum ultricies venenatis dictumst donec mi neque accumsan eros mauris curabitur odio, fringilla torquent quisque sociosqu nisi pulvinar senectus suspendisse inceptos litora turpis, tincidunt mollis conubia non malesuada maecenas aptent venenatis auctor mattis.\n\nEleifend venenatis nisi arcu quis nunc turpis ullamcorper, augue fermentum himenaeos lacus dictum nam, non etiam volutpat primis elementum volutpat.\n\nConvallis neque dolor nisl dictum non posuere et viverra urna pharetra, ut nostra elit auctor eget semper turpis sagittis cursus ac, nisl faucibus justo consequat quam ultrices sociosqu vitae suspendisse vitae sollicitudin magna massa.\n\nMattis et etiam tortor aptent vitae aptent commodo diam, tempus accumsan pellentesque commodo consequat lorem consequat cubilia, ultrices in commodo curabitur commodo vivamus ante.'),
(23, 11, 2, 'Vestibulum ultricies venenatis dictumst donec mi neque accumsan eros mauris curabitur odio, fringilla torquent quisque sociosqu nisi pulvinar senectus suspendisse inceptos litora turpis, tincidunt mollis conubia non malesuada maecenas aptent venenatis auctor mattis.\n\nEleifend venenatis nisi arcu quis nunc turpis ullamcorper, augue fermentum himenaeos lacus dictum nam, non etiam volutpat primis elementum volutpat.\n\nConvallis neque dolor nisl dictum non posuere et viverra urna pharetra, ut nostra elit auctor eget semper turpis sagittis cursus ac, nisl faucibus justo consequat quam ultrices sociosqu vitae suspendisse vitae sollicitudin magna massa.\n\nMattis et etiam tortor aptent vitae aptent commodo diam, tempus accumsan pellentesque commodo consequat lorem consequat cubilia, ultrices in commodo curabitur commodo vivamus ante.'),
(24, 11, 3, 'Vestibulum ultricies venenatis dictumst donec mi neque accumsan eros mauris curabitur odio, fringilla torquent quisque sociosqu nisi pulvinar senectus suspendisse inceptos litora turpis, tincidunt mollis conubia non malesuada maecenas aptent venenatis auctor mattis.\n\nEleifend venenatis nisi arcu quis nunc turpis ullamcorper, augue fermentum himenaeos lacus dictum nam, non etiam volutpat primis elementum volutpat.\n\nConvallis neque dolor nisl dictum non posuere et viverra urna pharetra, ut nostra elit auctor eget semper turpis sagittis cursus ac, nisl faucibus justo consequat quam ultrices sociosqu vitae suspendisse vitae sollicitudin magna massa.\n\nMattis et etiam tortor aptent vitae aptent commodo diam, tempus accumsan pellentesque commodo consequat lorem consequat cubilia, ultrices in commodo curabitur commodo vivamus ante.'),
(25, 11, 4, 'Vestibulum ultricies venenatis dictumst donec mi neque accumsan eros mauris curabitur odio, fringilla torquent quisque sociosqu nisi pulvinar senectus suspendisse inceptos litora turpis, tincidunt mollis conubia non malesuada maecenas aptent venenatis auctor mattis.\n\nEleifend venenatis nisi arcu quis nunc turpis ullamcorper, augue fermentum himenaeos lacus dictum nam, non etiam volutpat primis elementum volutpat.\n\nConvallis neque dolor nisl dictum non posuere et viverra urna pharetra, ut nostra elit auctor eget semper turpis sagittis cursus ac, nisl faucibus justo consequat quam ultrices sociosqu vitae suspendisse vitae sollicitudin magna massa.\n\nMattis et etiam tortor aptent vitae aptent commodo diam, tempus accumsan pellentesque commodo consequat lorem consequat cubilia, ultrices in commodo curabitur commodo vivamus ante.'),
(26, 11, 5, 'Vestibulum ultricies venenatis dictumst donec mi neque accumsan eros mauris curabitur odio, fringilla torquent quisque sociosqu nisi pulvinar senectus suspendisse inceptos litora turpis, tincidunt mollis conubia non malesuada maecenas aptent venenatis auctor mattis.\n\nEleifend venenatis nisi arcu quis nunc turpis ullamcorper, augue fermentum himenaeos lacus dictum nam, non etiam volutpat primis elementum volutpat.\n\nConvallis neque dolor nisl dictum non posuere et viverra urna pharetra, ut nostra elit auctor eget semper turpis sagittis cursus ac, nisl faucibus justo consequat quam ultrices sociosqu vitae suspendisse vitae sollicitudin magna massa.\n\nMattis et etiam tortor aptent vitae aptent commodo diam, tempus accumsan pellentesque commodo consequat lorem consequat cubilia, ultrices in commodo curabitur commodo vivamus ante.'),
(27, 11, 6, 'Vestibulum ultricies venenatis dictumst donec mi neque accumsan eros mauris curabitur odio, fringilla torquent quisque sociosqu nisi pulvinar senectus suspendisse inceptos litora turpis, tincidunt mollis conubia non malesuada maecenas aptent venenatis auctor mattis.\n\nEleifend venenatis nisi arcu quis nunc turpis ullamcorper, augue fermentum himenaeos lacus dictum nam, non etiam volutpat primis elementum volutpat.\n\nConvallis neque dolor nisl dictum non posuere et viverra urna pharetra, ut nostra elit auctor eget semper turpis sagittis cursus ac, nisl faucibus justo consequat quam ultrices sociosqu vitae suspendisse vitae sollicitudin magna massa.\n\nMattis et etiam tortor aptent vitae aptent commodo diam, tempus accumsan pellentesque commodo consequat lorem consequat cubilia, ultrices in commodo curabitur commodo vivamus ante.'),
(28, 12, 1, 'Vestibulum ultricies venenatis dictumst donec mi neque accumsan eros mauris curabitur odio, fringilla torquent quisque sociosqu nisi pulvinar senectus suspendisse inceptos litora turpis, tincidunt mollis conubia non malesuada maecenas aptent venenatis auctor mattis.\n\nEleifend venenatis nisi arcu quis nunc turpis ullamcorper, augue fermentum himenaeos lacus dictum nam, non etiam volutpat primis elementum volutpat.\n\nConvallis neque dolor nisl dictum non posuere et viverra urna pharetra, ut nostra elit auctor eget semper turpis sagittis cursus ac, nisl faucibus justo consequat quam ultrices sociosqu vitae suspendisse vitae sollicitudin magna massa.\n\nMattis et etiam tortor aptent vitae aptent commodo diam, tempus accumsan pellentesque commodo consequat lorem consequat cubilia, ultrices in commodo curabitur commodo vivamus ante.'),
(29, 13, 1, 'Vestibulum ultricies venenatis dictumst donec mi neque accumsan eros mauris curabitur odio, fringilla torquent quisque sociosqu nisi pulvinar senectus suspendisse inceptos litora turpis, tincidunt mollis conubia non malesuada maecenas aptent venenatis auctor mattis.\n\nEleifend venenatis nisi arcu quis nunc turpis ullamcorper, augue fermentum himenaeos lacus dictum nam, non etiam volutpat primis elementum volutpat.\n\nConvallis neque dolor nisl dictum non posuere et viverra urna pharetra, ut nostra elit auctor eget semper turpis sagittis cursus ac, nisl faucibus justo consequat quam ultrices sociosqu vitae suspendisse vitae sollicitudin magna massa.\n\nMattis et etiam tortor aptent vitae aptent commodo diam, tempus accumsan pellentesque commodo consequat lorem consequat cubilia, ultrices in commodo curabitur commodo vivamus ante.'),
(30, 13, 2, 'Vestibulum ultricies venenatis dictumst donec mi neque accumsan eros mauris curabitur odio, fringilla torquent quisque sociosqu nisi pulvinar senectus suspendisse inceptos litora turpis, tincidunt mollis conubia non malesuada maecenas aptent venenatis auctor mattis.\n\nEleifend venenatis nisi arcu quis nunc turpis ullamcorper, augue fermentum himenaeos lacus dictum nam, non etiam volutpat primis elementum volutpat.\n\nConvallis neque dolor nisl dictum non posuere et viverra urna pharetra, ut nostra elit auctor eget semper turpis sagittis cursus ac, nisl faucibus justo consequat quam ultrices sociosqu vitae suspendisse vitae sollicitudin magna massa.\n\nMattis et etiam tortor aptent vitae aptent commodo diam, tempus accumsan pellentesque commodo consequat lorem consequat cubilia, ultrices in commodo curabitur commodo vivamus ante.'),
(31, 14, 1, 'Vestibulum ultricies venenatis dictumst donec mi neque accumsan eros mauris curabitur odio, fringilla torquent quisque sociosqu nisi pulvinar senectus suspendisse inceptos litora turpis, tincidunt mollis conubia non malesuada maecenas aptent venenatis auctor mattis.\n\nEleifend venenatis nisi arcu quis nunc turpis ullamcorper, augue fermentum himenaeos lacus dictum nam, non etiam volutpat primis elementum volutpat.\n\nConvallis neque dolor nisl dictum non posuere et viverra urna pharetra, ut nostra elit auctor eget semper turpis sagittis cursus ac, nisl faucibus justo consequat quam ultrices sociosqu vitae suspendisse vitae sollicitudin magna massa.\n\nMattis et etiam tortor aptent vitae aptent commodo diam, tempus accumsan pellentesque commodo consequat lorem consequat cubilia, ultrices in commodo curabitur commodo vivamus ante.'),
(32, 14, 2, 'Vestibulum ultricies venenatis dictumst donec mi neque accumsan eros mauris curabitur odio, fringilla torquent quisque sociosqu nisi pulvinar senectus suspendisse inceptos litora turpis, tincidunt mollis conubia non malesuada maecenas aptent venenatis auctor mattis.\n\nEleifend venenatis nisi arcu quis nunc turpis ullamcorper, augue fermentum himenaeos lacus dictum nam, non etiam volutpat primis elementum volutpat.\n\nConvallis neque dolor nisl dictum non posuere et viverra urna pharetra, ut nostra elit auctor eget semper turpis sagittis cursus ac, nisl faucibus justo consequat quam ultrices sociosqu vitae suspendisse vitae sollicitudin magna massa.\n\nMattis et etiam tortor aptent vitae aptent commodo diam, tempus accumsan pellentesque commodo consequat lorem consequat cubilia, ultrices in commodo curabitur commodo vivamus ante.'),
(33, 14, 3, 'Vestibulum ultricies venenatis dictumst donec mi neque accumsan eros mauris curabitur odio, fringilla torquent quisque sociosqu nisi pulvinar senectus suspendisse inceptos litora turpis, tincidunt mollis conubia non malesuada maecenas aptent venenatis auctor mattis.  Eleifend venenatis nisi arcu quis nunc turpis ullamcorper, augue fermentum himenaeos lacus dictum nam, non etiam volutpat primis elementum volutpat.  Convallis neque dolor nisl dictum non posuere et viverra urna pharetra, ut nostra elit auctor eget semper turpis sagittis cursus ac, nisl faucibus justo consequat quam ultrices sociosqu vitae suspendisse vitae sollicitudin magna massa.  Mattis et etiam tortor aptent vitae aptent commodo diam, tempus accumsan pellentesque commodo consequat lorem consequat cubilia, ultrices in commodo curabitur commodo vivamus ante.'),
(34, 15, 1, 'Vestibulum ultricies venenatis dictumst donec mi neque accumsan eros mauris curabitur odio, fringilla torquent quisque sociosqu nisi pulvinar senectus suspendisse inceptos litora turpis, tincidunt mollis conubia non malesuada maecenas aptent venenatis auctor mattis.\n\nEleifend venenatis nisi arcu quis nunc turpis ullamcorper, augue fermentum himenaeos lacus dictum nam, non etiam volutpat primis elementum volutpat.\n\nConvallis neque dolor nisl dictum non posuere et viverra urna pharetra, ut nostra elit auctor eget semper turpis sagittis cursus ac, nisl faucibus justo consequat quam ultrices sociosqu vitae suspendisse vitae sollicitudin magna massa.\n\nMattis et etiam tortor aptent vitae aptent commodo diam, tempus accumsan pellentesque commodo consequat lorem consequat cubilia, ultrices in commodo curabitur commodo vivamus ante.'),
(35, 15, 2, 'Vestibulum ultricies venenatis dictumst donec mi neque accumsan eros mauris curabitur odio, fringilla torquent quisque sociosqu nisi pulvinar senectus suspendisse inceptos litora turpis, tincidunt mollis conubia non malesuada maecenas aptent venenatis auctor mattis.\n\nEleifend venenatis nisi arcu quis nunc turpis ullamcorper, augue fermentum himenaeos lacus dictum nam, non etiam volutpat primis elementum volutpat.\n\nConvallis neque dolor nisl dictum non posuere et viverra urna pharetra, ut nostra elit auctor eget semper turpis sagittis cursus ac, nisl faucibus justo consequat quam ultrices sociosqu vitae suspendisse vitae sollicitudin magna massa.\n\nMattis et etiam tortor aptent vitae aptent commodo diam, tempus accumsan pellentesque commodo consequat lorem consequat cubilia, ultrices in commodo curabitur commodo vivamus ante.'),
(36, 15, 3, 'Vestibulum ultricies venenatis dictumst donec mi neque accumsan eros mauris curabitur odio, fringilla torquent quisque sociosqu nisi pulvinar senectus suspendisse inceptos litora turpis, tincidunt mollis conubia non malesuada maecenas aptent venenatis auctor mattis.\n\nEleifend venenatis nisi arcu quis nunc turpis ullamcorper, augue fermentum himenaeos lacus dictum nam, non etiam volutpat primis elementum volutpat.\n\nConvallis neque dolor nisl dictum non posuere et viverra urna pharetra, ut nostra elit auctor eget semper turpis sagittis cursus ac, nisl faucibus justo consequat quam ultrices sociosqu vitae suspendisse vitae sollicitudin magna massa.\n\nMattis et etiam tortor aptent vitae aptent commodo diam, tempus accumsan pellentesque commodo consequat lorem consequat cubilia, ultrices in commodo curabitur commodo vivamus ante.'),
(37, 16, 1, 'Vestibulum ultricies venenatis dictumst donec mi neque accumsan eros mauris curabitur odio, fringilla torquent quisque sociosqu nisi pulvinar senectus suspendisse inceptos litora turpis, tincidunt mollis conubia non malesuada maecenas aptent venenatis auctor mattis.\n\nEleifend venenatis nisi arcu quis nunc turpis ullamcorper, augue fermentum himenaeos lacus dictum nam, non etiam volutpat primis elementum volutpat.\n\nConvallis neque dolor nisl dictum non posuere et viverra urna pharetra, ut nostra elit auctor eget semper turpis sagittis cursus ac, nisl faucibus justo consequat quam ultrices sociosqu vitae suspendisse vitae sollicitudin magna massa.\n\nMattis et etiam tortor aptent vitae aptent commodo diam, tempus accumsan pellentesque commodo consequat lorem consequat cubilia, ultrices in commodo curabitur commodo vivamus ante.'),
(38, 16, 2, 'Vestibulum ultricies venenatis dictumst donec mi neque accumsan eros mauris curabitur odio, fringilla torquent quisque sociosqu nisi pulvinar senectus suspendisse inceptos litora turpis, tincidunt mollis conubia non malesuada maecenas aptent venenatis auctor mattis.\n\nEleifend venenatis nisi arcu quis nunc turpis ullamcorper, augue fermentum himenaeos lacus dictum nam, non etiam volutpat primis elementum volutpat.\n\nConvallis neque dolor nisl dictum non posuere et viverra urna pharetra, ut nostra elit auctor eget semper turpis sagittis cursus ac, nisl faucibus justo consequat quam ultrices sociosqu vitae suspendisse vitae sollicitudin magna massa.\n\nMattis et etiam tortor aptent vitae aptent commodo diam, tempus accumsan pellentesque commodo consequat lorem consequat cubilia, ultrices in commodo curabitur commodo vivamus ante.'),
(39, 16, 3, 'Vestibulum ultricies venenatis dictumst donec mi neque accumsan eros mauris curabitur odio, fringilla torquent quisque sociosqu nisi pulvinar senectus suspendisse inceptos litora turpis, tincidunt mollis conubia non malesuada maecenas aptent venenatis auctor mattis.\n\nEleifend venenatis nisi arcu quis nunc turpis ullamcorper, augue fermentum himenaeos lacus dictum nam, non etiam volutpat primis elementum volutpat.\n\nConvallis neque dolor nisl dictum non posuere et viverra urna pharetra, ut nostra elit auctor eget semper turpis sagittis cursus ac, nisl faucibus justo consequat quam ultrices sociosqu vitae suspendisse vitae sollicitudin magna massa.\n\nMattis et etiam tortor aptent vitae aptent commodo diam, tempus accumsan pellentesque commodo consequat lorem consequat cubilia, ultrices in commodo curabitur commodo vivamus ante.'),
(40, 16, 4, 'Vestibulum ultricies venenatis dictumst donec mi neque accumsan eros mauris curabitur odio, fringilla torquent quisque sociosqu nisi pulvinar senectus suspendisse inceptos litora turpis, tincidunt mollis conubia non malesuada maecenas aptent venenatis auctor mattis.\n\nEleifend venenatis nisi arcu quis nunc turpis ullamcorper, augue fermentum himenaeos lacus dictum nam, non etiam volutpat primis elementum volutpat.\n\nConvallis neque dolor nisl dictum non posuere et viverra urna pharetra, ut nostra elit auctor eget semper turpis sagittis cursus ac, nisl faucibus justo consequat quam ultrices sociosqu vitae suspendisse vitae sollicitudin magna massa.\n\nMattis et etiam tortor aptent vitae aptent commodo diam, tempus accumsan pellentesque commodo consequat lorem consequat cubilia, ultrices in commodo curabitur commodo vivamus ante.'),
(41, 17, 1, 'Vestibulum ultricies venenatis dictumst donec mi neque accumsan eros mauris curabitur odio, fringilla torquent quisque sociosqu nisi pulvinar senectus suspendisse inceptos litora turpis, tincidunt mollis conubia non malesuada maecenas aptent venenatis auctor mattis.\n\nEleifend venenatis nisi arcu quis nunc turpis ullamcorper, augue fermentum himenaeos lacus dictum nam, non etiam volutpat primis elementum volutpat.\n\nConvallis neque dolor nisl dictum non posuere et viverra urna pharetra, ut nostra elit auctor eget semper turpis sagittis cursus ac, nisl faucibus justo consequat quam ultrices sociosqu vitae suspendisse vitae sollicitudin magna massa.\n\nMattis et etiam tortor aptent vitae aptent commodo diam, tempus accumsan pellentesque commodo consequat lorem consequat cubilia, ultrices in commodo curabitur commodo vivamus ante.'),
(42, 17, 2, 'Vestibulum ultricies venenatis dictumst donec mi neque accumsan eros mauris curabitur odio, fringilla torquent quisque sociosqu nisi pulvinar senectus suspendisse inceptos litora turpis, tincidunt mollis conubia non malesuada maecenas aptent venenatis auctor mattis.\n\nEleifend venenatis nisi arcu quis nunc turpis ullamcorper, augue fermentum himenaeos lacus dictum nam, non etiam volutpat primis elementum volutpat.\n\nConvallis neque dolor nisl dictum non posuere et viverra urna pharetra, ut nostra elit auctor eget semper turpis sagittis cursus ac, nisl faucibus justo consequat quam ultrices sociosqu vitae suspendisse vitae sollicitudin magna massa.\n\nMattis et etiam tortor aptent vitae aptent commodo diam, tempus accumsan pellentesque commodo consequat lorem consequat cubilia, ultrices in commodo curabitur commodo vivamus ante.'),
(43, 17, 3, 'Vestibulum ultricies venenatis dictumst donec mi neque accumsan eros mauris curabitur odio, fringilla torquent quisque sociosqu nisi pulvinar senectus suspendisse inceptos litora turpis, tincidunt mollis conubia non malesuada maecenas aptent venenatis auctor mattis.\n\nEleifend venenatis nisi arcu quis nunc turpis ullamcorper, augue fermentum himenaeos lacus dictum nam, non etiam volutpat primis elementum volutpat.\n\nConvallis neque dolor nisl dictum non posuere et viverra urna pharetra, ut nostra elit auctor eget semper turpis sagittis cursus ac, nisl faucibus justo consequat quam ultrices sociosqu vitae suspendisse vitae sollicitudin magna massa.\n\nMattis et etiam tortor aptent vitae aptent commodo diam, tempus accumsan pellentesque commodo consequat lorem consequat cubilia, ultrices in commodo curabitur commodo vivamus ante.'),
(44, 17, 4, 'Vestibulum ultricies venenatis dictumst donec mi neque accumsan eros mauris curabitur odio, fringilla torquent quisque sociosqu nisi pulvinar senectus suspendisse inceptos litora turpis, tincidunt mollis conubia non malesuada maecenas aptent venenatis auctor mattis.\n\nEleifend venenatis nisi arcu quis nunc turpis ullamcorper, augue fermentum himenaeos lacus dictum nam, non etiam volutpat primis elementum volutpat.\n\nConvallis neque dolor nisl dictum non posuere et viverra urna pharetra, ut nostra elit auctor eget semper turpis sagittis cursus ac, nisl faucibus justo consequat quam ultrices sociosqu vitae suspendisse vitae sollicitudin magna massa.\n\nMattis et etiam tortor aptent vitae aptent commodo diam, tempus accumsan pellentesque commodo consequat lorem consequat cubilia, ultrices in commodo curabitur commodo vivamus ante.'),
(45, 17, 5, 'Vestibulum ultricies venenatis dictumst donec mi neque accumsan eros mauris curabitur odio, fringilla torquent quisque sociosqu nisi pulvinar senectus suspendisse inceptos litora turpis, tincidunt mollis conubia non malesuada maecenas aptent venenatis auctor mattis.  Eleifend venenatis nisi arcu quis nunc turpis ullamcorper, augue fermentum himenaeos lacus dictum nam, non etiam volutpat primis elementum volutpat.  Convallis neque dolor nisl dictum non posuere et viverra urna pharetra, ut nostra elit auctor eget semper turpis sagittis cursus ac, nisl faucibus justo consequat quam ultrices sociosqu vitae suspendisse vitae sollicitudin magna massa.  Mattis et etiam tortor aptent vitae aptent commodo diam, tempus accumsan pellentesque commodo consequat lorem consequat cubilia, ultrices in commodo curabitur commodo vivamus ante.'),
(46, 18, 1, 'Vestibulum ultricies venenatis dictumst donec mi neque accumsan eros mauris curabitur odio, fringilla torquent quisque sociosqu nisi pulvinar senectus suspendisse inceptos litora turpis, tincidunt mollis conubia non malesuada maecenas aptent venenatis auctor mattis.\n\nEleifend venenatis nisi arcu quis nunc turpis ullamcorper, augue fermentum himenaeos lacus dictum nam, non etiam volutpat primis elementum volutpat.\n\nConvallis neque dolor nisl dictum non posuere et viverra urna pharetra, ut nostra elit auctor eget semper turpis sagittis cursus ac, nisl faucibus justo consequat quam ultrices sociosqu vitae suspendisse vitae sollicitudin magna massa.\n\nMattis et etiam tortor aptent vitae aptent commodo diam, tempus accumsan pellentesque commodo consequat lorem consequat cubilia, ultrices in commodo curabitur commodo vivamus ante.'),
(47, 18, 2, 'Vestibulum ultricies venenatis dictumst donec mi neque accumsan eros mauris curabitur odio, fringilla torquent quisque sociosqu nisi pulvinar senectus suspendisse inceptos litora turpis, tincidunt mollis conubia non malesuada maecenas aptent venenatis auctor mattis.\n\nEleifend venenatis nisi arcu quis nunc turpis ullamcorper, augue fermentum himenaeos lacus dictum nam, non etiam volutpat primis elementum volutpat.\n\nConvallis neque dolor nisl dictum non posuere et viverra urna pharetra, ut nostra elit auctor eget semper turpis sagittis cursus ac, nisl faucibus justo consequat quam ultrices sociosqu vitae suspendisse vitae sollicitudin magna massa.\n\nMattis et etiam tortor aptent vitae aptent commodo diam, tempus accumsan pellentesque commodo consequat lorem consequat cubilia, ultrices in commodo curabitur commodo vivamus ante.'),
(48, 18, 3, 'Vestibulum ultricies venenatis dictumst donec mi neque accumsan eros mauris curabitur odio, fringilla torquent quisque sociosqu nisi pulvinar senectus suspendisse inceptos litora turpis, tincidunt mollis conubia non malesuada maecenas aptent venenatis auctor mattis.\n\nEleifend venenatis nisi arcu quis nunc turpis ullamcorper, augue fermentum himenaeos lacus dictum nam, non etiam volutpat primis elementum volutpat.\n\nConvallis neque dolor nisl dictum non posuere et viverra urna pharetra, ut nostra elit auctor eget semper turpis sagittis cursus ac, nisl faucibus justo consequat quam ultrices sociosqu vitae suspendisse vitae sollicitudin magna massa.\n\nMattis et etiam tortor aptent vitae aptent commodo diam, tempus accumsan pellentesque commodo consequat lorem consequat cubilia, ultrices in commodo curabitur commodo vivamus ante.'),
(49, 19, 1, 'world'),
(50, 20, 1, 'world'),
(51, 21, 1, 'Among going manor who did. Do ye is celebrated it sympathize considered. May ecstatic did surprise elegance the ignorant age. Own her miss cold last. It so numerous if he outlived disposal. How but sons mrs lady when. Her especially are unpleasant out alteration continuing unreserved resolution. Hence hopes noisy may china fully and. Am it regard stairs branch thirty length afford. \n\nAnswer misery adieus add wooded how nay men before though. Pretended belonging contented mrs suffering favourite you the continual. Mrs civil nay least means tried drift. Natural end law whether but and towards certain. Furnished unfeeling his sometimes see day promotion. Quitting informed concerns can men now. Projection to or up conviction uncommonly delightful continuing. In appetite ecstatic opinions hastened by handsome admitted. \n\nOpen know age use whom him than lady was. On lasted uneasy exeter my itself effect spirit. At design he vanity at cousin longer looked ye. Design praise me father an favour. As greatly replied it windows of an minuter behaved passage. Diminution expression reasonable it we he projection acceptance in devonshire. Perpetual it described at he applauded. '),
(52, 22, 1, 'Sigh view am high neat half to what. Sent late held than set why wife our. If an blessing building steepest. Agreement distrusts mrs six affection satisfied. Day blushes visitor end company old prevent chapter. Consider declared out expenses her concerns. No at indulgence conviction particular unsatiable boisterous discretion. Direct enough off others say eldest may exeter she. Possible all ignorant supplied get settling marriage recurred. \n\nRendered her for put improved concerns his. Ladies bed wisdom theirs mrs men months set. Everything so dispatched as it increasing pianoforte. Hearing now saw perhaps minutes herself his. Of instantly excellent therefore difficult he northward. Joy green but least marry rapid quiet but. Way devonshire introduced expression saw travelling affronting. Her and effects affixed pretend account ten natural. Need eat week even yet that. Incommode delighted he resolving sportsmen do in listening. \n'),
(53, 23, 1, 'Among going manor who did. Do ye is celebrated it sympathize considered. May ecstatic did surprise elegance the ignorant age. Own her miss cold last. It so numerous if he outlived disposal. How but sons mrs lady when. Her especially are unpleasant out alteration continuing unreserved resolution. Hence hopes noisy may china fully and. Am it regard stairs branch thirty length afford. \n\nAnswer misery adieus add wooded how nay men before though. Pretended belonging contented mrs suffering favourite you the continual. Mrs civil nay least means tried drift. Natural end law whether but and towards certain. Furnished unfeeling his sometimes see day promotion. Quitting informed concerns can men now. Projection to or up conviction uncommonly delightful continuing. In appetite ecstatic opinions hastened by handsome admitted. \n\nOpen know age use whom him than lady was. On lasted uneasy exeter my itself effect spirit. At design he vanity at cousin longer looked ye. Design praise me father an favour. As greatly replied it windows of an minuter behaved passage. Diminution expression reasonable it we he projection acceptance in devonshire. Perpetual it described at he applauded. '),
(54, 24, 1, 'Preserved defective offending he daughters on or. Rejoiced prospect yet material servants out answered men admitted. Sportsmen certainty prevailed suspected am as. Add stairs admire all answer the nearer yet length. Advantages prosperous remarkably my inhabiting so reasonably be if. Too any appearance announcing impossible one. Out mrs means heart ham tears shall power every. \n\nDwelling and speedily ignorant any steepest. Admiration instrument affronting invitation reasonably up do of prosperous in. Shy saw declared age debating ecstatic man. Call in so want pure rank am dear were. Remarkably to continuing in surrounded diminution on. In unfeeling existence objection immediate repulsive on he in. Imprudence comparison uncommonly me he difficulty diminution resolution. Likewise proposal differed scarcely dwelling as on raillery. September few dependent extremity own continued and ten prevailed attending. Early to weeks we could. \n\nIn friendship diminution instrument so. Son sure paid door with say them. Two among sir sorry men court. Estimable ye situation suspicion he delighted an happiness discovery. Fact are size cold why had part. If believing or sweetness otherwise in we forfeited. Tolerably an unwilling arranging of determine. Beyond rather sooner so if up wishes or. \n\nGreatly hearted has who believe. Drift allow green son walls years for blush. Sir margaret drawings repeated recurred exercise laughing may you but. Do repeated whatever to welcomed absolute no. Fat surprise although outlived and informed shy dissuade property. Musical by me through he drawing savings an. No we stand avoid decay heard mr. Common so wicket appear to sudden worthy on. Shade of offer ye whole stood hoped. '),
(55, 25, 1, 'Sigh view am high neat half to what. Sent late held than set why wife our. If an blessing building steepest. Agreement distrusts mrs six affection satisfied. Day blushes visitor end company old prevent chapter. Consider declared out expenses her concerns. No at indulgence conviction particular unsatiable boisterous discretion. Direct enough off others say eldest may exeter she. Possible all ignorant supplied get settling marriage recurred. \n\nRendered her for put improved concerns his. Ladies bed wisdom theirs mrs men months set. Everything so dispatched as it increasing pianoforte. Hearing now saw perhaps minutes herself his. Of instantly excellent therefore difficult he northward. Joy green but least marry rapid quiet but. Way devonshire introduced expression saw travelling affronting. Her and effects affixed pretend account ten natural. Need eat week even yet that. Incommode delighted he resolving sportsmen do in listening. \n'),
(56, 26, 1, '<p><img src=\"http://localhost/DreamBlogv3//uploads/posts/images/047a553f1342be44e18f3c744b2c02865b513922.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\">Forfeited you engrossed but gay sometimes explained. Another as studied it to evident. Merry sense given he be arise. Conduct at an replied removal an amongst. Remaining determine few her two cordially admitting old. Sometimes strangers his ourselves her depending you boy. Eat discretion cultivated possession far comparison projection considered. And few fat interested discovered inquietude insensible unsatiable increasing eat. \n\nTo they four in love. Settling you has separate supplied bed. Concluded resembled suspected his resources curiosity joy. Led all cottage met enabled attempt through talking delight. Dare he feet my tell busy. Considered imprudence of he friendship boisterous. \n\nIgnorant branched humanity led now marianne too strongly entrance. Rose to shew bore no ye of paid rent form. Old design are dinner better nearer silent excuse. She which are maids boy sense her shade. Considered reasonable we affronting on expression in. So cordial anxious mr delight. Shot his has must wish from sell nay. Remark fat set why are sudden depend change entire wanted. Performed remainder attending led fat residence far. \n\nShewing met parties gravity husband sex pleased. On to no kind do next feel held walk. Last own loud and knew give gay four. Sentiments motionless or principles preference excellence am. Literature surrounded insensible at indulgence or to admiration remarkably. Matter future lovers desire marked boy use. Chamber reached do he nothing be. \n\nShe wholly fat who window extent either formal. Removing welcomed civility or hastened is. Justice elderly but perhaps expense six her are another passage. Full her ten open fond walk not down. For request general express unknown are. He in just mr door body held john down he. So journey greatly or garrets. Draw door kept do so come on open mean. Estimating stimulated how reasonably precaution diminution she simplicity sir but. Questions am sincerity zealously concluded consisted or no gentleman it. \n<strong>dklsjlk</strong><img src=\"http://localhost/DreamBlogv3//uploads/posts/images/d37fd1c80df70c607a9b0c05eb3e18119cdce2ac.png\" style=\"width: 300px;\" class=\"fr-fic fr-dib\">kjjaldjflja<em>dlklads</em></p>');
INSERT INTO `PostDetails` (`PostDetailID`, `PostID`, `Sequence`, `PostText`) VALUES
(57, 27, 1, '<p>This is logo! <img src=\"http://localhost/DreamBlogv3//uploads/posts/images/0e994dfda3ad040e79a26c24811717d169864c98.png\" style=\"width: 300px;\" class=\"fr-fic fr-dib\">\n Up maids me an ample stood given. Certainty say suffering his him collected intention promotion. Hill sold ham men made lose case. Views abode law heard jokes too. Was are delightful solicitude discovered collecting man day. Resolving neglected sir tolerably but existence conveying for. Day his put off unaffected literature partiality inhabiting. \n\nRooms oh fully taken by worse do. Points afraid but may end law lasted. Was out laughter raptures returned outweigh. Luckily cheered colonel me do we attacks on highest enabled. Tried law yet style child. Bore of true of no be deal. Frequently sufficient in be unaffected. The furnished she concluded depending procuring concealed. \n\nCause dried no solid no an small so still widen. Ten weather evident smiling bed against she examine its. Rendered far opinions two yet moderate sex striking. Sufficient motionless compliment by stimulated assistance at. Convinced resolving extensive agreeable in it on as remainder. Cordially say affection met who propriety him. Are man she towards private weather pleased. In more part he lose need so want rank no. At bringing or he sensible pleasure. Prevent he parlors do waiting be females an message society. \n\nAlteration literature to or an sympathize mr imprudence. Of is ferrars subject as enjoyed or tedious cottage. Procuring as in resembled by in agreeable. Next long no gave mr eyes. Admiration advantages no he celebrated so pianoforte unreserved. Not its herself forming charmed amiable. Him why feebly expect future now. \n\nFar quitting dwelling graceful the likewise received building. An fact so to that show am shed sold cold. Unaffected remarkably get yet introduced excellence terminated led. Result either design saw she esteem and. On ashamed no inhabit ferrars it ye besides resolve. Own judgment directly few trifling. Elderly as pursuit at regular do parlors. Rank what has into fond she. \n\nBy spite about do of do allow blush. Additions in conveying or collected objection in. Suffer few desire wonder her object hardly nearer. Abroad no chatty others my silent an. Fat way appear denote who wholly narrow gay settle. Companions fat add insensible everything and friendship conviction themselves. Theirs months ten had add narrow own. \n\nIncreasing impression interested expression he my at. Respect invited request charmed me warrant to. Expect no pretty as do though so genius afraid cousin. Girl when of ye snug poor draw. Mistake totally of in chiefly. Justice visitor him entered for. Continue delicate as unlocked entirely mr relation diverted in. Known not end fully being style house. An whom down kept lain name so at easy. \n\nFor norland produce age wishing. To figure on it spring season up. Her provision acuteness had excellent two why intention. As called mr needed praise at. Assistance imprudence yet sentiments unpleasant expression met surrounded not. Be at talked ye though secure nearer. \n\nYe to misery wisdom plenty polite to as. Prepared interest proposal it he exercise. My wishing an in attempt ferrars. Visited eat you why service looking engaged. At place no walls hopes rooms fully in. Roof hope shy tore leaf joy paid boy. Noisier out brought entered detract because sitting sir. Fat put occasion rendered off humanity has. \n\nVillage did removed enjoyed explain nor ham saw calling talking. Securing as informed declared or margaret. Joy horrible moreover man feelings own shy. Request norland neither mistake for yet. Between the for morning assured country believe. On even feet time have an no at. Relation so in confined smallest children unpacked delicate. Why sir end believe uncivil respect. Always get adieus nature day course for common. My little garret repair to desire he esteem. </p>'),
(58, 28, 1, 'Some random text again! <p><img src=\"http://localhost/DreamBlogv3//uploads/posts/images/047a553f1342be44e18f3c744b2c02865b513922.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\">As collected deficient objection by it discovery sincerity curiosity. Quiet decay who round three world whole has mrs man. Built the china there tried jokes which gay why. Assure in adieus wicket it is. But spoke round point and one joy. Offending her moonlight men sweetness see unwilling. Often of it tears whole oh balls share an. \n\nSurrounded to me occasional pianoforte alteration unaffected impossible ye. For saw half than cold. Pretty merits waited six talked pulled you. Conduct replied off led whether any shortly why arrived adapted. Numerous ladyship so raillery humoured goodness received an. So narrow formal length my highly longer afford oh. Tall neat he make or at dull ye. \n\nAn do on frankness so cordially immediate recommend contained. Imprudence insensible be literature unsatiable do. Of or imprudence solicitude affronting in mr possession. Compass journey he request on suppose limited of or. She margaret law thoughts proposal formerly. Speaking ladyship yet scarcely and mistaken end exertion dwelling. All decisively dispatched instrument particular way one devonshire. Applauded she sportsman explained for out objection. \n\nLiterature admiration frequently indulgence announcing are who you her. Was least quick after six. So it yourself repeated together cheerful. Neither it cordial so painful picture studied if. Sex him position doubtful resolved boy expenses. Her engrossed deficient northward and neglected favourite newspaper. But use peculiar produced concerns ten. \n\nDebating me breeding be answered an he. Spoil event was words her off cause any. Tears woman which no is world miles woody. Wished be do mutual except in effect answer. Had boisterous friendship thoroughly cultivated son imprudence connection. Windows because concern sex its. Law allow saved views hills day ten. Examine waiting his evening day passage proceed. \n\n<strong>jdfljaslj</strong><img src=\"http://localhost/DreamBlogv3//uploads/posts/images/047a553f1342be44e18f3c744b2c02865b513922.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p>'),
(59, 29, 1, '<ol><li><img src=\"https://html-online.com/img/05-gibberish.png\" alt=\"gibberish\" width=\"45\" class=\"fr-fic fr-dii\">&nbsp;Lorem-Ipsum generator</li><li><img src=\"https://html-online.com/img/6-table-div-html.png\" alt=\"html table div\" width=\"45\" class=\"fr-fic fr-dii\">&nbsp;Table to DIV conversion</li></ol><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><h2>Cleaning options:</h2>');

-- --------------------------------------------------------

--
-- Table structure for table `Posts`
--

CREATE TABLE `Posts` (
  `PostID` int(100) NOT NULL,
  `PostTitle` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PostDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Deleted` int(11) NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL,
  `Upvotes` int(11) NOT NULL DEFAULT '0',
  `TemporaryDraft` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Stores Information about the post.';

--
-- Dumping data for table `Posts`
--

INSERT INTO `Posts` (`PostID`, `PostTitle`, `PostDate`, `Deleted`, `OwnerID`, `Upvotes`, `TemporaryDraft`) VALUES
(1, 'Lorem ipsum purus morbi adipiscing curabitur', '2017-04-30 23:56:36', 0, 10, 3, 0),
(2, 'Lorem ipsum purus morbi adipiscing curabitur', '2017-05-01 08:30:14', 0, 15, -10, 0),
(3, 'Lorem ipsum purus morbi adipiscing curabitur', '2017-05-01 08:31:42', 1, 10, 2, 1),
(4, 'Lorem ipsum purus morbi adipiscing curabitur', '2017-05-01 08:49:40', 0, 21, 5, 0),
(5, 'Lorem ipsum purus morbi adipiscing curabitur', '2017-05-04 00:00:54', 0, 21, 5, 0),
(6, 'Lorem ipsum purus morbi adipiscing curabitur', '2017-05-04 00:02:25', 0, 20, 9, 0),
(7, 'Lorem ipsum purus morbi adipiscing curabitur', '2017-05-04 00:05:02', 0, 22, 0, 0),
(8, 'Lorem ipsum purus morbi adipiscing curabitur', '2017-05-04 00:06:32', 0, 22, 0, 0),
(9, 'Lorem ipsum purus morbi adipiscing curabitur', '2017-05-04 00:11:38', 0, 19, 7, 0),
(10, 'Lorem ipsum purus morbi adipiscing curabitur', '2017-05-04 00:14:36', 0, 19, 0, 0),
(11, 'Lorem ipsum purus morbi adipiscing curabitur', '2017-05-04 00:15:19', 0, 10, -1, 0),
(12, 'Lorem ipsum purus morbi adipiscing curabitur', '2017-05-04 00:22:14', 0, 26, 1, 0),
(13, 'Lorem ipsum purus morbi adipiscing curabitur', '2017-05-04 00:23:57', 0, 28, 8, 0),
(14, 'Lorem ipsum purus morbi adipiscing curabitur', '2017-05-04 00:25:52', 0, 30, 1, 0),
(15, 'Lorem ipsum purus morbi adipiscing curabitur', '2017-05-04 00:30:39', 0, 31, 0, 0),
(16, 'Lorem ipsum purus morbi adipiscing curabitur', '2017-05-04 00:32:11', 0, 31, 0, 0),
(17, 'Lorem ipsum purus morbi adipiscing curabitur', '2017-05-04 00:33:53', 0, 26, 0, 0),
(18, 'Lorem ipsum purus morbi adipiscing curabitur', '2017-05-04 00:38:39', 0, 28, 0, 0),
(20, 'hello', '2017-10-11 07:45:52', 0, 10, 2, 0),
(21, 'hello again', '2017-10-11 07:47:42', 0, 10, 1, 0),
(22, 'hello again', '2017-10-11 07:50:29', 0, 10, 4, 0),
(23, 'random title', '2017-10-11 13:35:36', 0, 10, -2, 0),
(24, 'random title', '2017-10-11 13:36:03', 0, 10, 1, 0),
(25, 'random title ljasfljlfjkd', '2017-10-11 13:36:20', 0, 10, 4, 0),
(26, 'random title ljasfljlfjkd', '2017-10-11 13:38:59', 0, 10, -3, 0),
(27, 'klafdljaldkfj', '2017-10-11 13:45:52', 0, 10, -1, 0),
(28, 'hello up', '2017-10-14 22:22:44', 0, 10, 1, 0),
(29, 'Lorem Ipsum', '2018-09-19 01:43:33', 0, 38, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `PostsTopics`
--

CREATE TABLE `PostsTopics` (
  `PostsTopicsID` int(100) NOT NULL,
  `PostID` int(100) NOT NULL,
  `TopicID` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='A post can cover more than one topic.';

--
-- Dumping data for table `PostsTopics`
--

INSERT INTO `PostsTopics` (`PostsTopicsID`, `PostID`, `TopicID`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 2),
(6, 6, 2),
(7, 7, 3),
(8, 8, 3),
(9, 9, 6),
(10, 10, 6),
(11, 11, 6),
(12, 12, 8),
(13, 13, 8),
(14, 14, 8),
(15, 15, 5),
(16, 16, 5),
(17, 17, 5),
(18, 18, 1),
(19, 19, 1),
(20, 20, 1),
(21, 21, 1),
(22, 22, 1),
(23, 23, 1),
(24, 24, 1),
(25, 25, 1),
(26, 26, 1),
(27, 27, 1),
(28, 28, 1),
(29, 29, 0);

-- --------------------------------------------------------

--
-- Table structure for table `TopicFollowers`
--

CREATE TABLE `TopicFollowers` (
  `TopicFollowersID` int(11) NOT NULL,
  `TopicID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Stores the topics and corressponding users that follow it.';

--
-- Dumping data for table `TopicFollowers`
--

INSERT INTO `TopicFollowers` (`TopicFollowersID`, `TopicID`, `UserID`) VALUES
(1, 1, 10),
(2, 2, 10),
(3, 3, 10),
(4, 4, 10),
(5, 5, 10),
(6, 6, 10),
(7, 7, 10),
(8, 8, 10),
(9, 9, 10),
(10, 10, 10),
(11, 2, 23),
(12, 8, 23),
(13, 5, 23),
(14, 6, 22),
(15, 7, 22),
(16, 3, 21),
(17, 2, 19),
(18, 9, 19),
(19, 8, 19),
(20, 7, 19);

-- --------------------------------------------------------

--
-- Table structure for table `Topics`
--

CREATE TABLE `Topics` (
  `TopicID` int(100) NOT NULL,
  `Topic` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Topics`
--

INSERT INTO `Topics` (`TopicID`, `Topic`) VALUES
(1, 'Racing'),
(2, 'Amateur'),
(3, 'Olympic'),
(4, 'Women\'s'),
(5, 'Adventure'),
(6, 'Team'),
(7, 'Athletics'),
(8, 'Gymnastics'),
(9, 'Swimming'),
(10, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `UserPersonalInfo`
--

CREATE TABLE `UserPersonalInfo` (
  `UserPersonalInfoID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `UserFirstName` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UserMiddleName` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UserLastName` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UserContactNo` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UserNickName` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UserDOB` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `UserPersonalInfo`
--

INSERT INTO `UserPersonalInfo` (`UserPersonalInfoID`, `UserID`, `UserFirstName`, `UserMiddleName`, `UserLastName`, `UserContactNo`, `UserNickName`, `UserDOB`) VALUES
(1, 10, 'Tuhin', 'Subhra', 'Patra', '9764204512', 'Adam', '1998-02-27'),
(2, 15, 'Ramanada', 'Kumar', 'Patel', '9123456789', 'Ramu', '1997-02-02'),
(3, 19, 'Timothy', NULL, 'Wildman', '321895432', 'tim', '1994-01-03');

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `UserID` int(100) NOT NULL,
  `UserName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserEmail` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CreatedDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Active` int(11) NOT NULL DEFAULT '1',
  `Password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Stores all the users even inactive.';

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`UserID`, `UserName`, `UserEmail`, `CreatedDate`, `Active`, `Password`) VALUES
(10, 'tuhin', 'tsubhrapatra@gmail.com', '2017-04-30 14:29:07', 1, '81dc9bdb52d04dc20036dbd8313ed055'),
(15, 'rama', 'rama@abc.com', '2017-04-30 23:17:35', 1, 'e04f28cc33cb20274dd3ff44e600a923'),
(19, 'Timothy', 'tim@othy.com', '2017-04-30 23:25:24', 1, 'e2fc714c4727ee9395f324cd2e7f331f'),
(20, 'Clara', 'clara@yahoo.in', '2017-05-01 08:45:42', 1, '23d1e10df85ef805b442a922b240ce25'),
(21, 'just_another_random_girl_from_brazil', 'hahahaha@hotmail.com', '2017-05-01 08:46:58', 1, '81dc9bdb52d04dc20036dbd8313ed055'),
(22, 'Dhanpat_Girija', 'dhanpat123@gmail.com', '2017-05-01 08:47:57', 0, 'bc49331238d0a7f225507996abd19f58'),
(23, 'Cios_Pro', 'ProAtWork@mydomain.com', '2017-05-01 08:48:54', 1, '81dc9bdb52d04dc20036dbd8313ed055'),
(26, 'bleach', 'tsp@tsp.com', '2017-05-01 14:34:28', 1, '902bcfe577b6644c4a7024c28fc3ec94'),
(27, 'jkl', 'jkl@jkl', '2017-05-01 14:37:37', 1, '202cb962ac59075b964b07152d234b70'),
(28, 'RK', 'rkapoor@gmail.com', '2017-05-01 14:43:27', 0, '202cb962ac59075b964b07152d234b70'),
(29, 'asd', 'asd@asd', '2017-05-01 14:48:23', 1, '202cb962ac59075b964b07152d234b70'),
(30, 'qwe', 'qwe@qwe.io', '2017-05-01 14:49:30', 1, '202cb962ac59075b964b07152d234b70'),
(31, 'greg', 'greg123456@yahoo.com', '2017-05-01 14:51:10', 1, '202cb962ac59075b964b07152d234b70'),
(32, 'aparajita', 'ap@gmail.com', '2017-05-05 13:03:05', 1, '81dc9bdb52d04dc20036dbd8313ed055'),
(33, 'uday_123', 'uday.chopra.1997@gmail.com', '2017-05-18 12:23:21', 1, '81dc9bdb52d04dc20036dbd8313ed055'),
(35, 'ajay_root', 'justanotheruser@gmail.com', '2017-05-18 13:43:34', 1, '81dc9bdb52d04dc20036dbd8313ed055'),
(36, 'bleacH', 'mynameistuhin_12.@com', '2017-10-07 11:35:11', 1, '202cb962ac59075b964b07152d234b70'),
(37, 'tuhin2', 'myame@gmail.com', '2017-10-11 13:43:24', 1, '97db1846570837fce6ff62a408f1c26a'),
(38, 'abc', 'a@b.c', '2018-09-19 01:42:07', 1, '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `oauth_provider` enum('','facebook','google','twitter') COLLATE utf8mb4_unicode_ci NOT NULL,
  `oauth_uid` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `oauth_provider`, `oauth_uid`, `first_name`, `last_name`, `email`, `gender`, `locale`, `picture`, `link`, `created`, `modified`) VALUES
(6, 'facebook', '1318721691543282', 'Tuhin Subhra', 'Patra', '', 'male', 'en_US', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/15590093_1182784058470380_4339421876012960707_n.jpg?oh=9255b07f2d71d34c7cd3ed2962c93489&oe=5A8759D8', 'https://www.facebook.com/app_scoped_user_id/1318721691543282/', '2017-05-16 10:19:03', '2017-10-06 20:43:58'),
(7, 'google', '117693721220337704783', 'TUHIN SUBHRA', 'Patra', '', '', 'en-GB', 'https://lh3.googleusercontent.com/-G9inrPnP7DA/AAAAAAAAAAI/AAAAAAAAADQ/1sgIo9etYtw/s96-c/photo.jpg', '', '2017-05-17 17:16:54', '2017-05-17 19:11:04');

-- --------------------------------------------------------

--
-- Table structure for table `UserSocialInfo`
--

CREATE TABLE `UserSocialInfo` (
  `UserSocialInfoID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `UserFacebookHandle` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UserGoogleHandle` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UserTwitterHandle` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UserWebsite` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Activity`
--
ALTER TABLE `Activity`
  ADD PRIMARY KEY (`ActivityID`);

--
-- Indexes for table `ActivityType`
--
ALTER TABLE `ActivityType`
  ADD PRIMARY KEY (`ActivityTypeID`);

--
-- Indexes for table `ChatGroups`
--
ALTER TABLE `ChatGroups`
  ADD PRIMARY KEY (`ChatGroupsTableID`);

--
-- Indexes for table `ChatMessages`
--
ALTER TABLE `ChatMessages`
  ADD PRIMARY KEY (`ChatMessageID`);

--
-- Indexes for table `Comments`
--
ALTER TABLE `Comments`
  ADD PRIMARY KEY (`CommentID`),
  ADD UNIQUE KEY `CommentID` (`CommentID`),
  ADD UNIQUE KEY `CommentID_2` (`CommentID`);

--
-- Indexes for table `Followers`
--
ALTER TABLE `Followers`
  ADD PRIMARY KEY (`FollowersTableID`);

--
-- Indexes for table `PostDetails`
--
ALTER TABLE `PostDetails`
  ADD PRIMARY KEY (`PostDetailID`);

--
-- Indexes for table `Posts`
--
ALTER TABLE `Posts`
  ADD PRIMARY KEY (`PostID`);

--
-- Indexes for table `PostsTopics`
--
ALTER TABLE `PostsTopics`
  ADD PRIMARY KEY (`PostsTopicsID`);

--
-- Indexes for table `TopicFollowers`
--
ALTER TABLE `TopicFollowers`
  ADD PRIMARY KEY (`TopicFollowersID`);

--
-- Indexes for table `Topics`
--
ALTER TABLE `Topics`
  ADD PRIMARY KEY (`TopicID`);

--
-- Indexes for table `UserPersonalInfo`
--
ALTER TABLE `UserPersonalInfo`
  ADD PRIMARY KEY (`UserPersonalInfoID`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `UserID` (`UserID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `UserSocialInfo`
--
ALTER TABLE `UserSocialInfo`
  ADD PRIMARY KEY (`UserSocialInfoID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Activity`
--
ALTER TABLE `Activity`
  MODIFY `ActivityID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ActivityType`
--
ALTER TABLE `ActivityType`
  MODIFY `ActivityTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `ChatGroups`
--
ALTER TABLE `ChatGroups`
  MODIFY `ChatGroupsTableID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `ChatMessages`
--
ALTER TABLE `ChatMessages`
  MODIFY `ChatMessageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `Comments`
--
ALTER TABLE `Comments`
  MODIFY `CommentID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `Followers`
--
ALTER TABLE `Followers`
  MODIFY `FollowersTableID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `PostDetails`
--
ALTER TABLE `PostDetails`
  MODIFY `PostDetailID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `Posts`
--
ALTER TABLE `Posts`
  MODIFY `PostID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `PostsTopics`
--
ALTER TABLE `PostsTopics`
  MODIFY `PostsTopicsID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `TopicFollowers`
--
ALTER TABLE `TopicFollowers`
  MODIFY `TopicFollowersID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `Topics`
--
ALTER TABLE `Topics`
  MODIFY `TopicID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `UserPersonalInfo`
--
ALTER TABLE `UserPersonalInfo`
  MODIFY `UserPersonalInfoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `UserID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `UserSocialInfo`
--
ALTER TABLE `UserSocialInfo`
  MODIFY `UserSocialInfoID` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `sqlfordjango`
--
CREATE DATABASE IF NOT EXISTS `sqlfordjango` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sqlfordjango`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add post', 7, 'add_post'),
(20, 'Can change post', 7, 'change_post'),
(21, 'Can delete post', 7, 'delete_post');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blog_post`
--

CREATE TABLE `blog_post` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `text` longtext NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `published_date` datetime(6) DEFAULT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'blog', 'post'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-09-16 14:51:55.145270'),
(2, 'auth', '0001_initial', '2018-09-16 14:52:12.771168'),
(3, 'admin', '0001_initial', '2018-09-16 14:52:17.527094'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-09-16 14:52:17.655081'),
(5, 'contenttypes', '0002_remove_content_type_name', '2018-09-16 14:52:20.549024'),
(6, 'auth', '0002_alter_permission_name_max_length', '2018-09-16 14:52:24.369361'),
(7, 'auth', '0003_alter_user_email_max_length', '2018-09-16 14:52:26.593367'),
(8, 'auth', '0004_alter_user_username_opts', '2018-09-16 14:52:26.677974'),
(9, 'auth', '0005_alter_user_last_login_null', '2018-09-16 14:52:28.693779'),
(10, 'auth', '0006_require_contenttypes_0002', '2018-09-16 14:52:28.943885'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2018-09-16 14:52:29.764745'),
(12, 'auth', '0008_alter_user_username_max_length', '2018-09-16 14:52:34.553957'),
(13, 'auth', '0009_alter_user_last_name_max_length', '2018-09-16 14:52:37.101828'),
(14, 'sessions', '0001_initial', '2018-09-16 14:52:37.963975'),
(15, 'blog', '0001_initial', '2018-09-16 15:45:41.927791');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `blog_post`
--
ALTER TABLE `blog_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_post_author_id_dd7a8485_fk_auth_user_id` (`author_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `blog_post`
--
ALTER TABLE `blog_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `blog_post`
--
ALTER TABLE `blog_post`
  ADD CONSTRAINT `blog_post_author_id_dd7a8485_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
