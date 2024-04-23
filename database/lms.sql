-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2024 at 09:46 PM
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
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `course_id` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(255) DEFAULT NULL COMMENT '1->attended',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `user_id`, `user_type`, `duration`, `course_id`, `date`, `status`, `created_at`, `updated_at`) VALUES
(8, '14', '1', '4', '8', '2023-11-24 00:00:00', '1', '2023-11-23 19:38:49', '2023-11-23 19:38:49'),
(9, '14', '1', '3', '4', '2023-11-24 00:00:00', '1', '2023-11-23 19:39:20', '2023-11-23 19:39:20'),
(10, '8', '2', '3', '4', '2023-11-24 00:00:00', '1', '2023-11-23 19:40:01', '2023-11-23 19:40:01'),
(11, '10', '2', '1', '7', '2023-11-24 00:00:00', '1', '2023-11-23 19:52:07', '2023-11-23 19:52:07'),
(12, '10', '2', '4', '8', '2023-11-24 00:00:00', '1', '2023-11-23 19:52:34', '2023-11-23 19:52:34');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `description` longtext NOT NULL,
  `status` text NOT NULL DEFAULT '1',
  `image` varchar(255) DEFAULT 'dummy.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `subtitle`, `description`, `status`, `image`, `created_at`, `updated_at`) VALUES
(4, 'SSC Exam Routine 2023 — Bangladesh', 'SSC Exam Routine 2023 — Bangladesh', '<p><span style=\"color: rgb(36, 36, 36); font-family: source-serif-pro, Georgia, Cambria, \"Times New Roman\", Times, serif; font-size: 20px; letter-spacing: -0.06px;\">SSC Exam Routine 2023. SSC Exam 2023 Routine pdf download. Dhaka Board SSC Routine 2023. SSC Exam date 2023 Bangladesh. SSC Marks Distribution. Download SSC Routine and short syllabus Bangladesh education Board pdf file. Dhaka Board SSC exam form fill up notice published. SSC Exam will be started on 30th April, 2023. Secondary School Certificate Exam date schedule 2023 has published. Dhaka Board, Chittagong Board, Jessore Board SSC Routine 2023. Exam will be started on April 30, 2023 and Theory exam will be completed on 23rd May 2023. SSC Vocational Exam Routine has published under Bangladesh Technical Education Board.</span><br></p>', '1', '1700765540.png', '2023-11-23 18:50:15', '2023-11-23 18:52:20');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `order` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`, `image`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'HSC', 'HSC', '01.jpg', 1, 1, NULL, '2023-08-25 19:50:42'),
(2, 'SSC', 'SSC', '02.jpg', 2, 1, NULL, '2023-08-25 19:00:45');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` varchar(255) NOT NULL,
  `sender_role` varchar(255) NOT NULL,
  `course_id` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `sender_id`, `sender_role`, `course_id`, `text`, `created_at`, `updated_at`) VALUES
(1, '2', '1', '1', 'Hello there!!!', '2023-08-20 17:33:06', '2023-08-20 17:33:06'),
(2, '3', '2', '1', 'hi Arman how are u??', '2023-08-20 17:37:47', '2023-08-20 17:37:47'),
(3, '5', '1', '1', 'Hi sir', '2023-08-20 17:40:52', '2023-08-20 17:40:52'),
(4, '2', '1', '1', 'ICT class', '2023-08-20 17:42:16', '2023-08-20 17:42:16'),
(5, '2', '1', '2', 'hellooooooooo', '2023-08-20 18:23:29', '2023-08-20 18:23:29'),
(6, '3', '2', '2', 'hmmmmmmmmmmmm', '2023-08-23 12:58:30', '2023-08-23 12:58:30'),
(7, '2', '1', '2', 'hi arman sir', '2023-08-23 13:39:06', '2023-08-23 13:39:06'),
(8, '1', '0', '1', 'hello students', '2023-08-24 16:34:40', '2023-08-24 16:34:40'),
(9, '1', '0', '2', 'hello students', '2023-08-24 16:35:11', '2023-08-24 16:35:11'),
(10, '14', '1', '4', 'Hello i am a student', '2023-11-23 19:26:59', '2023-11-23 19:26:59'),
(11, '1', '0', '4', 'Hello I am admin.', '2023-11-23 19:28:35', '2023-11-23 19:28:35'),
(12, '8', '2', '4', 'Hello I am teacher', '2023-11-23 19:29:28', '2023-11-23 19:29:28');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `blog_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `user_name`, `text`, `blog_id`, `created_at`, `updated_at`) VALUES
(4, '2', 'arman', 'Thank You', '4', '2023-11-23 18:56:00', '2023-11-23 18:56:00');

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `website_name` varchar(255) NOT NULL,
  `website_description` text NOT NULL,
  `website_logo` varchar(255) NOT NULL,
  `website_favicon` varchar(255) NOT NULL,
  `website_email` varchar(255) NOT NULL,
  `website_phone` int(11) NOT NULL,
  `website_address` varchar(255) NOT NULL,
  `about_content` longtext NOT NULL,
  `about_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `website_name`, `website_description`, `website_logo`, `website_favicon`, `website_email`, `website_phone`, `website_address`, `about_content`, `about_image`, `created_at`, `updated_at`) VALUES
(1, 'Lekha Pora', 'A Learning Alternate', 'logo.png', 'logo.png', 'info@lekhapora.com', 1643675060, 'House: 2 Dhaka-121', 'Lekhapora is a Learning Management System (LMS) designed to provide an efficient and engaging online learning experience. It is a platform that allows teachers and students to connect, collaborate, and learn from anywhere, anytime. With Lekhapora, students can access a wide range of educational resources, participate in discussions, and complete assignments. Teachers can create and manage courses, deliver lectures, and evaluate student performance. Lekhapora is a comprehensive tool that simplifies the process of teaching and learning, making education accessible to all.', '1680173512.png', '2023-08-17 04:08:58', '2023-08-17 04:08:58');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `class_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `creator_id` bigint(20) UNSIGNED NOT NULL,
  `meeting_link` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 2,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `price`, `description`, `class_id`, `subject_id`, `creator_id`, `meeting_link`, `duration`, `image`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Physics For SSC', '200', '<p><span style=\"box-sizing: inherit; outline: none; font-size: 14px; font-weight: 600; margin-bottom: 5px; display: inline-block; color: rgb(72, 80, 103); font-family: &quot;Noto Sans Bengali&quot;, &quot;Noto Sans Bengali&quot;, Poppins, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">কোর্সের বৈশিষ্ট্যসমূহ</span><span style=\"color: rgb(40, 40, 40); font-family: &quot;Noto Sans Bengali&quot;, &quot;Noto Sans Bengali&quot;, Poppins, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"></span></p><ul style=\"box-sizing: inherit; outline: none; margin: 0px; padding: 0px; list-style: none; color: rgb(40, 40, 40); font-family: &quot;Noto Sans Bengali&quot;, &quot;Noto Sans Bengali&quot;, Poppins, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><li style=\"box-sizing: inherit; outline: none; margin-bottom: 10px; font-size: 14px; position: relative; padding-left: 22px;\"><i class=\"ti-angle-right\" style=\"box-sizing: inherit; outline: none; font-family: themify; speak: none; font-style: normal; font-weight: 400; font-variant: normal; text-transform: none; line-height: 1; -webkit-font-smoothing: antialiased; width: 15px; height: 15px; background: rgba(0, 150, 136, 0.1); border-radius: 50%; position: absolute; left: 0px; top: 1px; font-size: 5px; display: flex; align-items: center; justify-content: center; color: rgb(0, 150, 136);\"></i>এই কোর্সে থাকছে পদার্থবিজ্ঞান এর প্রতিটি চ্যাপ্টার এর ভিডিও লেসন ও ক্লাসনোট।</li><li style=\"box-sizing: inherit; outline: none; margin-bottom: 10px; font-size: 14px; position: relative; padding-left: 22px;\"><i class=\"ti-angle-right\" style=\"box-sizing: inherit; outline: none; font-family: themify; speak: none; font-style: normal; font-weight: 400; font-variant: normal; text-transform: none; line-height: 1; -webkit-font-smoothing: antialiased; width: 15px; height: 15px; background: rgba(0, 150, 136, 0.1); border-radius: 50%; position: absolute; left: 0px; top: 1px; font-size: 5px; display: flex; align-items: center; justify-content: center; color: rgb(0, 150, 136);\"></i>প্রতিটি লেসন শেষে প্র্যাকটিস এক্সাম।</li><li style=\"box-sizing: inherit; outline: none; margin-bottom: 10px; font-size: 14px; position: relative; padding-left: 22px;\"><i class=\"ti-angle-right\" style=\"box-sizing: inherit; outline: none; font-family: themify; speak: none; font-style: normal; font-weight: 400; font-variant: normal; text-transform: none; line-height: 1; -webkit-font-smoothing: antialiased; width: 15px; height: 15px; background: rgba(0, 150, 136, 0.1); border-radius: 50%; position: absolute; left: 0px; top: 1px; font-size: 5px; display: flex; align-items: center; justify-content: center; color: rgb(0, 150, 136);\"></i>কোর্সের পরিকল্পনা এবং পরিচালনায় আছেন দেড় যুগের বেশি অভিজ্ঞতা সম্পন্ন শিক্ষকবৃন্দ যারা তাদের অভিজ্ঞতার সবটুকু দিয়ে এমনভাবে কোর্সগুলো সাজাতে চেষ্টা করেছেন যাতে শিক্ষার্থীরা প্রতিটি বিষয় সহজেই বুঝতে পারে।</li><li style=\"box-sizing: inherit; outline: none; margin-bottom: 10px; font-size: 14px; position: relative; padding-left: 22px;\"><i class=\"ti-angle-right\" style=\"box-sizing: inherit; outline: none; font-family: themify; speak: none; font-style: normal; font-weight: 400; font-variant: normal; text-transform: none; line-height: 1; -webkit-font-smoothing: antialiased; width: 15px; height: 15px; background: rgba(0, 150, 136, 0.1); border-radius: 50%; position: absolute; left: 0px; top: 1px; font-size: 5px; display: flex; align-items: center; justify-content: center; color: rgb(0, 150, 136);\"></i>মেডিকেল এবং ঢাকা ইউনিভার্সিটি এর মত শিক্ষা প্রতিষ্ঠানের মেধাবী ও অভিজ্ঞ শিক্ষার্থীরা ক্লাসগুলো নিয়েছেন যাদের হাত ধরে ইতিমধ্যেই বহু শিক্ষার্থী অর্জন করেছে সফলতা, পৌঁছেছে তাদের অভীষ্ট লক্ষ্যে।</li><li style=\"box-sizing: inherit; outline: none; margin-bottom: 10px; font-size: 14px; position: relative; padding-left: 22px;\"><i class=\"ti-angle-right\" style=\"box-sizing: inherit; outline: none; font-family: themify; speak: none; font-style: normal; font-weight: 400; font-variant: normal; text-transform: none; line-height: 1; -webkit-font-smoothing: antialiased; width: 15px; height: 15px; background: rgba(0, 150, 136, 0.1); border-radius: 50%; position: absolute; left: 0px; top: 1px; font-size: 5px; display: flex; align-items: center; justify-content: center; color: rgb(0, 150, 136);\"></i>প্রতিটি কোর্সে শিক্ষার্থীদের জন্য রয়েছে চূড়ান্ত পরীক্ষায় ভালো করার সঠিক দিকনির্দেশনা।</li></ul>', 2, 7, 8, NULL, '4', '1700748889.png', 1, '2023-11-23 14:14:50', '2023-11-23 14:15:21'),
(4, 'Physics For HSC', '250', '<p><span style=\"box-sizing: inherit; outline: none; font-size: 14px; font-weight: 600; margin-bottom: 5px; display: inline-block; color: rgb(72, 80, 103); font-family: &quot;Noto Sans Bengali&quot;, &quot;Noto Sans Bengali&quot;, Poppins, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">কোর্সের বৈশিষ্ট্যসমূহ</span><span style=\"color: rgb(40, 40, 40); font-family: &quot;Noto Sans Bengali&quot;, &quot;Noto Sans Bengali&quot;, Poppins, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"></span></p><ul style=\"box-sizing: inherit; outline: none; margin: 0px; padding: 0px; list-style: none; color: rgb(40, 40, 40); font-family: &quot;Noto Sans Bengali&quot;, &quot;Noto Sans Bengali&quot;, Poppins, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><li style=\"box-sizing: inherit; outline: none; margin-bottom: 10px; font-size: 14px; position: relative; padding-left: 22px;\"><i class=\"ti-angle-right\" style=\"box-sizing: inherit; outline: none; font-family: themify; speak: none; font-style: normal; font-weight: 400; font-variant: normal; text-transform: none; line-height: 1; -webkit-font-smoothing: antialiased; width: 15px; height: 15px; background: rgba(0, 150, 136, 0.1); border-radius: 50%; position: absolute; left: 0px; top: 1px; font-size: 5px; display: flex; align-items: center; justify-content: center; color: rgb(0, 150, 136);\"></i>এই কোর্সে থাকছে পদার্থবিজ্ঞান এর প্রতিটি চ্যাপ্টার এর ভিডিও লেসন ও ক্লাসনোট।</li><li style=\"box-sizing: inherit; outline: none; margin-bottom: 10px; font-size: 14px; position: relative; padding-left: 22px;\"><i class=\"ti-angle-right\" style=\"box-sizing: inherit; outline: none; font-family: themify; speak: none; font-style: normal; font-weight: 400; font-variant: normal; text-transform: none; line-height: 1; -webkit-font-smoothing: antialiased; width: 15px; height: 15px; background: rgba(0, 150, 136, 0.1); border-radius: 50%; position: absolute; left: 0px; top: 1px; font-size: 5px; display: flex; align-items: center; justify-content: center; color: rgb(0, 150, 136);\"></i>প্রতিটি লেসন শেষে প্র্যাকটিস এক্সাম।</li><li style=\"box-sizing: inherit; outline: none; margin-bottom: 10px; font-size: 14px; position: relative; padding-left: 22px;\"><i class=\"ti-angle-right\" style=\"box-sizing: inherit; outline: none; font-family: themify; speak: none; font-style: normal; font-weight: 400; font-variant: normal; text-transform: none; line-height: 1; -webkit-font-smoothing: antialiased; width: 15px; height: 15px; background: rgba(0, 150, 136, 0.1); border-radius: 50%; position: absolute; left: 0px; top: 1px; font-size: 5px; display: flex; align-items: center; justify-content: center; color: rgb(0, 150, 136);\"></i>কোর্সের পরিকল্পনা এবং পরিচালনায় আছেন দেড় যুগের বেশি অভিজ্ঞতা সম্পন্ন শিক্ষকবৃন্দ যারা তাদের অভিজ্ঞতার সবটুকু দিয়ে এমনভাবে কোর্সগুলো সাজাতে চেষ্টা করেছেন যাতে শিক্ষার্থীরা প্রতিটি বিষয় সহজেই বুঝতে পারে।</li><li style=\"box-sizing: inherit; outline: none; margin-bottom: 10px; font-size: 14px; position: relative; padding-left: 22px;\"><i class=\"ti-angle-right\" style=\"box-sizing: inherit; outline: none; font-family: themify; speak: none; font-style: normal; font-weight: 400; font-variant: normal; text-transform: none; line-height: 1; -webkit-font-smoothing: antialiased; width: 15px; height: 15px; background: rgba(0, 150, 136, 0.1); border-radius: 50%; position: absolute; left: 0px; top: 1px; font-size: 5px; display: flex; align-items: center; justify-content: center; color: rgb(0, 150, 136);\"></i>মেডিকেল এবং ঢাকা ইউনিভার্সিটি এর মত শিক্ষা প্রতিষ্ঠানের মেধাবী ও অভিজ্ঞ শিক্ষার্থীরা ক্লাসগুলো নিয়েছেন যাদের হাত ধরে ইতিমধ্যেই বহু শিক্ষার্থী অর্জন করেছে সফলতা, পৌঁছেছে তাদের অভীষ্ট লক্ষ্যে।</li><li style=\"box-sizing: inherit; outline: none; margin-bottom: 10px; font-size: 14px; position: relative; padding-left: 22px;\"><i class=\"ti-angle-right\" style=\"box-sizing: inherit; outline: none; font-family: themify; speak: none; font-style: normal; font-weight: 400; font-variant: normal; text-transform: none; line-height: 1; -webkit-font-smoothing: antialiased; width: 15px; height: 15px; background: rgba(0, 150, 136, 0.1); border-radius: 50%; position: absolute; left: 0px; top: 1px; font-size: 5px; display: flex; align-items: center; justify-content: center; color: rgb(0, 150, 136);\"></i>প্রতিটি কোর্সে শিক্ষার্থীদের জন্য রয়েছে চূড়ান্ত পরীক্ষায় ভালো করার সঠিক দিকনির্দেশনা।</li></ul>', 1, 7, 8, NULL, '3', '1700749288.jpg', 1, '2023-11-23 14:21:28', '2023-11-23 14:22:57'),
(5, 'Math For SSC', '150', '<p><span style=\"box-sizing: inherit; outline: none; font-size: 14px; font-weight: 600; margin-bottom: 5px; display: inline-block; color: rgb(72, 80, 103); font-family: &quot;Noto Sans Bengali&quot;, &quot;Noto Sans Bengali&quot;, Poppins, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">কোর্সের বৈশিষ্ট্যসমূহ</span><span style=\"color: rgb(40, 40, 40); font-family: &quot;Noto Sans Bengali&quot;, &quot;Noto Sans Bengali&quot;, Poppins, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"></span></p><ul style=\"box-sizing: inherit; outline: none; margin: 0px; padding: 0px; list-style: none; color: rgb(40, 40, 40); font-family: &quot;Noto Sans Bengali&quot;, &quot;Noto Sans Bengali&quot;, Poppins, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><li style=\"box-sizing: inherit; outline: none; margin-bottom: 10px; font-size: 14px; position: relative; padding-left: 22px;\"><i class=\"ti-angle-right\" style=\"box-sizing: inherit; outline: none; font-family: themify; speak: none; font-style: normal; font-weight: 400; font-variant: normal; text-transform: none; line-height: 1; -webkit-font-smoothing: antialiased; width: 15px; height: 15px; background: rgba(0, 150, 136, 0.1); border-radius: 50%; position: absolute; left: 0px; top: 1px; font-size: 5px; display: flex; align-items: center; justify-content: center; color: rgb(0, 150, 136);\"></i>এই কোর্সে থাকছে গণিতের প্রতিটি চ্যাপ্টার এর ভিডিও লেসন ও ক্লাসনোট।</li><li style=\"box-sizing: inherit; outline: none; margin-bottom: 10px; font-size: 14px; position: relative; padding-left: 22px;\"><i class=\"ti-angle-right\" style=\"box-sizing: inherit; outline: none; font-family: themify; speak: none; font-style: normal; font-weight: 400; font-variant: normal; text-transform: none; line-height: 1; -webkit-font-smoothing: antialiased; width: 15px; height: 15px; background: rgba(0, 150, 136, 0.1); border-radius: 50%; position: absolute; left: 0px; top: 1px; font-size: 5px; display: flex; align-items: center; justify-content: center; color: rgb(0, 150, 136);\"></i>প্রতিটি লেসন শেষে প্র্যাকটিস এক্সাম।</li><li style=\"box-sizing: inherit; outline: none; margin-bottom: 10px; font-size: 14px; position: relative; padding-left: 22px;\"><i class=\"ti-angle-right\" style=\"box-sizing: inherit; outline: none; font-family: themify; speak: none; font-style: normal; font-weight: 400; font-variant: normal; text-transform: none; line-height: 1; -webkit-font-smoothing: antialiased; width: 15px; height: 15px; background: rgba(0, 150, 136, 0.1); border-radius: 50%; position: absolute; left: 0px; top: 1px; font-size: 5px; display: flex; align-items: center; justify-content: center; color: rgb(0, 150, 136);\"></i>কোর্সের পরিকল্পনা এবং পরিচালনায় আছেন দেড় যুগের বেশি অভিজ্ঞ শিক্ষকবৃন্দ যারা তাদের অভিজ্ঞতার সবটুকু ঢেলে দিয়ে এমনভাবে কোর্সগুলো সাজাতে চেষ্টা করেছেন যাতে শিক্ষার্থীরা প্রতিটি বিষয় সহজেই বুঝতে পারে।</li><li style=\"box-sizing: inherit; outline: none; margin-bottom: 10px; font-size: 14px; position: relative; padding-left: 22px;\"><i class=\"ti-angle-right\" style=\"box-sizing: inherit; outline: none; font-family: themify; speak: none; font-style: normal; font-weight: 400; font-variant: normal; text-transform: none; line-height: 1; -webkit-font-smoothing: antialiased; width: 15px; height: 15px; background: rgba(0, 150, 136, 0.1); border-radius: 50%; position: absolute; left: 0px; top: 1px; font-size: 5px; display: flex; align-items: center; justify-content: center; color: rgb(0, 150, 136);\"></i>বুয়েট এবং ঢাকা ইউনিভার্সিটি এর মত শিক্ষা প্রতিষ্ঠানের মেধাবী ও অভিজ্ঞ শিক্ষার্থীরা ক্লাসগুলো নিয়েছেন যাদের হাত ধরে ইতিমধ্যেই বহু শিক্ষার্থী অর্জন করেছে সফলতা, পৌঁছেছে তাদের অভীষ্ট লক্ষ্যে।</li><li style=\"box-sizing: inherit; outline: none; margin-bottom: 10px; font-size: 14px; position: relative; padding-left: 22px;\"><i class=\"ti-angle-right\" style=\"box-sizing: inherit; outline: none; font-family: themify; speak: none; font-style: normal; font-weight: 400; font-variant: normal; text-transform: none; line-height: 1; -webkit-font-smoothing: antialiased; width: 15px; height: 15px; background: rgba(0, 150, 136, 0.1); border-radius: 50%; position: absolute; left: 0px; top: 1px; font-size: 5px; display: flex; align-items: center; justify-content: center; color: rgb(0, 150, 136);\"></i>প্রতিটি কোর্সে শিক্ষার্থীদের জন্য রয়েছে চূড়ান্ত পরীক্ষায় ভালো করার সঠিক দিকনির্দেশনা।</li></ul>', 2, 8, 9, NULL, '2', '1700751563.png', 1, '2023-11-23 14:59:23', '2023-11-23 15:02:35'),
(6, 'H.Math For HSC', '300', '<div class=\"ed_view_features pl-4\">\r\n                            <span>কোর্সের বৈশিষ্ট্যসমূহ</span>\r\n                            <ul><li><i class=\"ti-angle-right\"></i>এই কোর্সে থাকছে গণিতের প্রতিটি চ্যাপ্টার এর ভিডিও লেসন।</li><li><i class=\"ti-angle-right\"></i>প্রতিটি লেসন শেষে প্র্যাকটিস এক্সাম।</li><li><i class=\"ti-angle-right\"></i>কোর্সের\r\n পরিকল্পনা এবং পরিচালনায় আছেন দেড় যুগের বেশি অভিজ্ঞ শিক্ষকবৃন্দ যারা \r\nতাদের অভিজ্ঞতার সবটুকু ঢেলে দিয়ে এমনভাবে কোর্সগুলো সাজাতে চেষ্টা করেছেন\r\n যাতে শিক্ষার্থীরা প্রতিটি বিষয় সহজেই বুঝতে পারে।</li><li><i class=\"ti-angle-right\"></i>তোমরা যারা এইচ এস সি ২০২২ পরীক্ষার জন্য প্রস্তুতি নিচ্ছ, মূলত তাদের জন্যই এই কোর্স।</li><li><i class=\"ti-angle-right\"></i>বুয়েট\r\n এবং ঢাকা ইউনিভার্সিটি এর মতো শিক্ষা প্রতিষ্ঠানের মেধাবী ও অভিজ্ঞ \r\nশিক্ষার্থীরা ক্লাসগুলো নিয়েছেন যাদের হাত ধরে ইতিমধ্যেই বহু শিক্ষার্থী \r\nঅর্জন করেছে সফলতা, পৌঁছেছে তাদের অভীষ্ট লক্ষ্যে।</li><li><i class=\"ti-angle-right\"></i>প্রতিটি কোর্সে শিক্ষার্থীদের জন্য রয়েছে চূড়ান্ত পরীক্ষায় ভালো করার সঠিক দিকনির্দেশনা।</li></ul>\r\n                        </div><p></p>', 1, 8, 9, NULL, '3', '1700751719.jpg', 1, '2023-11-23 15:01:59', '2023-11-23 15:02:31'),
(7, 'English For SSC', '300', '<p>In this course, you will learn English for SSC. You will learn \r\nconcepts of English grammar such as&nbsp; nouns, pronouns, subject-verb \r\nagreement, adjectives, articles, adverbs, conjunctions, prepositions, \r\nverbs, and much more.</p>', 2, 9, 10, NULL, '1', '1700752427.jpg', 1, '2023-11-23 15:13:47', '2023-11-23 15:15:39'),
(8, 'English For HSC', '300', '<p>In this course, you will learn English for SSC CGL. You will learn \r\nconcepts of English grammar such as&nbsp; nouns, pronouns, subject-verb \r\nagreement, adjectives, articles, adverbs, conjunctions, prepositions, \r\nverbs, and much more.</p>', 1, 9, 10, NULL, '4', '1700752512.jpg', 1, '2023-11-23 15:15:12', '2023-11-23 15:15:33'),
(9, 'Biology For SSC', '240', '<div class=\"ed_view_features pl-4\">\r\n                            <span>কোর্সের বৈশিষ্ট্যসমূহ</span>\r\n                            <ul><li><i class=\"ti-angle-right\"></i>এই কোর্সে থাকছে জীববিজ্ঞান এর অধ্যায়গুলোর ভিডিও লেসন ও ক্লাসনোট।</li><li><i class=\"ti-angle-right\"></i>প্রতিটি লেসন শেষে প্র্যাকটিস এক্সাম।</li><li><i class=\"ti-angle-right\"></i>কোর্সের\r\n পরিকল্পনা এবং পরিচালনায় আছেন দেড় যুগের বেশি অভিজ্ঞতা সম্পন্ন \r\nশিক্ষকবৃন্দ যারা তাদের অভিজ্ঞতার সবটুকু দিয়ে এমনভাবে কোর্সগুলো সাজাতে \r\nচেষ্টা করেছেন যাতে শিক্ষার্থীরা প্রতিটি বিষয় সহজেই বুঝতে পারে।</li><li><i class=\"ti-angle-right\"></i>মেডিকেল\r\n এবং ঢাকা ইউনিভার্সিটি এর মত শিক্ষা প্রতিষ্ঠানের মেধাবী ও অভিজ্ঞ \r\nশিক্ষার্থীরা ক্লাসগুলো নিয়েছেন যাদের হাত ধরে ইতিমধ্যেই বহু শিক্ষার্থী \r\nঅর্জন করেছে সফলতা, পৌঁছেছে তাদের অভীষ্ট লক্ষ্যে।</li><li><i class=\"ti-angle-right\"></i>প্রতিটি কোর্সে শিক্ষার্থীদের জন্য রয়েছে চূড়ান্ত পরীক্ষায় ভালো করার সঠিক দিকনির্দেশনা।</li></ul>\r\n                        </div><p></p>', 2, 6, 11, NULL, '4', '1700757497.jpg', 1, '2023-11-23 16:38:17', '2023-11-23 16:40:04'),
(10, 'Biology For HSC', '300', '<div class=\"ed_view_features pl-4\">\r\n                            <span>কোর্সের বৈশিষ্ট্যসমূহ</span>\r\n                            <ul><li><i class=\"ti-angle-right\"></i>এই কোর্সে থাকছে জীববিজ্ঞান প্রথম পত্রের অধ্যায়গুলোর ভিডিও লেসন।</li><li><i class=\"ti-angle-right\"></i>প্রতিটি লেসন শেষে প্র্যাকটিস এক্সাম।</li><li><i class=\"ti-angle-right\"></i>কোর্সের\r\n পরিকল্পনা এবং পরিচালনায় আছেন দেড় যুগের বেশি অভিজ্ঞতা সম্পন্ন \r\nশিক্ষকবৃন্দ যারা তাদের অভিজ্ঞতার সবটুকু দিয়ে এমনভাবে কোর্সগুলো সাজাতে \r\nচেষ্টা করেছেন যাতে শিক্ষার্থীরা প্রতিটি বিষয় সহজেই বুঝতে পারে।</li><li><i class=\"ti-angle-right\"></i>মেডিকেল\r\n এবং ঢাকা ইউনিভার্সিটি এর মত শিক্ষা প্রতিষ্ঠানের মেধাবী ও অভিজ্ঞ \r\nশিক্ষার্থীরা ক্লাসগুলো নিয়েছেন যাদের হাত ধরে ইতিমধ্যেই বহু শিক্ষার্থী \r\nঅর্জন করেছে সফলতা, পৌঁছেছে তাদের অভীষ্ট লক্ষ্যে।</li><li><i class=\"ti-angle-right\"></i>প্রতিটি কোর্সে শিক্ষার্থীদের জন্য রয়েছে চূড়ান্ত পরীক্ষায় ভালো করার সঠিক দিকনির্দেশনা।</li></ul>\r\n                        </div><p></p>', 1, 6, 11, NULL, '3', '1700757587.jpg', 1, '2023-11-23 16:39:47', '2023-11-23 16:39:59'),
(11, 'Chemistry For SSC', '200', '<div class=\"ed_view_features pl-4\">\r\n                            <span>কোর্সের বৈশিষ্ট্যসমূহ</span>\r\n                            <ul><li><i class=\"ti-angle-right\"></i>এই কোর্সে থাকছে রসায়ন এর প্রতিটি চ্যাপ্টার এর ভিডিও লেসন ও ক্লাসনোট।</li><li><i class=\"ti-angle-right\"></i>প্রতিটি লেসন শেষে প্র্যাকটিস এক্সাম।</li><li><i class=\"ti-angle-right\"></i>কোর্সের\r\n পরিকল্পনা এবং পরিচালনায় আছেন দেড় যুগের বেশি অভিজ্ঞতা সম্পন্ন \r\nশিক্ষকবৃন্দ যারা তাদের অভিজ্ঞতার সবটুকু দিয়ে এমনভাবে কোর্সগুলো সাজাতে \r\nচেষ্টা করেছেন যাতে শিক্ষার্থীরা প্রতিটি বিষয় সহজেই বুঝতে পারে।</li><li><i class=\"ti-angle-right\"></i>মেডিকেল\r\n এবং ঢাকা ইউনিভার্সিটি এর মত শিক্ষা প্রতিষ্ঠানের মেধাবী ও অভিজ্ঞ \r\nশিক্ষার্থীরা ক্লাসগুলো নিয়েছেন যাদের হাত ধরে ইতিমধ্যেই বহু শিক্ষার্থী \r\nঅর্জন করেছে সফলতা, পৌঁছেছে তাদের অভীষ্ট লক্ষ্যে।</li><li><i class=\"ti-angle-right\"></i>প্রতিটি কোর্সে শিক্ষার্থীদের জন্য রয়েছে চূড়ান্ত পরীক্ষায় ভালো করার সঠিক দিকনির্দেশনা।</li></ul>\r\n                        </div><p></p>', 2, 2, 12, NULL, '2', '1700758069.jpg', 1, '2023-11-23 16:47:49', '2023-11-23 16:49:56'),
(12, 'Chemistry For HSC', '300', '<div class=\"ed_view_features pl-4\">\r\n                            <span>কোর্সের বৈশিষ্ট্যসমূহ</span>\r\n                            <ul><li><i class=\"ti-angle-right\"></i>এই কোর্সে থাকছে রসায়ন প্রথম পত্রের প্রতিটি চ্যাপ্টার এর ভিডিও লেসন।</li><li><i class=\"ti-angle-right\"></i>প্রতিটি লেসন শেষে প্র্যাকটিস এক্সাম।</li><li><i class=\"ti-angle-right\"></i>কোর্সের\r\n পরিকল্পনা এবং পরিচালনায় আছেন দেড় যুগের বেশি অভিজ্ঞতা সম্পন্ন \r\nশিক্ষকবৃন্দ যারা তাদের অভিজ্ঞতার সবটুকু দিয়ে এমনভাবে কোর্সগুলো সাজাতে \r\nচেষ্টা করেছেন যাতে শিক্ষার্থীরা প্রতিটি বিষয় সহজেই বুঝতে পারে।</li><li><i class=\"ti-angle-right\"></i>তোমরা যারা এইচ এস সি ২০২২ পরীক্ষার জন্য প্রস্তুতি নিচ্ছ, মূলত তাদের জন্যই এই কোর্স।</li><li><i class=\"ti-angle-right\"></i>বুয়েট/\r\n মেডিকেল/ ঢাকা ইউনিভার্সিটি এর মত শিক্ষা প্রতিষ্ঠানের মেধাবী ও অভিজ্ঞ \r\nশিক্ষার্থীরা ক্লাসগুলো নিয়েছেন যাদের হাত ধরে ইতিমধ্যেই বহু শিক্ষার্থী \r\nঅর্জন করেছে সফলতা, পৌঁছেছে তাদের অভীষ্ট লক্ষ্যে।</li><li><i class=\"ti-angle-right\"></i>প্রতিটি কোর্সে শিক্ষার্থীদের জন্য রয়েছে চূড়ান্ত পরীক্ষায় ভালো করার সঠিক দিকনির্দেশনা।</li></ul>\r\n                        </div><p></p>', 1, 2, 12, NULL, '1', '1700758178.jpg', 1, '2023-11-23 16:49:38', '2023-11-23 16:49:51'),
(13, 'ICT For SSC', '150', '<ul class=\"thim-list-content\"><li>Over 37 lectures and 55.5 hours of content!</li><li>Testing Training Included.</li><li>Learn Software Testing and Automation basics from a professional trainer from your own desk.</li><li>Information packed practical training starting from basics to advanced testing techniques.</li><li>Best suitable for beginners to advanced level users and who learn faster when demonstrated.</li><li>Course content designed by considering current software testing technology and the job market.</li><li>Practical assignments at the end of every session.</li><li>Practical learning experience with live project work and examples.</li></ul><p></p>', 2, 1, 13, NULL, '1', '1700759639.jpg', 1, '2023-11-23 17:13:59', '2023-11-23 17:16:21'),
(14, 'ICT For HSC', '200', '<ul class=\"thim-list-content\"><li>Over 37 lectures and 55.5 hours of content!</li><li>Testing Training Included.</li><li>Learn Software Testing and Automation basics from a professional trainer from your own desk.</li><li>Information packed practical training starting from basics to advanced testing techniques.</li><li>Best suitable for beginners to advanced level users and who learn faster when demonstrated.</li><li>Course content designed by considering current software testing technology and the job market.</li><li>Practical assignments at the end of every session.</li><li>Practical learning experience with live project work and examples.</li></ul><p></p>', 1, 1, 13, NULL, '4', '1700759750.jpg', 1, '2023-11-23 17:15:50', '2023-11-23 19:33:41');

-- --------------------------------------------------------

--
-- Table structure for table `c_a_r_t_s`
--

CREATE TABLE `c_a_r_t_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `durations`
--

CREATE TABLE `durations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `timeline` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `durations`
--

INSERT INTO `durations` (`id`, `timeline`, `status`, `created_at`, `updated_at`) VALUES
(1, '9 am - 12 pm', '1', '2023-08-17 04:08:58', '2023-08-17 04:08:58'),
(2, '12 pm - 3 pm', '1', '2023-08-17 04:08:58', '2023-08-17 04:08:58'),
(3, '3 pm - 6 pm', '1', '2023-08-17 04:08:58', '2023-08-17 04:08:58'),
(4, '8 am - 10 am', '1', '2023-08-24 15:27:12', '2023-08-25 18:46:42');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_30_065417_create__service_table', 1),
(6, '2023_04_06_062845_create_blogs_table', 1),
(7, '2023_04_09_183406_create_permission_tables', 1),
(8, '2023_04_09_184343_create_subjects_table', 1),
(9, '2023_04_12_165304_create_categories_table', 1),
(10, '2023_04_20_092752_create_student_information_table', 1),
(11, '2023_04_25_032855_create_contents_table', 1),
(12, '2023_05_04_040624_creaet_teachers_table', 1),
(13, '2023_05_04_040706_create_teacher_information_table', 1),
(14, '2023_05_04_060529_create_course_table', 1),
(15, '2023_05_13_103259_create_c_a_r_t_s_table', 1),
(16, '2023_05_15_164852_create_shops_table', 1),
(17, '2023_05_16_153151_create_orders_table', 1),
(18, '2023_05_18_152259_create_products_table', 1),
(19, '2023_05_26_171244_create_transactions_table', 1),
(20, '2023_05_27_160143_create_chats_table', 1),
(21, '2023_06_03_174341_create_durations_table', 1),
(22, '2023_08_07_053600_create_comments_table', 1),
(23, '2023_08_12_055109_create_attendances_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `item_id` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL COMMENT 'type->1 = course, type->2 = ecommerce',
  `status` varchar(255) NOT NULL DEFAULT '2',
  `phone` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `quantity_ordered` int(11) DEFAULT NULL,
  `payment_type` varchar(255) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `item_id`, `type`, `status`, `phone`, `price`, `quantity_ordered`, `payment_type`, `transaction_id`, `created_at`, `updated_at`) VALUES
(28, '18', '8', '2', '1', '017525211', '150.00', 2, 'Rocket', 'z!@daw012', '2024-04-23 19:29:01', '2024-04-23 19:45:27');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image`, `quantity`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Econo Student Pen Black', '<p><a data-ved=\"0CBIQjhxqFwoTCICxrf6W2oIDFQAAAAAdAAAAABAD\" rel=\"noopener\" target=\"_blank\" href=\"https://www.othoba.com/econo-student-pen-black-10-pcs-gqg00003\" class=\"Hnk30e indIKd\"><h3 class=\"GW0XC indIKd cS4Vcb-pGL6qe-fwJd0c\">Econo Student Pen Black</h3></a></p>', 5.00, '1700744566.jpg', 5, '1', '2023-11-23 13:02:47', '2023-11-23 13:02:47'),
(4, 'Black Ink Neutral Pen', '<p><span class=\"pdp-mod-product-badge-title\" data-spm-anchor-id=\"a2a0e.pdp.0.i0.37c83d81WekeUp\">New Style Black Ink Neutral Pen Student Exam Office Signature Pen Black 0.5mm Pen Stationary Supplies Pen</span></p>', 20.00, '1700744821.webp', 6, '1', '2023-11-23 13:07:01', '2023-11-23 13:07:01'),
(5, 'Rough Work Book', '<p><a data-ved=\"0CBIQjhxqFwoTCIDYlqiY2oIDFQAAAAAdAAAAABAX\" rel=\"noopener\" target=\"_blank\" href=\"https://www.google.com/url?sa=i&amp;url=https%3A%2F%2Fwww.thegreenoffice.co.uk%2Fexercise-books-and-paper%2Frough-work-book-blank-230x180mm-pink-96-page-pack-100-vre02812-3p--1&amp;psig=AOvVaw2UB45tXukvLU_lgUWBDGcI&amp;ust=1700831252451000&amp;source=images&amp;cd=vfe&amp;opi=89978449&amp;ved=0CBIQjhxqFwoTCIDYlqiY2oIDFQAAAAAdAAAAABAX\" class=\"Hnk30e indIKd\"><h3 class=\"GW0XC indIKd cS4Vcb-pGL6qe-fwJd0c\">Rough Work Book Blank 230X180mm Pink 96 Page Pack 100 Vre02812 3P Exercise  Books &amp; Paper<br></h3></a></p>', 25.00, '1700744966.jpg', 5, '1', '2023-11-23 13:09:26', '2023-11-23 13:09:26'),
(6, 'Academic Writing', '<p><a data-ved=\"0CBIQjhxqFwoTCIDYlqiY2oIDFQAAAAAdAAAAABAm\" rel=\"noopener\" target=\"_blank\" href=\"https://www.google.com/url?sa=i&amp;url=https%3A%2F%2Fwww.amazon.com%2FAcademic-Writing-Handbook-International-Students%2Fdp%2F1138048747&amp;psig=AOvVaw2UB45tXukvLU_lgUWBDGcI&amp;ust=1700831252451000&amp;source=images&amp;cd=vfe&amp;opi=89978449&amp;ved=0CBIQjhxqFwoTCIDYlqiY2oIDFQAAAAAdAAAAABAm\" class=\"Hnk30e indIKd\"><h3 class=\"GW0XC indIKd cS4Vcb-pGL6qe-fwJd0c\">Academic Writing.A Handbook for Students </h3></a></p>', 20.00, '1700745169.jpg', 0, '1', '2023-11-23 13:12:49', '2023-11-23 13:12:49'),
(7, 'ANQIYI Personalised Wooden Pen Holder', '<p><a data-ved=\"0CBIQjhxqFwoTCLjxvs-Z2oIDFQAAAAAdAAAAABAD\" rel=\"noopener\" target=\"_blank\" href=\"https://www.amazon.co.uk/Personalised-Students-Colleagues-Stationery-Organisers/dp/B09WYKW896\" class=\"Hnk30e indIKd\"><h3 class=\"GW0XC indIKd cS4Vcb-pGL6qe-fwJd0c\">ANQIYI Personalised Wooden Pen Holder for Desk, Custom Name Pen Pencil Pots  for Students</h3></a></p>', 100.00, '1700745255.jpg', 1, '1', '2023-11-23 13:14:15', '2023-11-23 13:14:15'),
(8, 'Premium Walnut Pencil Holder', '<p><a data-ved=\"0CBIQjhxqFwoTCIDjkIea2oIDFQAAAAAdAAAAABAD\" rel=\"noopener\" target=\"_blank\" href=\"https://www.ebay.com/itm/144603083030\" class=\"Hnk30e indIKd\"><h3 class=\"GW0XC indIKd cS4Vcb-pGL6qe-fwJd0c\">Pen Holder for Desk Premium Walnut Pencil Holder Pen Cup Makeup Brush  Holder</h3></a></p>', 150.00, '1700745421.jpg', 4, '1', '2023-11-23 13:17:02', '2024-04-23 19:45:27'),
(9, 'School Bag', '<p><a data-ved=\"0CBIQjhxqFwoTCIiq-cKa2oIDFQAAAAAdAAAAABAQ\" rel=\"noopener\" target=\"_blank\" href=\"https://m.made-in-china.com/product/Double-Shoulder-Quality-University-Students-Office-Staff-Leisure-Travel-Sports-School-Bag-Pack-Backpack-CY6869-689687662.html\" class=\"Hnk30e indIKd\"><h3 class=\"GW0XC indIKd cS4Vcb-pGL6qe-fwJd0c\">Double Shoulder Quality University Students Office Staff Leisure Travel  Sports School Bag Pack </h3></a></p>', 350.00, '1700745531.jpg', 4, '1', '2023-11-23 13:18:51', '2023-11-23 13:18:51'),
(10, 'Student Backpack', '<p><a data-ved=\"0CBIQjhxqFwoTCIiq-cKa2oIDFQAAAAAdAAAAABAY\" rel=\"noopener\" target=\"_blank\" href=\"https://www.ubuy.com.bd/en/product/5C7XOKGOW-jansport-big-student-backpack-school-travel-or-work-bookbag-with-15-inch-laptop-compartment-navy-blue\" class=\"Hnk30e indIKd\"><h3 class=\"GW0XC indIKd cS4Vcb-pGL6qe-fwJd0c\">JanSport Big Student Backpack For School<br></h3></a></p>', 400.00, '1700745584.jpg', 4, '1', '2023-11-23 13:19:44', '2023-11-23 13:19:44'),
(11, 'Slim Pencil Case', '<p><a data-ved=\"0CBIQjhxqFwoTCNDp5pKb2oIDFQAAAAAdAAAAABAD\" rel=\"noopener\" target=\"_blank\" href=\"https://www.amazon.in/Storite-Slim-Pencil-Pouch-Stationery/dp/B0BH8QS1CP\" class=\"Hnk30e indIKd\"><h3 class=\"GW0XC indIKd cS4Vcb-pGL6qe-fwJd0c\">Storite 3 Pcs Slim Pencil Case, Pen Pouch with Zipper for Kids, School  Student Stationery Office Supplies</h3></a></p>', 200.00, '1700745672.jpg', 7, '1', '2023-11-23 13:21:12', '2023-11-23 13:21:12'),
(12, 'Pencil Box', '<p><a data-ved=\"0CBIQjhxqFwoTCNDp5pKb2oIDFQAAAAAdAAAAABAX\" rel=\"noopener\" target=\"_blank\" href=\"https://www.google.com/url?sa=i&amp;url=https%3A%2F%2Fwww.etsy.com%2Fca%2Fmarket%2Fmetal_pencil_box&amp;psig=AOvVaw1nVwqfZVY40kU7r3-X1T-T&amp;ust=1700832011766000&amp;source=images&amp;cd=vfe&amp;opi=89978449&amp;ved=0CBIQjhxqFwoTCNDp5pKb2oIDFQAAAAAdAAAAABAX\" class=\"Hnk30e indIKd\"><h3 class=\"GW0XC indIKd cS4Vcb-pGL6qe-fwJd0c\">Leather Pencil Box - Etsy Canada</h3></a></p>', 400.00, '1700745802.jpg', 9, '1', '2023-11-23 13:23:22', '2023-11-23 13:23:22'),
(13, 'Calculator', '<p><a data-ved=\"0CBIQjhxqFwoTCIiM5_Kb2oIDFQAAAAAdAAAAABAH\" rel=\"noopener\" target=\"_blank\" href=\"https://www.rokomari.com/product/261183/citiplus-scientific-series-electronic-calculator\" class=\"Hnk30e indIKd\"><h3 class=\"GW0XC indIKd cS4Vcb-pGL6qe-fwJd0c\">Citiplus Scientific Series Electronic Calculator - SX-991Es Plus : Citiplus  </h3></a></p>', 300.00, '1700745879.png', 8, '1', '2023-11-23 13:24:39', '2023-11-23 13:24:39'),
(14, 'Calculator', '<p><a data-ved=\"0CBIQjhxqFwoTCIiM5_Kb2oIDFQAAAAAdAAAAABAP\" rel=\"noopener\" target=\"_blank\" href=\"https://www.schooldepot.co.nz/products/jastek-scientific-calculator-jascs1\" class=\"Hnk30e indIKd\"><h3 class=\"GW0XC indIKd cS4Vcb-pGL6qe-fwJd0c\">Jastek Scientific Calculator CS1 NZQA Approved – School Depot NZ</h3></a></p>', 500.00, '1700745931.png', 6, '1', '2023-11-23 13:25:31', '2023-11-23 13:25:31'),
(15, 'i-teen ballpoint pen', '<p>Ballpoint pen</p>', 10.00, '1713894480.jpg', 20, '1', '2024-04-23 17:48:00', '2024-04-23 17:48:00');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `order` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_information`
--

CREATE TABLE `student_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `current_department` varchar(255) DEFAULT NULL,
  `current_class` varchar(255) NOT NULL,
  `current_school` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_information`
--

INSERT INTO `student_information` (`id`, `user_id`, `image`, `file`, `birthday`, `address`, `current_department`, `current_class`, `current_school`, `created_at`, `updated_at`) VALUES
(1, '2', '1692553305.jpg', '1692301659_file.jpg', '1999-07-21', 'Dhaka,Bangladesh', 'science', 'Hsc', 'jlab', '2023-08-17 13:47:39', '2023-08-20 17:41:45'),
(2, '5', '1692550507.jpg', '1692550507_file.jpg', '2015-12-09', 'Dhaka,Bangladesh', 'commerce', 'SSC', 'jlab', '2023-08-20 10:55:07', '2023-08-20 10:55:07'),
(3, '14', '1700764699.jpg', '1700764699_file.jpg', '2001-12-12', 'Dhaka,Bangladesh', 'science', 'HSC', 'GK High School & Collage', '2023-11-23 18:38:19', '2023-11-23 18:38:19'),
(4, '15', '1700766110.jpg', '1700766110_file.jpg', '1999-02-17', 'Dhaka,Bangladesh', 'science', 'HSC', 'Kakoli High School & College', '2023-11-23 19:01:50', '2023-11-23 19:01:50'),
(5, '16', '1700766434.jpg', '1700766434_file.jpg', '1998-10-05', 'Dhaka,Bangladesh', 'science', 'HSC', 'Noor Muhammad School & College', '2023-11-23 19:07:14', '2023-11-23 19:07:14'),
(6, '18', '1713895284.jpg', '1713895284_file.jpg', '2010-12-26', 'Daksinnkhan purba para', 'science', 'HSC', 'Adamjee', '2024-04-23 18:01:24', '2024-04-23 18:01:24');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category_id` varchar(255) NOT NULL,
  `order` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `title`, `description`, `image`, `category_id`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ICT', 'ICT Subject', '1700748166.png', 'Choose...', 1, 1, '2023-08-17 04:08:58', '2023-11-23 14:02:46'),
(2, 'Chemistry', 'Chemistry', '1700748114.jpg', 'Choose...', 2, 1, '2023-08-17 04:08:58', '2023-11-23 14:01:54'),
(6, 'Biology', 'Biology', '1700747992.webp', 'Choose...', 6, 1, '2023-08-17 04:08:58', '2023-11-23 13:59:52'),
(7, 'Physics', 'Physics', '1700747937.jpg', 'Choose...', 7, 1, '2023-08-17 04:08:58', '2023-11-23 13:58:57'),
(8, 'Math', 'Math', '1700748273.jpg', 'Choose...', 8, 1, '2023-11-23 14:04:33', '2023-11-23 14:04:33'),
(9, 'English', 'English', '1700748488.jpg', 'Choose...', 9, 1, '2023-11-23 14:08:08', '2023-11-23 14:08:08');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_information`
--

CREATE TABLE `teacher_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher_information`
--

INSERT INTO `teacher_information` (`id`, `user_id`, `image`, `file`, `birthday`, `address`, `profession`, `subject`, `created_at`, `updated_at`) VALUES
(1, '3', '1692301874.jpg', '1692301874_file.jpg', '1988-06-14', 'Dhaka,Bangladesh', '2', '1', '2023-08-17 13:51:14', '2023-08-17 13:51:14'),
(2, '6', '1692550655.jpg', '1692550656_file.jpg', '2015-12-28', 'Dhaka,Bangladesh', '2', '1', '2023-08-20 10:57:36', '2023-08-20 10:57:36'),
(3, '7', '1692551018.png', '1692551018_file.PNG', '2015-12-25', 'Dhaka,Bangladesh', '2', '2', '2023-08-20 11:03:38', '2023-08-20 11:03:38'),
(4, '8', '1700746533.jpg', '1700748576_file.jpg', '1982-12-15', 'Dhaka,Bangladesh', 'Part Time', '7', '2023-11-23 13:35:33', '2023-11-23 14:09:36'),
(5, '9', '1700751231.jpg', '1700751231_file.jpg', '1990-12-18', 'Dhaka,Bangladesh', '2', '8', '2023-11-23 14:53:51', '2023-11-23 14:53:51'),
(6, '10', '1700752037.jpg', '1700752037_file.jpg', '1984-10-24', 'Dhaka,Bangladesh', '2', '9', '2023-11-23 15:07:17', '2023-11-23 15:07:17'),
(7, '11', '1700752777.jpg', '1700752777_file.jpg', '1980-12-25', 'Dhaka,Bangladesh', '1', '6', '2023-11-23 15:19:37', '2023-11-23 15:19:37'),
(8, '12', '1700757861.jpg', '1700757861_file.jpg', '1987-01-28', 'Dhaka,Bangladesh', '2', '2', '2023-11-23 16:44:22', '2023-11-23 16:44:22'),
(9, '13', '1700759357.jpg', '1700759357_file.png', '1992-11-11', 'Dhaka,Bangladesh', '2', '1', '2023-11-23 17:09:17', '2023-11-23 17:09:17');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `invoice` varchar(255) NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `ratio` decimal(8,2) NOT NULL,
  `teacher` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `order_id`, `invoice`, `teacher_id`, `student_id`, `amount`, `ratio`, `teacher`, `owner`, `created_at`, `updated_at`) VALUES
(2, 12, 'LP-0000000012', 0, 3, 50.00, 100.00, '0', '50.00', '2023-08-20 11:21:17', '2023-08-20 11:21:17'),
(4, 14, 'LP-0000000014', 3, 2, 50.00, 25.00, '12.5', '37.5', '2023-08-20 17:29:22', '2023-08-20 17:29:22'),
(5, 15, 'LP-0000000015', 3, 5, 50.00, 25.00, '12.5', '37.5', '2023-08-20 17:39:38', '2023-08-20 17:39:38'),
(6, 16, 'LP-0000000016', 3, 2, 99.00, 25.00, '24.75', '74.25', '2023-08-20 18:19:45', '2023-08-20 18:19:45'),
(9, 19, 'LP-0000000019', 8, 2, 200.00, 25.00, '50', '150', '2023-11-23 17:51:31', '2023-11-23 17:51:31'),
(10, 20, 'LP-0000000020', 0, 2, 500.00, 100.00, '0', '500.00', '2023-11-23 17:53:12', '2023-11-23 17:53:12'),
(11, 21, 'LP-0000000021', 0, 2, 500.00, 100.00, '0', '500.00', '2023-11-23 17:55:19', '2023-11-23 17:55:19'),
(12, 22, 'LP-0000000022', 8, 14, 250.00, 25.00, '62.5', '187.5', '2023-11-23 19:17:15', '2023-11-23 19:17:15'),
(13, 23, 'LP-0000000023', 9, 14, 300.00, 25.00, '75', '225', '2023-11-23 19:18:09', '2023-11-23 19:18:09'),
(14, 24, 'LP-0000000024', 10, 14, 300.00, 25.00, '75', '225', '2023-11-23 19:18:39', '2023-11-23 19:18:39'),
(15, 25, 'LP-0000000025', 0, 14, 500.00, 100.00, '0', '500.00', '2023-11-23 19:22:15', '2023-11-23 19:22:15'),
(16, 26, 'LP-0000000026', 0, 14, 500.00, 100.00, '0', '500.00', '2023-11-23 19:23:28', '2023-11-23 19:23:28'),
(18, 28, 'LP-0000000028', 0, 18, 150.00, 100.00, '0', '150.00', '2024-04-23 19:29:03', '2024-04-23 19:29:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `allow` varchar(255) DEFAULT '0',
  `complete` varchar(255) DEFAULT '0',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `email_verified_at`, `password`, `role`, `allow`, `complete`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'superadmin@admin.com', '0123456789', NULL, '$2y$10$MFwU5PYdqH7rX6uUUPktnuWUIHraDEL4meGm.5oM236MdVOnEgI5y', '0', '1', '1', NULL, '2023-08-17 04:08:58', '2023-08-17 04:08:58'),
(8, 'Teacher1', 'teacher1@gmail.com', '01010101011', NULL, '$2y$10$MLWXjWfNFpSXwbVEHyozjeAHQ2gcDXAzRlgKY1uiTAXpmEKuPX4qS', '2', '1', '1', NULL, '2023-11-23 13:30:51', '2023-11-23 13:36:17'),
(9, 'Teacher2', 'teacher2@gmail.com', '01010101012', NULL, '$2y$10$FdIJCMWz.dYwa1gcaD1YD.awRc7nhtqUrF7QZASpbpVmpCtbhA0N6', '2', '1', '1', NULL, '2023-11-23 14:50:36', '2023-11-23 14:54:09'),
(10, 'Teacher3', 'teacher3@gmail.com', '01010101013', NULL, '$2y$10$RodYwS8nNCwTaOgg5mwaQeG/7fDZHI.TshJjlAH23Terl/ioCItY2', '2', '1', '1', NULL, '2023-11-23 15:05:02', '2023-11-23 15:07:37'),
(11, 'Teacher4', 'teacher4@gmail.com', '01010101014', NULL, '$2y$10$21nIq2qmhYCvM/9Z/ETrHOTeV6/FfX1yvXm20mMSwjUQf2cha.sBS', '2', '1', '1', NULL, '2023-11-23 15:16:41', '2023-11-23 15:19:49'),
(12, 'Teacher5', 'teacher5@gmail.com', '01010101015', NULL, '$2y$10$DJYwkmMQkGysx1IHuCX3m.Jds9s9BB4P1WokN7fYWmuWblr7Gjr1S', '2', '1', '1', NULL, '2023-11-23 16:40:57', '2023-11-23 16:45:28'),
(13, 'Teacher6', 'teacher6@gmail.com', '01010101016', NULL, '$2y$10$oWLzvB/qF3JGQKRwYrV1v.s44PrIvx36cNvuef1MqTufCSLs.f97K', '2', '1', '1', NULL, '2023-11-23 17:07:37', '2023-11-23 17:09:34'),
(14, 'Student1', 'student1@gmail.com', '0202020201', NULL, '$2y$10$vI9u.9iHvJIPhaSR1RNzcu3rDc3lHF.RS32KDar0JsfS51DoyuKtq', '1', '1', '1', NULL, '2023-11-23 18:33:31', '2023-11-23 18:38:33'),
(15, 'Student2', 'student2@gmail.com', '0202020202', NULL, '$2y$10$/zWbEB4dxr8vKIx0RcHDoeGyYWafIlKDZdbwZ6tUjFwIoY85cw20G', '1', '1', '1', NULL, '2023-11-23 18:59:14', '2023-11-23 19:02:12'),
(16, 'Student3', 'student3@gmail.com', '0202020203', NULL, '$2y$10$M28LYrsBoQVGNGsXCocLquNNDA0xFEGkM2LjA5b6mpHzJre4fwb.O', '1', '1', '1', NULL, '2023-11-23 19:03:27', '2023-11-23 19:07:25'),
(18, 'mason', 'mason@live.com', '017525211', NULL, '$2y$10$xJyFXTdVqvEd8u.js0pyxeSN18srf..INaajEw4zD0dgkwa.WAuRG', '1', '1', '1', NULL, '2024-04-23 18:00:15', '2024-04-23 18:01:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_a_r_t_s`
--
ALTER TABLE `c_a_r_t_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `durations`
--
ALTER TABLE `durations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_information`
--
ALTER TABLE `student_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_information`
--
ALTER TABLE `teacher_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `c_a_r_t_s`
--
ALTER TABLE `c_a_r_t_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `durations`
--
ALTER TABLE `durations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_information`
--
ALTER TABLE `student_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `teacher_information`
--
ALTER TABLE `teacher_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
