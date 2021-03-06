-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2020 at 01:53 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bikebdnew`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounttypes`
--

CREATE TABLE `accounttypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `superadmin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `accounttype` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounttypes`
--

INSERT INTO `accounttypes` (`id`, `superadmin_id`, `accounttype`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'Superadmin', '2020-02-29 00:24:14', '2020-02-29 00:24:14'),
(2, 1, 'User', 'Superadmin', '2020-02-29 00:24:18', '2020-02-29 00:24:18');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `superadmin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` bigint(20) UNSIGNED DEFAULT NULL,
  `gender_id` bigint(20) UNSIGNED DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `superadmin_id`, `language`, `name`, `image`, `phone`, `email`, `password`, `status_id`, `gender_id`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'en', 'Zahidul', '1582826939__236025.jpeg', '01739898764', 'admin1234@gmail.com', '$2y$10$9gK5iEFSRGbxXqh2ESj0T.vBG8caeSVAIgLLzdmSQ9mkOn19wkwHG', 1, 1, NULL, '2020-02-27 12:09:00', '2020-02-29 23:11:03', NULL),
(2, 1, 'bn', 'Tipu Sultan', '1582868160__364172.jpeg', '01773515369', 'tipusultanjes@gmail.com', '$2y$10$e0FVeAlgj17gTmI6AYA9GOX4oIfzeDBo.5mgYVsmNwKdaPEswSPJO', 1, 1, NULL, '2020-02-27 23:36:00', '2020-02-29 02:52:56', NULL),
(3, 1, 'bn', 'Bangla Writer', '1582957360__797178.jpeg', '01739898764', 'banglawriter@gmail.com', '$2y$10$5UFi/5CfVcwY.kzYhu/1zeIWKJQhbpo3zQxxX0KnQ/plaZj/ZGoV.', 2, 2, NULL, '2020-02-28 23:22:58', '2020-03-01 01:44:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `betteryvoltages`
--

CREATE TABLE `betteryvoltages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bvoltage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `betteryvoltages`
--

INSERT INTO `betteryvoltages` (`id`, `admin_id`, `bvoltage`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, '12V', 1, '2020-03-08 04:12:09', '2020-03-09 03:02:22'),
(3, 1, '16V', 1, '2020-03-08 04:12:13', '2020-03-09 03:02:31'),
(4, 1, '32V', 1, '2020-03-09 03:02:39', '2020-03-09 03:02:39');

-- --------------------------------------------------------

--
-- Table structure for table `blogcategorylists`
--

CREATE TABLE `blogcategorylists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED DEFAULT NULL,
  `categorylist` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogcomments`
--

CREATE TABLE `blogcomments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `clickview` int(11) NOT NULL DEFAULT 0,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `superadmin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadescription` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postimage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 2,
  `shortdescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `slug`, `language`, `clickview`, `admin_id`, `superadmin_id`, `title`, `keyword`, `url`, `metadescription`, `postimage`, `status`, `shortdescription`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Yamaha-Cashback-Offer-On-Valentine-February-2020-!', 'en', 18, 1, NULL, 'Yamaha Cashback Offer On Valentine February 2020 !', 'gggg', 'আয়োজিত-হয়ে-গেল-ক্লাব-কেপিআর-২০২০-এর-পিকনিক-!', 'Yamaha Cashback Offer On Valentine February 2020 !', '1582537416__671955.jpeg', 1, 'Finder GPS is the new tracker partner of BikeBD.com. There was an MoU signing ceremony with Moni ', '<p>Yamaha is giving a&nbsp;<strong>Cashback Offer for February 2020</strong>&nbsp;<strong>on this valentine</strong>. On this offer, Yamaha is giving 1<strong>0,000/- BDT cashback on the FZ series.</strong></p><p class=\"ql-align-center\"><a href=\"https://bkdads.bikebd.com/www/delivery/ck.php?oaparams=2__bannerid=39__zoneid=19__cb=23ae5ea39c__oadest=https%3A%2F%2Fwww.facebook.com%2FYamahabd%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://bkdads.bikebd.com/www/images/1b13adc631e232de9bb17e7dd0f79d27.gif\" height=\"250\" width=\"300\"></a></p><p class=\"ql-align-center\"><img src=\"https://bkdads.bikebd.com/www/delivery/lg.php?bannerid=39&amp;campaignid=13&amp;zoneid=19&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Fyamaha-cashback-offer-valentine-february-2020%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2F&amp;cb=23ae5ea39c\" height=\"0\" width=\"0\"></p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/02/yamaha-fzs-v3-abs-2019.jpg\" alt=\"yamaha fzs v3 abs 2019\" height=\"500\" width=\"750\"></p><p>With every purchase of&nbsp;<a href=\"https://www.bikebd.com/yamaha-fzs-fi-v3-review-team-bikebd/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\">Yamaha FZS FI V3 (ABS)</a>, FZ FI V3 (ABS) &amp; FZS FI V2 customers can avail 10,000/- BDT cashback. This offer will continue till 29th February 2019.</p><p class=\"ql-align-center\"><a href=\"https://www.bikebd.com/adserv/www/delivery/ck.php?oaparams=2__bannerid=42__zoneid=17__cb=2e8699d54b__oadest=https%3A%2F%2Fwww.facebook.com%2Fsuzukibd%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://www.bikebd.com/adserv/www/images/7bd881b7c8feb48367a6a0d4b5bf5e01.gif\" height=\"90\" width=\"620\"></a></p><p class=\"ql-align-center\"><img src=\"https://www.bikebd.com/adserv/www/delivery/lg.php?bannerid=42&amp;campaignid=19&amp;zoneid=17&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Fyamaha-cashback-offer-valentine-february-2020%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2F&amp;cb=2e8699d54b\" height=\"0\" width=\"0\"></p><p><strong>Cashback Offer February 2020</strong></p><p><strong>ModelOld PriceNew PriceCashback</strong>FZS FI V3 (ABS)263,000253,00010,000FZ FI V3 (ABS)251,000241,00010,000FZS FI V2231,000221,00010,000</p><p>Yamaha introduces the FZS journey back in 2008.&nbsp;Everyone was surprised back then because for the first time they fitted 140 section rear tire on this 150cc segment. Because of this acceleration, mileage, and top speed may decrease but control of handling and braking increases.</p><p class=\"ql-align-center\"><a href=\"https://www.bikebd.com/adserv/www/delivery/ck.php?oaparams=2__bannerid=51__zoneid=16__cb=bf8e72dc2d__oadest=https%3A%2F%2Fwww.facebook.com%2Fbdkawasaki%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://www.bikebd.com/adserv/www/images/2f691bd3927bd43facd1bfd2fc1896b1.jpg\" height=\"250\" width=\"300\"></a></p><p class=\"ql-align-center\"><img src=\"https://www.bikebd.com/adserv/www/delivery/lg.php?bannerid=51&amp;campaignid=24&amp;zoneid=16&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Fyamaha-cashback-offer-valentine-february-2020%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2F&amp;cb=bf8e72dc2d\" height=\"0\" width=\"0\"></p><p>Yamaha FZS series is one of the popular series in Bangladesh. These series are popular for its handling, braking, and balance.&nbsp;Yamaha has improved this motorcycle day by day. First, they introduce with Fi (Fuel injection) engine. Last year they introduced Yamaha FZS Fi V3 motorcycle with single-channel ABS (anti-lock braking system).</p><h2 class=\"ql-align-center\"><a href=\"https://www.youtube.com/watch?v=Ik7esKErCQY\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\">Click For To See The Yamaha FZS FI V3 Review</a></h2><iframe class=\"ql-video\" frameborder=\"0\" allowfullscreen=\"true\" src=\"https://www.youtube.com/embed/Ik7esKErCQY?feature=oembed\"></iframe><p><br></p><p>FZS Fi V3 has a 150cc air-cooled, single-cylinder engine which can produce 13 BHP @ 8000 RPM &amp; 12.8 NM of Torque @ 6000 RPM. This is a 5-speed transmission.</p><p>On this valentine, ACI Motors Ltd is giving a cashback on the Yamaha FZS series. Before this for Yamaha also giving an offer which was&nbsp;<a href=\"https://www.bikebd.com/bn/yamaha-leap-year-exclusive-offer-2020-%e0%a6%8f%e0%a6%b8%e0%a6%bf%e0%a6%86%e0%a6%87-%e0%a6%ae%e0%a6%9f%e0%a6%b0%e0%a6%b8/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><strong>Yamaha Leap Year Exclusive Offer 2020</strong></a><strong>.</strong>&nbsp;It was also a cashback offer on Yamaha R15 V3 monster edition, R15 V3, Mt 15 and Fazer.</p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/02/yamaha-fzs-v3-abs-review-cashback-offer-2020.jpg\" alt=\"yamaha fzs v3 abs review cashback offer 2020\" height=\"500\" width=\"750\"></p><p>Yamaha always thinking about its customers. For this, they are always giving offers and discounts on their bikes. They already arranged many events for the bikers and this year they will still continue to do more.</p><p>The 2020 year has been started and this is the second month. Many of the motorcycles companies came forward with their discount and cashback offers. There are more to come this year.</p>', '2020-02-23 21:43:36', '2020-03-02 04:33:53', '2020-03-02 04:33:53'),
(4, 'Hero-Launches-Hero-Splendor+-IBS-in-Bangladesh', 'en', 6, 1, NULL, 'Hero Launches Hero Splendor+ IBS in Bangladesh', 'gggg', '', 'Hero MotoCorp Bangladesh launches Hero Splendor+ IBS (Integrated Braking System) in', '1582538179__219864.jpeg', 1, 'Hero MotoCorp Bangladesh launches Hero Splendor+ IBS (Integrated Braking System) in', '<p>Hero MotoCorp Bangladesh launches Hero Splendor+ IBS (<strong>Integrated Braking System</strong>) in Bangladesh with a price tag of 96,990 BDT in Bangladesh. The&nbsp;<a href=\"https://www.facebook.com/bikebangladesh/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\">bike</a>&nbsp;is the first in the 100 cc segment which comes with many unique features.</p><p class=\"ql-align-center\"><a href=\"https://bkdads.bikebd.com/www/delivery/ck.php?oaparams=2__bannerid=39__zoneid=19__cb=5ea0642574__oadest=https%3A%2F%2Fwww.facebook.com%2FYamahabd%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://bkdads.bikebd.com/www/images/1b13adc631e232de9bb17e7dd0f79d27.gif\" width=\"300\" height=\"250\"></a></p><p class=\"ql-align-center\"><img src=\"https://bkdads.bikebd.com/www/delivery/lg.php?bannerid=39&amp;campaignid=13&amp;zoneid=19&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Fhero-launches-hero-splendor-ibs-in-bangladesh%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2F&amp;cb=5ea0642574\" width=\"0\" height=\"0\"></p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/02/hero-splendor-ibs.jpg\" alt=\"hero splendor+ ibs\" width=\"800\" height=\"500\"></p><ol><li>They added in the bike is the&nbsp;<strong>Integrated Braking System (IBS)</strong>. This is when you press the foot brake lever both the front &amp; rear brakes are applied. This helps to increase braking efficiency &amp; also help to have more control over the bike.</li><li>Like&nbsp;<a href=\"https://www.bikebd.com/bn/hero-ignitor-%e0%a6%9f%e0%a7%87%e0%a6%b8%e0%a7%8d%e0%a6%9f-%e0%a6%b0%e0%a6%be%e0%a6%87%e0%a6%a1-%e0%a6%b0%e0%a6%bf%e0%a6%ad%e0%a6%bf%e0%a6%89-%e0%a6%9f%e0%a6%bf%e0%a6%ae-%e0%a6%ac%e0%a6%be%e0%a6%87/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\">Hero Ignitor</a>&nbsp;&amp;&nbsp;<a href=\"https://www.bikebd.com/hero-passion-x-pro-review-test-ride-review-team-bikebd/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\">Hero Passion X Pro</a>&nbsp;Hero added&nbsp;<strong>i3S technology</strong>&nbsp;in this bike which will shut down the engine when the bike will be sitting in the traffic and once the clutch is pulled the engine will start automatically, Hero believes that it will help the bike to burn less fuel.</li><li><img src=\"https://www.bikebd.com/wp-content/uploads/2020/02/hero-splendor-ibs-price-in-bangladesh.jpg\" alt=\"hero splendor+ ibs price in bangladesh\" width=\"800\" height=\"500\"></li><li>For the first time Hero added tubeless tires in this segment, &amp; also compare to previous versions of Splendor, this new Hero Splendor + IBS comes with&nbsp;<strong>80 sections front &amp; rear tire.</strong></li><li>They also added a new&nbsp;<strong>side stand indicator</strong>&nbsp;on the speedometer to warn the rider about the serious safety issues.</li><li>This bike gets&nbsp;<strong>130 mm drum brakes</strong>&nbsp;compared to 110 mm in the previous versions.</li></ol><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/02/hero-splendor-ibs-price.jpg\" alt=\"hero splendor + ibs price\" width=\"800\" height=\"500\"></p><p class=\"ql-align-center\"><a href=\"https://www.bikebd.com/adserv/www/delivery/ck.php?oaparams=2__bannerid=42__zoneid=17__cb=e9ccbc8235__oadest=https%3A%2F%2Fwww.facebook.com%2Fsuzukibd%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://www.bikebd.com/adserv/www/images/7bd881b7c8feb48367a6a0d4b5bf5e01.gif\" width=\"620\" height=\"90\"></a></p><p class=\"ql-align-center\"><img src=\"https://www.bikebd.com/adserv/www/delivery/lg.php?bannerid=42&amp;campaignid=19&amp;zoneid=17&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Fhero-launches-hero-splendor-ibs-in-bangladesh%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2F&amp;cb=e9ccbc8235\" width=\"0\" height=\"0\"></p><p>The event was inaugurated by&nbsp;The Honorable Chairman of HMCL Niloy Bangladesh Limited and Nitol Niloy Group, Mr. Abdul Matlub Ahmad,The Honorable Managing Director of HMCL Niloy Bangladesh Limited and Niloy Motors Limited, Mr. Abdul Musabbir Ahmad,&nbsp;the Chief Operating Officer of HMCL Niloy Bangladesh Limited, Mr. Nagendra Dwivedi and the Chief Financial Officer of HMCL Niloy Bangladesh Limited, Mr. Bijoy Mondal.</p><p class=\"ql-align-center\"><a href=\"https://www.bikebd.com/adserv/www/delivery/ck.php?oaparams=2__bannerid=51__zoneid=16__cb=90223b8b1a__oadest=https%3A%2F%2Fwww.facebook.com%2Fbdkawasaki%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://www.bikebd.com/adserv/www/images/2f691bd3927bd43facd1bfd2fc1896b1.jpg\" width=\"300\" height=\"250\"></a></p><p class=\"ql-align-center\"><img src=\"https://www.bikebd.com/adserv/www/delivery/lg.php?bannerid=51&amp;campaignid=24&amp;zoneid=16&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Fhero-launches-hero-splendor-ibs-in-bangladesh%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2F&amp;cb=90223b8b1a\" width=\"0\" height=\"0\"></p><p>If you see that the changes they made are small but adding all those things together this new version of the bike is just priced 3000 BDT. The engine of the bike is BSIV compliance &amp; feature AHO, self &amp; kick starter.</p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/02/nitol-niloy-group-chairman.jpg\" alt=\"nitol niloy group chairman\" width=\"800\" height=\"500\"></p><p>The engine is mated with a 4-speed gearbox and the engine produces 8.1 BHP @ 8000 RPM &amp; 8 NM of Torque @ 5000 RPM.</p><p>They gave the bike telescopic front hydraulic shock absorbers while 5 steps adjustable hydraulic shock absorber on the rear. The bike weighs 113 kg and has a fuel tank capacity of 10.5 liters.</p>', '2020-02-23 21:56:19', '2020-03-11 00:45:14', NULL),
(5, 'CLUB-KPR-Picnic-2020', 'en', 8, 1, NULL, 'CLUB KPR Picnic 2020', 'gggg', '', 'For the 3rd straight year running CLUB KPR organized their annual picnic at Murapara', '1582538259__332524.jpeg', 2, 'For the 3rd straight year running CLUB KPR organized their annual picnic at Murapara', '<p>For the 3rd straight year running&nbsp;<strong>CLUB KPR</strong>&nbsp;organized their annual picnic at Murapara University College, Rupgonj, Narayanganj. This was by far the biggest event from them this year with over 850+ bikers attended the event, some even bought their family &amp; friends. The whole event was backed up by the admin &amp; moderators of&nbsp;<a href=\"https://www.facebook.com/groups/kpr.bd/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><strong>Club KPR</strong></a>&nbsp;with supports from&nbsp;<strong>Rasel Industries Ltd</strong>.</p><p class=\"ql-align-center\"><a href=\"https://bkdads.bikebd.com/www/delivery/ck.php?oaparams=2__bannerid=39__zoneid=19__cb=32caab6e8e__oadest=https%3A%2F%2Fwww.facebook.com%2FYamahabd%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://bkdads.bikebd.com/www/images/1b13adc631e232de9bb17e7dd0f79d27.gif\" height=\"250\" width=\"300\"></a></p><p class=\"ql-align-center\"><img src=\"https://bkdads.bikebd.com/www/delivery/lg.php?bannerid=39&amp;campaignid=13&amp;zoneid=19&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Fclub-kpr-picnic-2020%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2F&amp;cb=32caab6e8e\" height=\"0\" width=\"0\"></p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/02/club-kpr-picnic-2020-bikebd.jpg\" alt=\"club kpr picnic 2020 bikebd\" height=\"500\" width=\"667\"></p><p>The event started early in the morning with a cricket match between few teams, then as the sun rose in the sky bikers from around Dhaka &amp; other cities started to come to the event ground. Mostly there will&nbsp;<a href=\"https://www.bikebd.com/lifan-kpr-165r-test-ride-review-team-bikebd/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\">Lifan KPR</a>&nbsp;users but we found that there were some other bike brands or groups who also attended the event.</p><p class=\"ql-align-center\"><a href=\"https://www.bikebd.com/adserv/www/delivery/ck.php?oaparams=2__bannerid=42__zoneid=17__cb=8bb787b5d3__oadest=https%3A%2F%2Fwww.facebook.com%2Fsuzukibd%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://www.bikebd.com/adserv/www/images/7bd881b7c8feb48367a6a0d4b5bf5e01.gif\" height=\"90\" width=\"620\"></a></p><p class=\"ql-align-center\"><img src=\"https://www.bikebd.com/adserv/www/delivery/lg.php?bannerid=42&amp;campaignid=19&amp;zoneid=17&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Fclub-kpr-picnic-2020%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2F&amp;cb=8bb787b5d3\" height=\"0\" width=\"0\"></p><p>This was an open event, anyone who signs in for the registration had the chance to participate in the event. There was some bikers game show like slow race, musical chair, running with sack &amp; many others. Just before lunch break one of the most prominent stunt group in Bangladesh,&nbsp;<strong>Road Riderz</strong>&nbsp;performed&nbsp;<strong>STUNT SHOW&nbsp;</strong>on the event ground.</p><p class=\"ql-align-center\"><a href=\"https://www.bikebd.com/adserv/www/delivery/ck.php?oaparams=2__bannerid=51__zoneid=16__cb=7e243dc098__oadest=https%3A%2F%2Fwww.facebook.com%2Fbdkawasaki%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://www.bikebd.com/adserv/www/images/2f691bd3927bd43facd1bfd2fc1896b1.jpg\" height=\"250\" width=\"300\"></a></p><p class=\"ql-align-center\"><img src=\"https://www.bikebd.com/adserv/www/delivery/lg.php?bannerid=51&amp;campaignid=24&amp;zoneid=16&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Fclub-kpr-picnic-2020%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2F&amp;cb=7e243dc098\" height=\"0\" width=\"0\"></p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/02/suvro-sen-bikebd-ceo.jpg\" alt=\"suvro sen bikebd ceo\" height=\"500\" width=\"375\"></p><p>Road Riderz stunt show was coordinated by Hasan Setu &amp; Chinmoy Sarkar. Also some of the finalist of Pulsar Stunt Mania also performed in the stunt show. After stunt performance there were lunch and then some more game show. Before the sun settles the prize-giving ceremony was conducted were the first winners received a KYT NX Race Carbon as the first prize. Also others gifts were sponosred by GearX Bangladesh who are the official distrubutor of Bilmola &amp; KYT Helmet in Bangladesh. Around 45 different winners got gifts who participated in the raffle draw.</p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/02/lifan-kpr-picnic-club-kpr.jpg\" alt=\"lifan kpr picnic club kpr\" height=\"720\" width=\"959\"></p><p>It was a wonderful event for the bikers who attended, although there wasn’t too much site seeing space around the event but many bikers met fellow bikers after a long time &amp; many were occupied with chit chat with each other.</p><p>Talking with the Chairman of Rasel Industries Ltd,&nbsp;<strong>Mr. Nurul Abser Rasel,</strong>&nbsp;he said that he is attending this type of event for the past 3 years and want to continue this momentum in the future program to make it even larger. The event ended with DJ Party where as always the bikers did some Helmet Dance.</p>', '2020-02-23 21:57:39', '2020-03-04 00:41:21', NULL),
(6, 'উদ্ভট-যত-ট্রাফিক-আইন-।-চালক-মাতাল-হলে-যাত্রীর-জরিমানা', 'bn', 2, 2, NULL, 'উদ্ভট যত ট্রাফিক আইন । চালক মাতাল হলে যাত্রীর জরিমানা', 'jhhj', 'Bajaj-Launches-Bajaj-Pulsar-NS160-A', 'আজ আমরা উদ্ভট যত ট্রাফিক আইন আছে সেগুলো নিয়ে জানবো। আপনি যদি এই আইন সর্ম্প', '1582539445__971515.jpeg', 1, 'আজ আমরা উদ্ভট যত ট্রাফিক আইন আছে সেগুলো নিয়ে জানবো। আপনি যদি এই আইন সর্ম্পকে জানেন তাহলে হয়তো ', '<p></p>', '2020-02-23 22:17:25', '2020-03-01 23:29:05', NULL),
(7, 'কম-দামে-বাইক-আনলো-জনপ্রিয়-ব্রান্ড-শাওমি-।-বাইকবিডি', 'bn', 3, 2, NULL, 'কম দামে বাইক আনলো জনপ্রিয় ব্রান্ড শাওমি । বাইকবিডি', 'eeeee', '', 'কম দামে বাইক আনলো জনপ্রিয় ব্রান্ড শাওমি । বাইকবিডিকম দামে বাইক আনলো জনপ্রিয় ব্রান্ড শাওমি । বাইকবিডি', '1582539837__278818.jpeg', 1, 'কম দামে বাইক আনলো জনপ্রিয় ব্রান্ড শাওমি । বাইকবিডিকম দামে বাইক আনলো জনপ্রিয় ব্রান্ড শাওমি । বাইকবিডি', '<p><a href=\"https://bikebd.com/bn/wp-content/uploads/2020/02/%E0%A6%B9%E0%A6%BF%E0%A6%AE%E0%A7%8B-%E0%A6%9F%E0%A6%BF-%E0%A6%93%E0%A7%9F%E0%A6%BE%E0%A6%A8.jpg\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(13, 12, 13);\"><img src=\"https://bikebd.com/bn/wp-content/uploads/2020/02/%E0%A6%B9%E0%A6%BF%E0%A6%AE%E0%A7%8B-%E0%A6%9F%E0%A6%BF-%E0%A6%93%E0%A7%9F%E0%A6%BE%E0%A6%A8.jpg\" alt=\"হিমো টি ওয়ান\" height=\"500\" width=\"800\"></a></p><p>ইলেক্ট্রিক মোটরসাইকেলটিতে রয়েছে ফ্রন্ট সাসপেনশন ফর্ক, ডুয়াল কয়েলওভার রিয়ার সাসপেনশন, রিয়ার সাইড ড্রাম ব্রেক এবং ফ্রন্ট সাইড হাইড্রোলিক ডিস্ক ব্রেক। অন্যান্য ফিচারের মধ্যে রয়েছে ওয়ান বাটন স্টার্ট, মাল্টি ফাংশন কম্বিনেশন সুইচ এবং ডিজিটাল ডিসপ্লে। এছাড়াও রয়েছে ৯০ এমএম ওয়াইড টায়ার, এলইডি লাইট। এছাড়া মাঝ পথে চার্জ শেষ হয়ে গেলে প্যাডেল করে মোটরসাইকেল চালানোর ব্যবস্থাও রয়েছে।</p><p>হিমো টি ওয়ান-এর ওজন ৫৩ কেজি। সর্বোচ্চ গতিবেগ ঘন্টায় ২৫ কিলোমিটার।<img src=\"data:image/jpeg;base64,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\">কম দামে বাইক আনলো জনপ্রিয় ব্রান্ড শাওমি । বাইকবিডিPosted by:&nbsp;<a href=\"https://www.bikebd.com/bn/author/titir/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(170, 170, 170);\">Ashik Mahmud</a><a href=\"https://www.bikebd.com/bn/author/titir/\" rel=\"noopener noreferrer\" target=\"_blank\">&nbsp;February 20, 2020</a></p><p>সময়ের সাথে সাথে পুরো বিশ্ব এখন গ্লোবাল ওয়ার্মিং দিকে অনেক বেশি সচেতন। তাই উন্নত বিশ্বগুলো এখন ইলেক্ট্রিক বাইক তৈরির দিকে বিশেষভাবে নজর দিয়েছে। এই তালিকায় এবার যুক্ত হলো উন্নত প্রযুক্তির ইলেক্ট্রিক বাইক। চীনের বাজারে ইলেক্ট্রিক বাইক নিয়ে এলো জনপ্রিয় ব্রান্ড শাওমি। স্মার্টফোন, স্মার্টটিভি, ইলেকট্রিক বাইক শাওমির জন্য কিন্তু নতুন কিছু নয়।<img src=\"https://bikebd.com/bn/wp-content/uploads/2020/02/%E0%A6%AA%E0%A6%A5-%E0%A6%A8%E0%A6%BE-%E0%A6%9C%E0%A7%87%E0%A6%A8%E0%A7%87-%E0%A6%B0%E0%A6%BE%E0%A6%B8%E0%A7%8D%E0%A6%A4%E0%A6%BE%E0%A7%9F-%E0%A6%A8%E0%A6%BE%E0%A6%AE%E0%A6%B2%E0%A7%87-%E0%A6%9C%E0%A6%B0%E0%A6%BF%E0%A6%AE%E0%A6%BE%E0%A6%A8%E0%A6%BE.jpg\"></p><p><br></p><p></p><p></p><p></p>', '2020-02-23 22:23:57', '2020-03-01 06:48:51', NULL),
(8, 'আয়োজিত-হয়ে-গেল-ক্লাব-কেপিআর-২০২০-এর-পিকনিক-!', 'bn', 15, 2, NULL, 'আয়োজিত হয়ে গেল ক্লাব কেপিআর ২০২০ এর পিকনিক !', 'ggggkk', 'Hero-Launches-Hero-Splendor+-IBS-in-Bangladesh', 'আয়োজিত হয়ে গেল ক্লাব কেপিআর ২০২০ এর পিকনিক !আয়োজিত হয়ে গেল ক্লাব কেপিআর ২০২০ এর পিকনিক !', '1582540021__385214.jpeg', 1, 'আয়োজিত হয়ে গেল ক্লাব কেপিআর ২০২০ এর পিকনিক !আয়োজিত হয়ে গেল ক্লাব কেপিআর ২০২০ এর পিকনিক !', '<p>  </p><p>০+ বাইকার এই ইভেন্টে অংশ গ্রহন করেছিল । তাদের অনেকে পরিবার পরিজন, বন্ধু-বান্ধবসহ এই ইভেন্টে অংশ নিয়ে ছিল । পুরো ইভেন্টটি আয়োজন করেছ<strong>ক্লাব কেপিআর</strong>&nbsp;এবং সহযোগী হিসেবে তাদের সাথে ছিল&nbsp;<strong>রাসেল ইন্ডাস্ট্রিজ লিমিটেড</strong>&nbsp;।</p><p class=\"ql-align-center\"><img src=\"https://bkdads.bikebd.com/www/delivery/lg.php?bannerid=0&amp;campaignid=0&amp;zoneid=18&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Fbn%2F%25e0%25a6%2595%25e0%25a7%258d%25e0%25a6%25b2%25e0%25a6%25be%25e0%25a6%25ac-%25e0%25a6%2595%25e0%25a7%2587%25e0%25a6%25aa%25e0%25a6%25bf%25e0%25a6%2586%25e0%25a6%25b0-%25e0%25a7%25a8%25e0%25a7%25a6%25e0%25a7%25a8%25e0%25a7%25a6-%25e0%25a6%25aa%25e0%25a6%25bf%25e0%25a6%2595%25e0%25a6%25a8%25e0%25a6%25bf%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2Fbn%2F&amp;cb=127c201621\" height=\"0\" width=\"0\"></p><p class=\"ql-align-center\"><a href=\"https://bkdads.bikebd.com/www/delivery/ck.php?oaparams=2__bannerid=39__zoneid=19__cb=5a9078079a__oadest=https%3A%2F%2Fwww.facebook.com%2FYamahabd%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(46, 72, 242);\"><span><img src=\"https://bkdads.bikebd.com/www/images/1b13adc631e232de9bb17e7dd0f79d27.gif\" height=\"250\" width=\"300\"></span></a></p><p class=\"ql-align-center\"><img src=\"https://bkdads.bikebd.com/www/delivery/lg.php?bannerid=39&amp;campaignid=13&amp;zoneid=19&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Fbn%2F%25e0%25a6%2595%25e0%25a7%258d%25e0%25a6%25b2%25e0%25a6%25be%25e0%25a6%25ac-%25e0%25a6%2595%25e0%25a7%2587%25e0%25a6%25aa%25e0%25a6%25bf%25e0%25a6%2586%25e0%25a6%25b0-%25e0%25a7%25a8%25e0%25a7%25a6%25e0%25a7%25a8%25e0%25a7%25a6-%25e0%25a6%25aa%25e0%25a6%25bf%25e0%25a6%2595%25e0%25a6%25a8%25e0%25a6%25bf%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2Fbn%2F&amp;cb=5a9078079a\" height=\"0\" width=\"0\"></p><p><a href=\"https://bikebd.com/bn/wp-content/uploads/2020/02/club-kpr-picnic-2020-bikebd.jpg\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(46, 72, 242);\"><span><img src=\"https://bikebd.com/bn/wp-content/uploads/2020/02/club-kpr-picnic-2020-bikebd.jpg\" alt=\"club kpr picnic 2020 bikebd\" height=\"500\" width=\"667\"></span></a></p><p>এই ইভেন্টের শুরু হয় সকালে কয়েকটি দলের ক্রিকেট ম্যাচের মাধ্যমে । সূর্য ওঠার সাথে সাথে ঢাকা এবং আসে পাশ থেকে বাইকাররা ইভেন্ট প্রাঙ্গনে এসে উপস্থিত হয় । বেশির ভাগ বাইক ছিল&nbsp;<span style=\"color: rgb(46, 72, 242);\">লিফান কেপিআর</span>িল&nbsp;রোড রাইডার্জ এর স্টান্ট শোটি কো-অর্ডিনেট করেছিল হাসান সেতু ও চিন্ময় সরকার । এছাড়া পালসার স্টান্ট ম্যানিয়ার কয়েকজন প্রতিযোগী এখানে তাদের পারফর্মেন্স শো করেছে । সূর্যাস্তের আগেই পুরস্কার বিতরনি অনুষ্ঠান শুরু হয় ।</p><p>যিনি প্রথম হয়েছেন তিনি পেয়েছেন KYT NFR Carbon হেলমেট । প্রায় ৪৫জন ভিন্ন ভিন্ন প্রতিযোগী ভিন্ন ভিন্ন প্রতিযোগীতায় পুরস্কার পান এবং এছাড়া র‍্যাফেল ড্র তে বিজয়ীদের মাঝে পুরস্কার বিতরন করা হয় ।</p><p>বাইকারদের জন্য এটি একটি দারুন ইভেন্ট ছিল । যদিও আসে পাশে ঘুরে দেখার মত তেমন অবস্থা ছিল না, তবুও বাইকাররা তাদের বাইকার ভাইদের সাথে অনেক দিন পর দেখা করেছেন, আড্ডা দিয়েছেন । বলা যায় নিজেদের মধ্যের ভাতৃত্বকে আরও দৃঢ় কর<img src=\"https://bikebd.com/bn/wp-content/uploads/2020/02/lifan-kpr-picnic-club-kpr.jpg\">েছেন ।</p><p><br></p>', '2020-02-23 22:27:02', '2020-03-01 23:28:38', NULL);
INSERT INTO `blogs` (`id`, `slug`, `language`, `clickview`, `admin_id`, `superadmin_id`, `title`, `keyword`, `url`, `metadescription`, `postimage`, `status`, `shortdescription`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(9, 'টেস্ট-রাইড-রিভিউ-–-টিম-বাইকবিডি', 'bn', 1, 2, NULL, 'টেস্ট রাইড রিভিউ – টিম বাইকবিডি', 'gggg', '', 'Hero MotoCorp Bangladesh launches Hero Splendor+ IBS (Integrated Braking ', '1582540447__798381.jpeg', 1, 'Hero MotoCorp Bangladesh launches Hero Splendor+ IBS (Integrate', '<p><span style=\"color: rgb(51, 51, 51);\"><img src=\"data:image/jpeg;base64,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\">হিরো বাংলাদেশের অন্যতম জনপ্রিয় টু হুইলার ব্র্যান্ড। এবছরেই তারা বাংলাদেশে ২টি কমিউটিং মোটরসাইকেল এবং একটি স্কুটার লঞ্চ করেছে। আজ আমরা নিয়ে এসেছি ওদের মধ্যে একটি বাইক</span><strong style=\"color: rgb(51, 51, 51);\">Hero Passion X Pro এর টেস্ট রাইড রিভিউ</strong><span style=\"color: rgb(51, 51, 51);\">&nbsp;।</span></p><p><span style=\"color: rgb(51, 51, 51);\"><br></span></p><p></p><p><span style=\"color: rgb(51, 51, 51);\">ডিজাইন এর দিক থেকে বাইকটি এই সেগমেন্ট এর সকল এক্সিকিউটিভ কমিউটার এর এক্সপেক্টেশন ধরে রেখেছে। বাইকটিতে একটি এনালগ স্পীডোমিটার এর সাথে একটি ডিজিটাল মিটার রয়েছে, যেটা ফুয়েল ট্যাংক ক্যাপাসিটি এবং অডোমিটার শো করে। বাইকটিতে সেফটি ফিচার হিসেবে একটি সাইড স্ট্যান্ড ইন্ডিকেটর রয়েছে। বাইকটির মিটারের ডিজিটাল ইউনিটটাতে নীল ব্যাকগ্রাউন্ড রয়েছে, যার ফলে দিনে এবং রাতে লেখা পড়তে কোন সমস্যা হয় না।</span><span style=\"color: rgb(51, 51, 51);\"></span></p><p><span style=\"color: rgb(51, 51, 51);\">,&nbsp;</span></p>', '2020-02-23 22:34:08', '2020-03-01 06:50:59', NULL),
(10, 'Comparison-Review', 'en', 0, 1, NULL, 'Hornet-ABS VS FZS-ABS VS NS160-ABS Feature Comparison Review', 'newsuzuki', '', 'Hornet-ABS VS FZS-ABS VS NS160-ABS Feature Comparison ReviewHornet-ABS VS FZS-ABS VS NS160-ABS Feature Comparison Review', '1582621232__616686.jpeg', 2, 'Hornet-ABS VS FZS-ABS VS NS160-ABS Feature Comparison ReviewHornet-ABS VS FZS-ABS VS NS160-ABS Feature Comparison Review', '<p class=\"ql-align-justify\">The time has come when a buyer should face the complexity of getting diversified featured of motorcycles common in the market. Thus, people may get confused to make a proper buying decision even within a specific category. Hence, the same sequence is now present here in Bangladesh. That’s the reason pushed us to represent the Hornet-ABS VS FZS-ABS VS NS160-ABS Feature Comparison Review. So, let’s make a few bits of knowledge in detail and thus somewhat make you more confused!</p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/01/hornet-abs-vs-fzs-abs-vs-ns160-abs-feature-comparison-review.jpg\" alt=\"hornet-abs vs fzs-abs vs ns160-abs feature comparison review\" height=\"381\" width=\"800\"></p><h2><strong><u>Hornet-ABS VS FZS-ABS VS NS160-ABS Overview</u></strong></h2><p class=\"ql-align-justify\">In the first clause of comparison, the looks, design, and appearance somewhat take the priority. Here, all the three discussed models from Honda, Yamaha, and Bajaj are already known figure in the market. Hence most of the features of the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Motorcycle\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\">motorcycles</a>&nbsp;are very much known to the moto enthusiasts.</p><p class=\"ql-align-justify\">Thereby, not ignoring this vital corner we can enlighten that all the discussed models here refreshed with muscular, catchy and bold figures &amp; appearances. Coming to the core concern, the design &amp; appearance of the ABS-models are kept idle accept adding few cosmetic enhancements.</p><p class=\"ql-align-justify\">Here Honda CB&nbsp;<a href=\"https://www.bikebd.com/honda-cb-hornet-160r-vs-honda-xblade-feature-comparison/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\">Hornet 160R</a>&nbsp;ABS crafted with all-new attractive graphics work. Furthermore, exterior enhancement comes on the headlamp assembly. It’s completely a new unit that facilitated with dedicated multi-pit LED headlamp including LED DRL. Side by side ODO display and control switches are also got a refreshment.</p><p class=\"ql-align-justify\">Coming to the new Yamaha&nbsp;<a href=\"https://www.bikebd.com/antilock-braking-system-abs-fzs-fi-v3/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\">FZS-FI V3</a>&nbsp;ABS, it’s completely a new machine from top to bottom. It comes with unmatched &amp; unique design and exterior than the predecessor. It designed bold, bulky, muscled, and quite a rounded theme applied very precisely. Hence it created a new appearance, appeal, and attraction among the enthusiasts.</p><p class=\"ql-align-center\"><a href=\"https://bkdads.bikebd.com/www/delivery/ck.php?oaparams=2__bannerid=39__zoneid=19__cb=89cd9ed2ad__oadest=https%3A%2F%2Fwww.facebook.com%2FYamahabd%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://bkdads.bikebd.com/www/images/1b13adc631e232de9bb17e7dd0f79d27.gif\" height=\"250\" width=\"300\"></a></p><p class=\"ql-align-center\"><img src=\"https://bkdads.bikebd.com/www/delivery/lg.php?bannerid=39&amp;campaignid=13&amp;zoneid=19&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Fhornet-abs-vs-fzs-abs-vs-ns160-abs-feature-comparison-review%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2F&amp;cb=89cd9ed2ad\" height=\"0\" width=\"0\"></p><p class=\"ql-align-justify\">In the Bajaj Pulsar&nbsp;<a href=\"https://www.bikebd.com/bajaj-pulsar-ns160-feature-review/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\">NS160-FI</a>&nbsp;ABS, the machine remaining the same as the non-ABS version. Hence the looks, design, and appearances all are remaining unchanged. Further, the new variant identified with the new graphic design and color scheme. Hence, the ABS sensor fence mounted on the hydraulic disk and bikini underbelly cowling exposes the new model identity.</p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/01/hornet-abs-vs-fzs-abs-vs-ns160-abs-wheel-brake-suspension-1.jpg\" height=\"450\" width=\"800\"></p><h2><strong><u>Frame, Wheel, Brake &amp; Suspension System</u></strong></h2><p class=\"ql-align-justify\">All the three motorcycles picked here are covering the same street naked category. Further, the motorcycles are profiled attractively with some sporty features. Hence somewhat they carrying the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Streetfighter\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\">streetfighter</a>&nbsp;attitude and attire. Thereby not to mention but surely, they can be categorized as power&nbsp;<a href=\"https://www.bikebd.com/commuter-motorcycle-feature-characteristics/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\">commuters</a>.</p><p class=\"ql-align-justify\">Here all the models came with attractive packages in terms of frame, wheel, brake, and suspension systems. This corner is now updated with the latest enhancements that literally pushed us to bring this comparison. Whatsoever, Hornet 160R-ABS and FZS-FI V3 came with a steel-pipe diamond frame. On the counter, NS160-FI ABS comes with a perimeter frame.</p><p class=\"ql-align-justify\">In the wheel setup, all the motorcycles carrying versatile features. Hornet 160R and FZS-FI holding a wider &amp; lower profile of wheel and tire setup. Those are respectively 100/80-17 &amp; 140/70-17 and 100/80-17 &amp; 140/60-17 in Hornet &amp; FZS-FI. But in counter NS160-FI holding quite a narrower wheel setup, that is 90/90-17 &amp; 180/80-17 in front &amp; rear. Further, all the motorcycles here featured with alloy rims and tubeless tires.</p><p class=\"ql-align-justify\">In the braking system, all the models here carrying the hydraulic disk brake system in both wheels. But Hornet 160R and NS160-FI also available in optional rear drum brake setup. In common all the three models equipped with non-switchable single-channel ABS features.</p><p class=\"ql-align-center\"><a href=\"https://www.bikebd.com/adserv/www/delivery/ck.php?oaparams=2__bannerid=42__zoneid=17__cb=251e363474__oadest=https%3A%2F%2Fwww.facebook.com%2Fsuzukibd%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://www.bikebd.com/adserv/www/images/7bd881b7c8feb48367a6a0d4b5bf5e01.gif\" height=\"90\" width=\"620\"></a></p><p class=\"ql-align-center\"><img src=\"https://www.bikebd.com/adserv/www/delivery/lg.php?bannerid=42&amp;campaignid=19&amp;zoneid=17&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Fhornet-abs-vs-fzs-abs-vs-ns160-abs-feature-comparison-review%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2F&amp;cb=251e363474\" height=\"0\" width=\"0\"></p><p class=\"ql-align-justify\">Further in the suspension system, all are carrying upright hydraulic telescopic fork suspension in the front and rear is mono. Here Hornet &amp; FZS holding quite a fatter profile shock absorber in the front. In favor, NS160-FI holding gas-charged Nitrox mono-shock setup at the rear.</p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/01/hornet-abs-vs-fzs-abs-vs-ns160-abs-engine-specification-power-performance.jpg\" alt=\"hornet-abs vs fzs-abs vs ns160-abs feature comparison review\" height=\"290\" width=\"800\"></p><h2><strong><u>Hornet-ABS VS FZS-ABS VS NS160-ABS Engine &amp; Performances</u></strong></h2><p class=\"ql-align-justify\">Being the updated and latest release, all the three discussed motorcycles here holding a varied engine tweaking and power rating. In common all the motorcycles here carrying single-cylinder, four-stroke engines but they featured differently.</p><p class=\"ql-align-justify\">Here, the Hornet 160R-ABS and FZS-FI V3 carrying an air-cooled 2-valve engine. But Hornet holding the conventional carburetor fuel feeding setup. Hence that ensures hassle-free maintenances and helps to minimize fuel contamination issues. On the counter, the FZS-FI engine featured with an Electronic Fuel-Injection system that provides altitude &amp; environment compatibility and précised fuel efficiency.</p><p class=\"ql-align-justify\">In the Pulsar NS160-FI, the engine is featured with digital twin-spark ignition (DTS-I) including 4-valve and oil-cooling features. Moreover, adding new EFI replacing the old carburetor system made the engine more capable to deal against the rivals. Hence, considering engine displacement volume and other features &amp; tweaking their performance figures are different.</p><p class=\"ql-align-justify\">Here, Hornet rated to deliver 11.1KW of power and 14.5NM of torque from its 162.71cc engine. The FZS-FI V3 (BS-IV) figured with 9.7KW of power and 12.8NM of torque from its 149cc engine. So on, Pulsar NS160-FI is tweaked for 11.4KW of power and 14.12NM of torque from its 160.3cc engine.</p><p class=\"ql-align-justify\">Meanwhile, all the engines here are BS-IV standard engine. But above all we should keep in mind, different weights, dimensions, and aerodynamics have a vital effect on real road performances. Furthermore, control, comfort, balance, and smoothness definitely matter in the long run.</p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/01/hornet-abs-vs-fzs-abs-vs-ns160-abs-body-design.jpg\" height=\"340\" width=\"800\"></p><h2><strong><u>Hornet-ABS VS FZS-ABS VS NS160-ABS – Added Features</u></strong></h2><p class=\"ql-align-justify\">The new Hornet 160R-ABS, FZS-FI ABS, Pulsar NS160-FI ABS, all the bikes placed with new enhancements of features. Here Hornet 160R and Pulsar NS160 is quite a familiar model in the market. But the Yamaha FZS-FI V3 is the all-new model in this row. Hence, more or less all of the models here came with some new features and enhancements. So, here are those.</p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/01/honda-cb-hornet-160r-abs-feature-specification-review-price.jpg\" height=\"477\" width=\"800\"></p><h3><u>Honda Hornet 160R-FI ABS</u></h3><ul><li class=\"ql-align-justify\">All-new color &amp; graphics scheme.</li><li class=\"ql-align-justify\">BS-IV compliant HET Engine.</li><li class=\"ql-align-justify\">All-new LED headlamp setup including a newly designed LED DRL System.</li><li class=\"ql-align-justify\">Fully DC electrical system.</li><li class=\"ql-align-justify\">Blue backlit digital ODO console.</li><li class=\"ql-align-justify\">Newly designed control switch assembly and extended Sharee-guard.</li><li class=\"ql-align-justify\">Hazard light system.</li><li class=\"ql-align-justify\">Impressive single-channel ABS including CBS enhancement.</li></ul><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/01/yamaha-fzs-fi-v3-abs-feature-specification-review-price-top-speed.jpg\" height=\"450\" width=\"800\"></p><p class=\"ql-align-center\"><a href=\"https://www.bikebd.com/adserv/www/delivery/ck.php?oaparams=2__bannerid=51__zoneid=16__cb=94a6dc3011__oadest=https%3A%2F%2Fwww.facebook.com%2Fbdkawasaki%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://www.bikebd.com/adserv/www/images/2f691bd3927bd43facd1bfd2fc1896b1.jpg\" height=\"250\" width=\"300\"></a></p><p class=\"ql-align-center\"><img src=\"https://www.bikebd.com/adserv/www/delivery/lg.php?bannerid=51&amp;campaignid=24&amp;zoneid=16&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Fhornet-abs-vs-fzs-abs-vs-ns160-abs-feature-comparison-review%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2F&amp;cb=94a6dc3011\" height=\"0\" width=\"0\"></p><h3><u>Yamaha FZS-FI V3 ABS</u></h3><ul><li class=\"ql-align-justify\">Completely new look, design &amp; Appearance. Hence, it’s an all-new machine.</li><li class=\"ql-align-justify\">Newly refined and tweaked engine for smooth operation and performances.</li><li class=\"ql-align-justify\">Fuel feeding updated with Electronic Fuel Injection System.</li><li class=\"ql-align-justify\">All LED headlamp and newly designed negative display ODO panel.</li><li class=\"ql-align-justify\">Single-channel ABS with dual hydraulic disc brakes.</li><li class=\"ql-align-justify\">Improved body design and ergonomics for premium braking, control, comfort, and stability.</li></ul><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/01/pulsar-ns160-fi-abs-feature-specification-review-price.jpg\" height=\"358\" width=\"800\"></p><h3><u>Bajaj Pulsar NS160R-FI ABS</u></h3><ul><li class=\"ql-align-justify\">More eye-catchy graphics and color scheme with aggressive street macho design.</li><li class=\"ql-align-justify\">BS-IV compliant DTS-I engine including new Fuel Injection system.</li><li class=\"ql-align-justify\">Braking system updated with impressive single-channel ABS enhancement including wider hydraulic disk brakes.</li><li class=\"ql-align-justify\">The tire dimension improved with a wider profile rear tire for better braking and controlling stability.</li><li class=\"ql-align-justify\">Overall performance figure tweaked with newly added EFI system ensuring BS-IV compliance.</li></ul><p class=\"ql-align-justify\"><img src=\"https://www.bikebd.com/wp-content/uploads/2020/01/hornet-abs-vs-fzs-abs-vs-ns160-abs-speedometer.jpg\" alt=\"hornet-abs vs fzs-abs vs ns160-abs feature comparison review\" height=\"271\" width=\"800\"></p><h2><strong><u>Hornet-ABS VS FZS-FI V3 ABS VS NS160-FI ABS Specification Comparison Table</u></strong></h2><p><br></p><p><br></p><p class=\"ql-align-justify\"><img src=\"https://www.bikebd.com/wp-content/uploads/2020/01/hornet-abs-vs-fzs-abs-vs-ns160-abs-led-headlamp.jpg\" alt=\"hornet-abs vs fzs-abs vs ns160-abs feature comparison review\" height=\"348\" width=\"800\"></p><h2><strong><u>Hornet-ABS VS FZS-ABS VS NS160-ABS Feature Comparison Review</u></strong></h2><p class=\"ql-align-justify\">So, readers, these are the comparative view of the features of Honda CB Hornet 160R-ABS, Yamaha FZS-FI V3 ABS and Pulsar NS160-FI ABS. Now at the last let’s face the reality, therefore, the pricing. Here all the bikes coming in our market in CBU conditions. Hence the price tags are as bellow.</p><p class=\"ql-align-justify\">Honda CB Hornet 160R ABS:&nbsp;2,55,000 BDT</p><p class=\"ql-align-justify\">Yamaha FZS-FI V3 ABS:&nbsp;&nbsp;2,77,000 BDT</p><p class=\"ql-align-justify\">Bajaj Pulsar NS160-FI ABS:&nbsp;&nbsp;&nbsp;2,54,900 BDT</p><p class=\"ql-align-justify\">So, the decision is yours. Pick your bike according to your needs, requirements and of course within your budget. Thanks, everyone.</p><p><br></p>', '2020-02-24 21:00:32', '2020-02-29 03:41:43', NULL),
(11, 'Hornet-ABS-VS-VS-NS160-ABS-Feature-Comparison-Review', 'en', 0, 1, NULL, 'Hornet-ABS VS FZS-ABS  Feature Comparison Review', 'newsuzuki', '', 'Hornet-ABS VS FZS-ABS VS NS160-ABS Feature Comparison ReviewHornet-ABS VS FZS-ABS VS NS160-ABS Feature Comparison Review', '1582621272__180337.jpeg', 2, 'Hornet-ABS VS FZS-ABS VS NS160-ABS Feature Comparison ReviewHornet-ABS VS FZS-ABS VS NS160-ABS Feature Comparison Review', '<p class=\"ql-align-justify\">The time has come when a buyer should face the complexity of getting diversified featured of motorcycles common in the market. Thus, people may get confused to make a proper buying decision even within a specific category. Hence, the same sequence is now present here in Bangladesh. That’s the reason pushed us to represent the Hornet-ABS VS FZS-ABS VS NS160-ABS Feature Comparison Review. So, let’s make a few bits of knowledge in detail and thus somewhat make you more confused!</p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/01/hornet-abs-vs-fzs-abs-vs-ns160-abs-feature-comparison-review.jpg\" alt=\"hornet-abs vs fzs-abs vs ns160-abs feature comparison review\" height=\"381\" width=\"800\"></p><h2><strong><u>Hornet-ABS VS FZS-ABS VS NS160-ABS Overview</u></strong></h2><p class=\"ql-align-justify\">In the first clause of comparison, the looks, design, and appearance somewhat take the priority. Here, all the three discussed models from Honda, Yamaha, and Bajaj are already known figure in the market. Hence most of the features of the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Motorcycle\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\">motorcycles</a>&nbsp;are very much known to the moto enthusiasts.</p><p class=\"ql-align-justify\">Thereby, not ignoring this vital corner we can enlighten that all the discussed models here refreshed with muscular, catchy and bold figures &amp; appearances. Coming to the core concern, the design &amp; appearance of the ABS-models are kept idle accept adding few cosmetic enhancements.</p><p class=\"ql-align-justify\">Here Honda CB&nbsp;<a href=\"https://www.bikebd.com/honda-cb-hornet-160r-vs-honda-xblade-feature-comparison/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\">Hornet 160R</a>&nbsp;ABS crafted with all-new attractive graphics work. Furthermore, exterior enhancement comes on the headlamp assembly. It’s completely a new unit that facilitated with dedicated multi-pit LED headlamp including LED DRL. Side by side ODO display and control switches are also got a refreshment.</p><p class=\"ql-align-justify\">Coming to the new Yamaha&nbsp;<a href=\"https://www.bikebd.com/antilock-braking-system-abs-fzs-fi-v3/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\">FZS-FI V3</a>&nbsp;ABS, it’s completely a new machine from top to bottom. It comes with unmatched &amp; unique design and exterior than the predecessor. It designed bold, bulky, muscled, and quite a rounded theme applied very precisely. Hence it created a new appearance, appeal, and attraction among the enthusiasts.</p><p class=\"ql-align-center\"><a href=\"https://bkdads.bikebd.com/www/delivery/ck.php?oaparams=2__bannerid=39__zoneid=19__cb=89cd9ed2ad__oadest=https%3A%2F%2Fwww.facebook.com%2FYamahabd%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://bkdads.bikebd.com/www/images/1b13adc631e232de9bb17e7dd0f79d27.gif\" height=\"250\" width=\"300\"></a></p><p class=\"ql-align-center\"><img src=\"https://bkdads.bikebd.com/www/delivery/lg.php?bannerid=39&amp;campaignid=13&amp;zoneid=19&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Fhornet-abs-vs-fzs-abs-vs-ns160-abs-feature-comparison-review%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2F&amp;cb=89cd9ed2ad\" height=\"0\" width=\"0\"></p><p class=\"ql-align-justify\">In the Bajaj Pulsar&nbsp;<a href=\"https://www.bikebd.com/bajaj-pulsar-ns160-feature-review/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\">NS160-FI</a>&nbsp;ABS, the machine remaining the same as the non-ABS version. Hence the looks, design, and appearances all are remaining unchanged. Further, the new variant identified with the new graphic design and color scheme. Hence, the ABS sensor fence mounted on the hydraulic disk and bikini underbelly cowling exposes the new model identity.</p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/01/hornet-abs-vs-fzs-abs-vs-ns160-abs-wheel-brake-suspension-1.jpg\" height=\"450\" width=\"800\"></p><h2><strong><u>Frame, Wheel, Brake &amp; Suspension System</u></strong></h2><p class=\"ql-align-justify\">All the three motorcycles picked here are covering the same street naked category. Further, the motorcycles are profiled attractively with some sporty features. Hence somewhat they carrying the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Streetfighter\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\">streetfighter</a>&nbsp;attitude and attire. Thereby not to mention but surely, they can be categorized as power&nbsp;<a href=\"https://www.bikebd.com/commuter-motorcycle-feature-characteristics/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\">commuters</a>.</p><p class=\"ql-align-justify\">Here all the models came with attractive packages in terms of frame, wheel, brake, and suspension systems. This corner is now updated with the latest enhancements that literally pushed us to bring this comparison. Whatsoever, Hornet 160R-ABS and FZS-FI V3 came with a steel-pipe diamond frame. On the counter, NS160-FI ABS comes with a perimeter frame.</p><p class=\"ql-align-justify\">In the wheel setup, all the motorcycles carrying versatile features. Hornet 160R and FZS-FI holding a wider &amp; lower profile of wheel and tire setup. Those are respectively 100/80-17 &amp; 140/70-17 and 100/80-17 &amp; 140/60-17 in Hornet &amp; FZS-FI. But in counter NS160-FI holding quite a narrower wheel setup, that is 90/90-17 &amp; 180/80-17 in front &amp; rear. Further, all the motorcycles here featured with alloy rims and tubeless tires.</p><p class=\"ql-align-justify\">In the braking system, all the models here carrying the hydraulic disk brake system in both wheels. But Hornet 160R and NS160-FI also available in optional rear drum brake setup. In common all the three models equipped with non-switchable single-channel ABS features.</p><p class=\"ql-align-center\"><a href=\"https://www.bikebd.com/adserv/www/delivery/ck.php?oaparams=2__bannerid=42__zoneid=17__cb=251e363474__oadest=https%3A%2F%2Fwww.facebook.com%2Fsuzukibd%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://www.bikebd.com/adserv/www/images/7bd881b7c8feb48367a6a0d4b5bf5e01.gif\" height=\"90\" width=\"620\"></a></p><p class=\"ql-align-center\"><img src=\"https://www.bikebd.com/adserv/www/delivery/lg.php?bannerid=42&amp;campaignid=19&amp;zoneid=17&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Fhornet-abs-vs-fzs-abs-vs-ns160-abs-feature-comparison-review%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2F&amp;cb=251e363474\" height=\"0\" width=\"0\"></p><p class=\"ql-align-justify\">Further in the suspension system, all are carrying upright hydraulic telescopic fork suspension in the front and rear is mono. Here Hornet &amp; FZS holding quite a fatter profile shock absorber in the front. In favor, NS160-FI holding gas-charged Nitrox mono-shock setup at the rear.</p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/01/hornet-abs-vs-fzs-abs-vs-ns160-abs-engine-specification-power-performance.jpg\" alt=\"hornet-abs vs fzs-abs vs ns160-abs feature comparison review\" height=\"290\" width=\"800\"></p><h2><strong><u>Hornet-ABS VS FZS-ABS VS NS160-ABS Engine &amp; Performances</u></strong></h2><p class=\"ql-align-justify\">Being the updated and latest release, all the three discussed motorcycles here holding a varied engine tweaking and power rating. In common all the motorcycles here carrying single-cylinder, four-stroke engines but they featured differently.</p><p class=\"ql-align-justify\">Here, the Hornet 160R-ABS and FZS-FI V3 carrying an air-cooled 2-valve engine. But Hornet holding the conventional carburetor fuel feeding setup. Hence that ensures hassle-free maintenances and helps to minimize fuel contamination issues. On the counter, the FZS-FI engine featured with an Electronic Fuel-Injection system that provides altitude &amp; environment compatibility and précised fuel efficiency.</p><p class=\"ql-align-justify\">In the Pulsar NS160-FI, the engine is featured with digital twin-spark ignition (DTS-I) including 4-valve and oil-cooling features. Moreover, adding new EFI replacing the old carburetor system made the engine more capable to deal against the rivals. Hence, considering engine displacement volume and other features &amp; tweaking their performance figures are different.</p><p class=\"ql-align-justify\">Here, Hornet rated to deliver 11.1KW of power and 14.5NM of torque from its 162.71cc engine. The FZS-FI V3 (BS-IV) figured with 9.7KW of power and 12.8NM of torque from its 149cc engine. So on, Pulsar NS160-FI is tweaked for 11.4KW of power and 14.12NM of torque from its 160.3cc engine.</p><p class=\"ql-align-justify\">Meanwhile, all the engines here are BS-IV standard engine. But above all we should keep in mind, different weights, dimensions, and aerodynamics have a vital effect on real road performances. Furthermore, control, comfort, balance, and smoothness definitely matter in the long run.</p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/01/hornet-abs-vs-fzs-abs-vs-ns160-abs-body-design.jpg\" height=\"340\" width=\"800\"></p><h2><strong><u>Hornet-ABS VS FZS-ABS VS NS160-ABS – Added Features</u></strong></h2><p class=\"ql-align-justify\">The new Hornet 160R-ABS, FZS-FI ABS, Pulsar NS160-FI ABS, all the bikes placed with new enhancements of features. Here Hornet 160R and Pulsar NS160 is quite a familiar model in the market. But the Yamaha FZS-FI V3 is the all-new model in this row. Hence, more or less all of the models here came with some new features and enhancements. So, here are those.</p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/01/honda-cb-hornet-160r-abs-feature-specification-review-price.jpg\" height=\"477\" width=\"800\"></p><h3><u>Honda Hornet 160R-FI ABS</u></h3><ul><li class=\"ql-align-justify\">All-new color &amp; graphics scheme.</li><li class=\"ql-align-justify\">BS-IV compliant HET Engine.</li><li class=\"ql-align-justify\">All-new LED headlamp setup including a newly designed LED DRL System.</li><li class=\"ql-align-justify\">Fully DC electrical system.</li><li class=\"ql-align-justify\">Blue backlit digital ODO console.</li><li class=\"ql-align-justify\">Newly designed control switch assembly and extended Sharee-guard.</li><li class=\"ql-align-justify\">Hazard light system.</li><li class=\"ql-align-justify\">Impressive single-channel ABS including CBS enhancement.</li></ul><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/01/yamaha-fzs-fi-v3-abs-feature-specification-review-price-top-speed.jpg\" height=\"450\" width=\"800\"></p><p class=\"ql-align-center\"><a href=\"https://www.bikebd.com/adserv/www/delivery/ck.php?oaparams=2__bannerid=51__zoneid=16__cb=94a6dc3011__oadest=https%3A%2F%2Fwww.facebook.com%2Fbdkawasaki%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://www.bikebd.com/adserv/www/images/2f691bd3927bd43facd1bfd2fc1896b1.jpg\" height=\"250\" width=\"300\"></a></p><p class=\"ql-align-center\"><img src=\"https://www.bikebd.com/adserv/www/delivery/lg.php?bannerid=51&amp;campaignid=24&amp;zoneid=16&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Fhornet-abs-vs-fzs-abs-vs-ns160-abs-feature-comparison-review%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2F&amp;cb=94a6dc3011\" height=\"0\" width=\"0\"></p><h3><u>Yamaha FZS-FI V3 ABS</u></h3><ul><li class=\"ql-align-justify\">Completely new look, design &amp; Appearance. Hence, it’s an all-new machine.</li><li class=\"ql-align-justify\">Newly refined and tweaked engine for smooth operation and performances.</li><li class=\"ql-align-justify\">Fuel feeding updated with Electronic Fuel Injection System.</li><li class=\"ql-align-justify\">All LED headlamp and newly designed negative display ODO panel.</li><li class=\"ql-align-justify\">Single-channel ABS with dual hydraulic disc brakes.</li><li class=\"ql-align-justify\">Improved body design and ergonomics for premium braking, control, comfort, and stability.</li></ul><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/01/pulsar-ns160-fi-abs-feature-specification-review-price.jpg\" height=\"358\" width=\"800\"></p><h3><u>Bajaj Pulsar NS160R-FI ABS</u></h3><ul><li class=\"ql-align-justify\">More eye-catchy graphics and color scheme with aggressive street macho design.</li><li class=\"ql-align-justify\">BS-IV compliant DTS-I engine including new Fuel Injection system.</li><li class=\"ql-align-justify\">Braking system updated with impressive single-channel ABS enhancement including wider hydraulic disk brakes.</li><li class=\"ql-align-justify\">The tire dimension improved with a wider profile rear tire for better braking and controlling stability.</li><li class=\"ql-align-justify\">Overall performance figure tweaked with newly added EFI system ensuring BS-IV compliance.</li></ul><p class=\"ql-align-justify\"><img src=\"https://www.bikebd.com/wp-content/uploads/2020/01/hornet-abs-vs-fzs-abs-vs-ns160-abs-speedometer.jpg\" alt=\"hornet-abs vs fzs-abs vs ns160-abs feature comparison review\" height=\"271\" width=\"800\"></p><h2><strong><u>Hornet-ABS VS FZS-FI V3 ABS VS NS160-FI ABS Specification Comparison Table</u></strong></h2><p><br></p><p><br></p><p class=\"ql-align-justify\"><img src=\"https://www.bikebd.com/wp-content/uploads/2020/01/hornet-abs-vs-fzs-abs-vs-ns160-abs-led-headlamp.jpg\" alt=\"hornet-abs vs fzs-abs vs ns160-abs feature comparison review\" height=\"348\" width=\"800\"></p><h2><strong><u>Hornet-ABS VS FZS-ABS VS NS160-ABS Feature Comparison Review</u></strong></h2><p class=\"ql-align-justify\">So, readers, these are the comparative view of the features of Honda CB Hornet 160R-ABS, Yamaha FZS-FI V3 ABS and Pulsar NS160-FI ABS. Now at the last let’s face the reality, therefore, the pricing. Here all the bikes coming in our market in CBU conditions. Hence the price tags are as bellow.</p><p class=\"ql-align-justify\">Honda CB Hornet 160R ABS:&nbsp;2,55,000 BDT</p><p class=\"ql-align-justify\">Yamaha FZS-FI V3 ABS:&nbsp;&nbsp;2,77,000 BDT</p><p class=\"ql-align-justify\">Bajaj Pulsar NS160-FI ABS:&nbsp;&nbsp;&nbsp;2,54,900 BDT</p><p class=\"ql-align-justify\">So, the decision is yours. Pick your bike according to your needs, requirements and of course within your budget. Thanks, everyone.</p><p><br></p>', '2020-02-24 21:01:12', '2020-02-29 03:41:44', NULL);
INSERT INTO `blogs` (`id`, `slug`, `language`, `clickview`, `admin_id`, `superadmin_id`, `title`, `keyword`, `url`, `metadescription`, `postimage`, `status`, `shortdescription`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(12, 'Roadmaster-Velocity', 'en', 0, 1, NULL, 'Roadmaster Velocity 125 Launched In Bangladesh!', 'suzuki amake valobshe', '', 'Roadmaster Velocity 125 Launched In Bangladesh!Roadmaster Velocity 125 Launched In Bangladesh!', '1582621395__202500.jpeg', 1, 'Roadmaster Velocity 125 Launched In Bangladesh!Roadmaster Velocity 125 Launched In Bangladesh!', '<p>Roadmaster is one of the most popular Bangladeshi motorcycle brands! They have some really good commuter bikes in their lineup, and now in this February, they have launched&nbsp;<strong>Roadmaster Velocity 125 in Bangladesh!</strong></p><p class=\"ql-align-center\"><a href=\"https://bkdads.bikebd.com/www/delivery/ck.php?oaparams=2__bannerid=39__zoneid=19__cb=eef375940a__oadest=https%3A%2F%2Fwww.facebook.com%2FYamahabd%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://bkdads.bikebd.com/www/images/1b13adc631e232de9bb17e7dd0f79d27.gif\" height=\"250\" width=\"300\"></a></p><p class=\"ql-align-center\"><img src=\"https://bkdads.bikebd.com/www/delivery/lg.php?bannerid=39&amp;campaignid=13&amp;zoneid=19&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Froadmaster-velocity-125-launched%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2Fpage%2F2%2F&amp;cb=eef375940a\" height=\"0\" width=\"0\"></p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/02/roadmaster-velocity-125.jpg\" alt=\"roadmaster velocity 125\" height=\"500\" width=\"800\"></p><p>Roadmaster Velocity 100 was one of the most popular 100cc bikes in the Roadmaster line-up. The rumor of a more powerful 125cc variant of the bike was going on for some time, and now finally in February of 2020, Roadmaster has launched this bike in Bangladesh!</p><p class=\"ql-align-center\"><a href=\"https://www.bikebd.com/adserv/www/delivery/ck.php?oaparams=2__bannerid=42__zoneid=17__cb=c4647c36c0__oadest=https%3A%2F%2Fwww.facebook.com%2Fsuzukibd%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://www.bikebd.com/adserv/www/images/7bd881b7c8feb48367a6a0d4b5bf5e01.gif\" height=\"90\" width=\"620\"></a></p><p class=\"ql-align-center\"><img src=\"https://www.bikebd.com/adserv/www/delivery/lg.php?bannerid=42&amp;campaignid=19&amp;zoneid=17&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Froadmaster-velocity-125-launched%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2Fpage%2F2%2F&amp;cb=c4647c36c0\" height=\"0\" width=\"0\"></p><h3>Roadmaster Velocity 125 – Price and Offers</h3><p>Roadmaster Velocity 125 is priced at 1,22,900BDT. But, they are giving away an offer on the bike, and therefore, the bike has a price tag of 1,08,500BDT in the offer period.</p><p>Also, along with the offer price, the bike get’s free registration in the offer period! The bike is already available in all Roadmaster motorcycle showrooms in Bangladesh, and this offer price and free registration offer can be availed in any Roadmaster motorcycle showroom around the country.</p><p class=\"ql-align-center\"><a href=\"https://www.bikebd.com/adserv/www/delivery/ck.php?oaparams=2__bannerid=51__zoneid=16__cb=d08ce6d29c__oadest=https%3A%2F%2Fwww.facebook.com%2Fbdkawasaki%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://www.bikebd.com/adserv/www/images/2f691bd3927bd43facd1bfd2fc1896b1.jpg\" height=\"250\" width=\"300\"></a></p><p class=\"ql-align-center\"><img src=\"https://www.bikebd.com/adserv/www/delivery/lg.php?bannerid=51&amp;campaignid=24&amp;zoneid=16&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Froadmaster-velocity-125-launched%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2Fpage%2F2%2F&amp;cb=d08ce6d29c\" height=\"0\" width=\"0\"></p><h3 class=\"ql-align-center\"><a href=\"https://www.bikebd.com/roadmaster-velocity-125/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(0, 0, 0);\">Click Here For The Latest Price of Roadmaster Velocity 125</a></h3><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/02/roadmaster-125cc-price.jpg\" alt=\"roadmaster 125cc price\" height=\"500\" width=\"800\"></p><h3>Roadmaster Velocity 125 – Features</h3><p>The first difference this bike gets from the previous Roadmaster Velocity 100 is in the graphics. The bike gets new color schemes and updated graphics, and the rest of the looks are pretty similar to the previous 100cc model.</p><p>The bike has a 125cc air-cooled engine along with a 4-speed transmission. There is a disc brake on the front and drum brake on the rear, and standard telescopic fork on the front and dual spring suspension in the rear.</p><p>The bike can carry 14 liters of fuel and has a kerb weight of 120 kg.&nbsp;It has a big silencer and cowling on the side of the fuel tank. It has split grab rail for the pillion, and the seat is really wide for both the rider and pillion.</p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/02/roadmaster-velocity-125-1.jpg\" alt=\"roadmaster velocity 125\" height=\"500\" width=\"800\"></p><p>Only into the second month of New year, and New bikes are already launching in Bangladesh. Hopefully, this new year will see the launching of many more bikes, especially the awaited ones.</p>', '2020-02-24 21:03:15', '2020-03-11 03:35:37', NULL),
(13, 'TVS-Victor-110-Feature-Review', 'en', 2, 1, NULL, 'TVS Victor 110 Feature Review1', 'tvs new bike', NULL, 'TVS Victor 110 Feature ReviewTVS Victor 110 Feature ReviewTVS Victor 110 Feature ReviewTVS Victor 110 Feature Review', '1582621502__380942.jpeg', 1, 'TVS Victor 110 Feature ReviewTVS Victor 110 Feature ReviewTVS Victor 110 Feature Review', '<p class=\"ql-align-justify\">TVS Motorcycle has reintroduced their sub-brand, TVS Victor. Hence focusing the commuter users need the TVS Victor 110 is rolling on the roads again. Therefore covering this fuel economic motorcycle here is our TVS Victor 110 Feature Review. So let’s get the featured sketch of the nice looking motorcycle.</p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2019/02/tvs-victor-110-test-ride-riding-controlling-handling.jpg\" alt=\"tvs victor\" height=\"485\" width=\"800\"></p><h2><strong><u>TVS Victor 110 Feature Review – The Design &amp; Style</u></strong></h2><p class=\"ql-align-justify\">The TVS Victor series is the in-house developed commuter series from TVS Motorcycles. The series solely dedicated to commuting features that widely adopted stylish features. Hence the TVS Victor 110 is a commuter category motorcycle designed with modern and stylish design.</p><p class=\"ql-align-center\"><a href=\"https://bkdads.bikebd.com/www/delivery/ck.php?oaparams=2__bannerid=39__zoneid=19__cb=40eca71d12__oadest=https%3A%2F%2Fwww.facebook.com%2FYamahabd%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://bkdads.bikebd.com/www/images/1b13adc631e232de9bb17e7dd0f79d27.gif\" height=\"250\" width=\"300\"></a></p><p class=\"ql-align-center\"><img src=\"https://bkdads.bikebd.com/www/delivery/lg.php?bannerid=39&amp;campaignid=13&amp;zoneid=19&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Ftvs-victor-110-feature-review%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2Fpage%2F2%2F&amp;cb=40eca71d12\" height=\"0\" width=\"0\"></p><p class=\"ql-align-justify\">The Victor 110 designed very simple from head to tail. But it styled smartly to fit with most of the type and aged user personality. Hence the motorcycle exterior is edgy, curved and few muscles visible that consistent with its decent appearances.</p><p class=\"ql-align-justify\">Here the headlamp and the tail lamp of the motorcycle a bit exposed, bigger and wavy. The fuel tank also comes with decent curves on both sides. The color, shade and the waves are also nicely extended until the tail throughout the segmented side panels.</p><p class=\"ql-align-justify\"><img src=\"https://www.bikebd.com/wp-content/uploads/2019/02/tvs-victor-110-launch-in-bangladesh.jpg\" alt=\"tvs victor 110\" height=\"524\" width=\"800\"></p><p class=\"ql-align-justify\">Here seat is longer, spacious and supported with heavy grab rails as does in commuters. But it designed very smartly with 3D curves. Hence the wheel fenders are obviously extended to support for better dirt protection.</p><p class=\"ql-align-center\"><a href=\"https://www.bikebd.com/adserv/www/delivery/ck.php?oaparams=2__bannerid=42__zoneid=17__cb=dba5c79368__oadest=https%3A%2F%2Fwww.facebook.com%2Fsuzukibd%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://www.bikebd.com/adserv/www/images/7bd881b7c8feb48367a6a0d4b5bf5e01.gif\" height=\"90\" width=\"620\"></a></p><p class=\"ql-align-center\"><img src=\"https://www.bikebd.com/adserv/www/delivery/lg.php?bannerid=42&amp;campaignid=19&amp;zoneid=17&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Ftvs-victor-110-feature-review%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2Fpage%2F2%2F&amp;cb=dba5c79368\" height=\"0\" width=\"0\"></p><p class=\"ql-align-justify\">Coming to the rests the exhaust pipe is smartly designed with rounded and fatter barrel. Meanwhile, the ODO is another attraction that comes with good looking analog rev counter and a fully digital display. Hence from top to bottom, it’s a good looking and rightly matched motorcycle.</p><p class=\"ql-align-justify\"><img src=\"https://www.bikebd.com/wp-content/uploads/2019/02/tvs-victor-110-wheel-brake-suspension.jpg\" alt=\"tvs-victor-110-wheel-brake-suspension\" height=\"373\" width=\"800\"></p><h2><strong><u>TVS Victor 110 – Chassis, Wheel, Brake &amp; Suspension System</u></strong></h2><p class=\"ql-align-justify\">The TVS Victor 110 constructed on a single cradle tubular frame. Hence the steel frame is strong, rigid and comparatively light weighted with its single cradle features. The motorcycle comes with 5-spoked all alloy rims with tubeless type tires in its both wheel.</p><p class=\"ql-align-justify\">Coming to the braking system it comes with both hydraulic disk and conventional drum braking in front wheel as different options. Here the hydraulic disk version comes with 240mm disk and drum option comes with 130mm drum braking. Whereas the rear wheel comes with 110mm drum brakes with both options.</p><p class=\"ql-align-justify\">Coming to the suspension system its hydraulic telescopic suspension in front. The rear setup is double; those unite with the swing arm. Here the rear suspensions are spring loaded and those are adjustable with five steps.</p><p class=\"ql-align-justify\"><img src=\"https://www.bikebd.com/wp-content/uploads/2019/02/tvs-victor-110-top-speed.jpg\" alt=\"tvs-victor-110-top-speed\" height=\"480\" width=\"800\"></p><p class=\"ql-align-center\"><a href=\"https://www.bikebd.com/adserv/www/delivery/ck.php?oaparams=2__bannerid=51__zoneid=16__cb=acf6d91cc7__oadest=https%3A%2F%2Fwww.facebook.com%2Fbdkawasaki%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://www.bikebd.com/adserv/www/images/2f691bd3927bd43facd1bfd2fc1896b1.jpg\" height=\"250\" width=\"300\"></a></p><p class=\"ql-align-center\"><img src=\"https://www.bikebd.com/adserv/www/delivery/lg.php?bannerid=51&amp;campaignid=24&amp;zoneid=16&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Ftvs-victor-110-feature-review%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2Fpage%2F2%2F&amp;cb=acf6d91cc7\" height=\"0\" width=\"0\"></p><h2><strong><u>TVS Victor 110 – Riding, Controlling &amp; Handling Characteristics</u></strong></h2><p class=\"ql-align-justify\">The riding position of the TVS Victor 110 is completely upright. Here the handlebar is pipe handlebar that positioned in upright mode. Therefore the rest of the control levers positions are also the same. Hence the seating is relaxed more with wider spaces.</p><p class=\"ql-align-justify\">Accordingly, with 112/113Kg weights, it’s too much handy to ride, control and handle. Furthermore, the slim and sleek design of the motorcycle gave the agility to commute on most of the urban and rural terrains.</p><p class=\"ql-align-justify\">Furthermore, the boxed-chain, tubeless tire, wider grab rail comes as the beneficial feature to tackle most common commuting situations. The bigger headlamp and sharp tail lamp allow more visibility in the night. Again the stock crash guard and extended wheel fender adds extra benefit to support the hassle-free commuting.</p><p class=\"ql-align-justify\"><img src=\"https://www.bikebd.com/wp-content/uploads/2019/02/tvs-victor-110-engine-performance-top-speed.jpg\" alt=\"tvs-victor-110-engine-performance-top-speed\" height=\"450\" width=\"800\"></p><h2><strong><u>TVS Victor 110 – Engine &amp; Performance</u></strong></h2><p class=\"ql-align-justify\">The engine of the TVS Victor 110 is an all-new engine that comes with 3 valves. Hence the engine is a single-cylinder four-stroke&nbsp;<a href=\"https://www.bikebd.com/motorcycle-engine-cooling-system-air-cooling-vs-liquid-cooling-vs-oil-cooling/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\">air-cooled</a>&nbsp;engine that feeds with CV type carburetor.</p><p class=\"ql-align-justify\">Here the intake system is featured with two valves and exhaust has the single. Hence it’s dedicated for better intake and combustion, therefore,e the fuel efficiency is more focused.&nbsp;According to&nbsp;<a href=\"https://en.wikipedia.org/wiki/TVS_Motor_Company\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\">TVS</a>, the fuel economy figure is around 72kmpl under standard riding condition. Again, with an oversquare cylinder and 9.9:1 compression the engine also efficient of power delivery.</p><p class=\"ql-align-justify\">Whatsoever, the motorcycle BS-IV engine can produce the maximum power of 9.6PS and the torque of 9.3NM. So with the 113Kg weight, it seems a nice package to be a better performer on the street and rural terrains.</p><p class=\"ql-align-justify\"><img src=\"https://www.bikebd.com/wp-content/uploads/2019/02/tvs-victor-110-feature.jpg\" alt=\"tvs-victor-110-feature\" height=\"437\" width=\"800\"></p><h2><strong><u>TVS Victor 110 – Specification &amp; Dimensions</u></strong></h2><p><br></p>', '2020-02-24 21:05:02', '2020-03-11 03:35:38', NULL),
(14, 'Bima-Mela-2019', 'en', 0, 1, NULL, 'Bima Mela 2019 Khulna : Insurance Smart Card । BikeBD', 'suzuki mela 2019', '', 'Bima Mela 2019 Khulna : Insurance Smart Card । BikeBDBima Mela 2019 Khulna : Insurance Smart Card । BikeBD', '1582621602__803011.jpeg', 1, 'Bima Mela 2019 Khulna : Insurance Smart Card । BikeBDBima Mela 2019 Khulna : Insurance Smart Card । BikeBD', '<p><strong>Nitol Insurance</strong>&nbsp;participated at 2019&nbsp;<strong>Bima Mela</strong>&nbsp;at Khulna on the 24th&nbsp;&amp; 25th&nbsp;of this month. Bima Mela is an annual event or fair where all Insurance companies in Bangladesh participates to showcase their offerings to their clients. We being an online partner of Nitol Insurance was also present for the two days event at Khulna circuit house ground.</p><p class=\"ql-align-center\"><a href=\"https://bkdads.bikebd.com/www/delivery/ck.php?oaparams=2__bannerid=39__zoneid=19__cb=6ee9e34a47__oadest=https%3A%2F%2Fwww.facebook.com%2FYamahabd%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://bkdads.bikebd.com/www/images/1b13adc631e232de9bb17e7dd0f79d27.gif\" height=\"250\" width=\"300\"></a></p><p class=\"ql-align-center\"><img src=\"https://bkdads.bikebd.com/www/delivery/lg.php?bannerid=39&amp;campaignid=13&amp;zoneid=19&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Fbima-mela-2019-khulna-insurance-smart-card-bikebd%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2Fpage%2F2%2F&amp;cb=6ee9e34a47\" height=\"0\" width=\"0\"></p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/01/bima-mela-2020-khulna-1.jpg\" alt=\"bima mela 2020 khulna\" height=\"500\" width=\"800\"></p><p>Since 2018 Nitol Insurance has been the&nbsp;<strong>Insurance partner of BikeBD</strong>. Almost all bikes which we tested since then have gone through the motorcycle insurance procedure of Nitol Insurance. Nitol Insurance was the first insurance company in Bangladesh to start the procedure of&nbsp;<strong>Online Insurance</strong>. So what did they bring for the bikers in this Bima Mela?</p><p class=\"ql-align-center\"><a href=\"https://www.bikebd.com/adserv/www/delivery/ck.php?oaparams=2__bannerid=42__zoneid=17__cb=1bc730b6f5__oadest=https%3A%2F%2Fwww.facebook.com%2Fsuzukibd%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://www.bikebd.com/adserv/www/images/7bd881b7c8feb48367a6a0d4b5bf5e01.gif\" height=\"90\" width=\"620\"></a></p><p class=\"ql-align-center\"><img src=\"https://www.bikebd.com/adserv/www/delivery/lg.php?bannerid=42&amp;campaignid=19&amp;zoneid=17&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Fbima-mela-2019-khulna-insurance-smart-card-bikebd%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2Fpage%2F2%2F&amp;cb=1bc730b6f5\" height=\"0\" width=\"0\"></p><p>First of all, they gave the first 50 bikers “<strong>Proud To Be a Bangladeshi Biker T-Shirt</strong>” who came and did on spot insurance of their motorcycles. For the first time in Bangladeshi history, Nitol Insurance gave a smart insurance card to the bikers.</p><p>This smart card is more like the size of your&nbsp;<a href=\"https://www.bikebd.com/bn/%e0%a6%a1%e0%a7%8d%e0%a6%b0%e0%a6%be%e0%a6%87%e0%a6%ad%e0%a6%bf%e0%a6%82-%e0%a6%b2%e0%a6%be%e0%a6%87%e0%a6%b8%e0%a7%87%e0%a6%a8%e0%a7%8d%e0%a6%b8-%e0%a6%95%e0%a6%b0%e0%a6%ac%e0%a7%87%e0%a6%a8/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\">driving license</a>. It is small in size so you need less space to carry it &amp; hassle-free. The bikers also got many gifts from the Nitol&nbsp;<a href=\"https://www.bikebd.com/bn/%e0%a6%85%e0%a6%a8%e0%a6%b2%e0%a6%be%e0%a6%87%e0%a6%a8-%e0%a6%87%e0%a6%a8%e0%a6%b8%e0%a7%8d%e0%a6%af%e0%a7%81%e0%a6%b0%e0%a7%87%e0%a6%a8%e0%a7%8d%e0%a6%b8-%e0%a6%b8%e0%a7%81%e0%a6%ac%e0%a6%bf%e0%a6%a7/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\">Insurance</a>&nbsp;pavilion-like calendar, mug &amp; keyring. They also arranged spin the wheel game show where some bikers got hand gloves as gift.</p><p class=\"ql-align-center\"><a href=\"https://www.bikebd.com/adserv/www/delivery/ck.php?oaparams=2__bannerid=51__zoneid=16__cb=47e63596c4__oadest=https%3A%2F%2Fwww.facebook.com%2Fbdkawasaki%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://www.bikebd.com/adserv/www/images/2f691bd3927bd43facd1bfd2fc1896b1.jpg\" height=\"250\" width=\"300\"></a></p><p class=\"ql-align-center\"><img src=\"https://www.bikebd.com/adserv/www/delivery/lg.php?bannerid=51&amp;campaignid=24&amp;zoneid=16&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Fbima-mela-2019-khulna-insurance-smart-card-bikebd%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2Fpage%2F2%2F&amp;cb=47e63596c4\" height=\"0\" width=\"0\"></p><p>&nbsp;</p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/01/smart-insurance-card-nitol-insurance.jpg\" alt=\"smart insurance card nitol insurance\" height=\"500\" width=\"800\"></p><p>This program was made most successful on the evening of 24th&nbsp;December when bikers from Khulna division came in the event with their groups. We are very thankful to the following groups / clubs for attending the event:</p><ul><li>Paikgacha Riderz</li><li>Jessore Riders</li><li>Manirampur Riderz</li><li>Jhenidah KB Riderz</li><li>Khulna Adventure Riderz</li><li>Yamaha Riders Club Khulna</li><li>Ferocious Flash</li></ul><p>Later in the evening, we went to Khulna ghat for some snacks. Around 120+ bikers came to the event. The whole event was well-organized thanks to the cooperation of the bikers. On Saturday there were still some gatherings from the bikers as they came from the morning to do the insurance of their motorcycles.</p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/01/nitol-insurance-bima-mela.jpg\" alt=\"nitol insurance bima mela\" height=\"500\" width=\"800\"></p><p>The two days event was well organized by Nitol Insurance Ltd &amp; the bikers who came into the event were very happy. Last year they organized an event in Chittagong &amp; this year in Khulna, we are expecting that next year the Bima Mela might come in Barisal.</p>', '2020-02-24 21:06:42', '2020-03-11 03:35:38', NULL),
(15, 'Lifan-KPR150-VS-KPR165-FI-VS-KPR165-Carb-Feature-Comparison', 'en', 0, 1, NULL, 'Lifan KPR150 VS KPR165-FI VS KPR165-Carb Feature Comparison', 'nitobima', '', 'Lifan KPR150 VS KPR165-FI VS KPR165-Carb Feature ComparisonLifan KPR150 VS KPR165-FI VS KPR165-Carb Feature Comparison', '1582621676__152182.jpeg', 1, 'Lifan KPR150 VS KPR165-FI VS KPR165-Carb Feature ComparisonLifan KPR150 VS KPR165-FI VS KPR165-Carb Feature Comparison', '<p class=\"ql-align-justify\">The Lifan KPR series is one of the successful sportbike series in Bangladesh and the flagship product of the Lifan motorcycle Bangladesh. The official distributor of this Chinese branded&nbsp;<a href=\"https://en.wikipedia.org/wiki/Motorcycle\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\">motorcycle</a>, Rasel Industries Limited sequentially released different features of KPR from time to time. Beginning from early 2015, RIL released multiple updates of KPR. Hence here we came with Lifan KPR150 VS KPR165-FI VS KPR165-Carb Feature Comparison Review.</p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/01/lifan-kpr150-vs-kpr165-fi-vs-kpr165-carb-feature-comparison-review.jpg\" alt=\"lifan kpr150 vs kpr165-fi vs kpr165-carb feature comparison review\" height=\"568\" width=\"800\"></p><h2><strong><u>Lifan KPR150 VS KPR165-FI VS KPR165-Carb&nbsp;Overview</u></strong></h2><p class=\"ql-align-center\"><a href=\"https://bkdads.bikebd.com/www/delivery/ck.php?oaparams=2__bannerid=39__zoneid=19__cb=32b9fc9868__oadest=https%3A%2F%2Fwww.facebook.com%2FYamahabd%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://bkdads.bikebd.com/www/images/1b13adc631e232de9bb17e7dd0f79d27.gif\" height=\"250\" width=\"300\"></a></p><p class=\"ql-align-center\"><img src=\"https://bkdads.bikebd.com/www/delivery/lg.php?bannerid=39&amp;campaignid=13&amp;zoneid=19&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Flifan-kpr150-vs-kpr165-fi-vs-kpr165-carb-feature-comparison-review%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2Fpage%2F2%2F&amp;cb=32b9fc9868\" height=\"0\" width=\"0\"></p><p class=\"ql-align-justify\">The Lifan KPR is the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Sport_bike\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\">sportbike</a>&nbsp;series from Lifan Motorcycles. In Bangladesh RIL, therefore, Rasel Industries Limited marketing this racing series of&nbsp;<a href=\"https://www.bikebd.com/commuter-motorcycle-feature-characteristics/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\">motorcycle</a>&nbsp;from April 2015. Until now, RIL released multiple versions in the KPR series. Hence currently three different featured versions of KPR are rolling in our market. Thereby the feature comparison took the place.</p><p class=\"ql-align-justify\">In the looks, design, &amp; appearance the&nbsp;<a href=\"https://www.bikebd.com/lifan-kpr150-review-by-team-bikebd/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\">Lifan KPR</a>&nbsp;remaining the same iconic in its all the versions. Even the exterior and ergonomics also remained unchanged in the common aspect. But of course, improvement and updates came time to time with different versions in the features and even the exteriors. Thus, the different versions got updated and featured better to serve the versatile requirements of the customers.</p><p class=\"ql-align-justify\">Coming to the outer looks and design, the common appearance remained quite the same in all the versions we already mentioned. But several differences added in Lifan KPR150 VS KPR165-FI VS KPR165-Carb models. Sequentially, their exterior graphics and color schemes are not the same. Hence, they have remarkable &amp; different graphical identity.</p><p class=\"ql-align-center\"><a href=\"https://www.bikebd.com/adserv/www/delivery/ck.php?oaparams=2__bannerid=42__zoneid=17__cb=ea5e2f7c14__oadest=https%3A%2F%2Fwww.facebook.com%2Fsuzukibd%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://www.bikebd.com/adserv/www/images/7bd881b7c8feb48367a6a0d4b5bf5e01.gif\" height=\"90\" width=\"620\"></a></p><p class=\"ql-align-center\"><img src=\"https://www.bikebd.com/adserv/www/delivery/lg.php?bannerid=42&amp;campaignid=19&amp;zoneid=17&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Flifan-kpr150-vs-kpr165-fi-vs-kpr165-carb-feature-comparison-review%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2Fpage%2F2%2F&amp;cb=ea5e2f7c14\" height=\"0\" width=\"0\"></p><p class=\"ql-align-justify\">Additionally, the exhaust setup changed in the versions. Whereas, the rear tire dimension also changed which is identical between the models. Here, we should mention the KPR150 holding the previous design in the exhaust system. On the counter, KPR165-Carb &amp; KPR165-FI holding a new design in the exhaust system. In addition, 165-FI also equipped with dedicated catalytic converter assembly. Hence, the rest of the structural features are the same in all the KPR versions.</p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/01/lifan-kpr150-vs-kpr165-fi-vs-kpr165-carb-feature-comparison.jpg\" alt=\"lifan kpr150 vs kpr165-fi vs kpr165-carb feature comparison review\" height=\"450\" width=\"800\"></p><h2><strong><u>Frame, Wheel, Brake &amp; Suspension System</u></strong></h2><p class=\"ql-align-justify\">We said the KPR series is remaining iconic in all the versions available in Bangladesh even in the different displacement models. Therefore, the frame design and dimensions are also remaining the same in those versions. Further, the wheel, brake, &amp; suspension system also remaining common but essential upgrades attached in the newer versions.</p><p class=\"ql-align-center\"><a href=\"https://www.bikebd.com/adserv/www/delivery/ck.php?oaparams=2__bannerid=51__zoneid=16__cb=0b1e7ff9f4__oadest=https%3A%2F%2Fwww.facebook.com%2Fbdkawasaki%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://www.bikebd.com/adserv/www/images/2f691bd3927bd43facd1bfd2fc1896b1.jpg\" height=\"250\" width=\"300\"></a></p><p class=\"ql-align-center\"><img src=\"https://www.bikebd.com/adserv/www/delivery/lg.php?bannerid=51&amp;campaignid=24&amp;zoneid=16&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Flifan-kpr150-vs-kpr165-fi-vs-kpr165-carb-feature-comparison-review%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2Fpage%2F2%2F&amp;cb=0b1e7ff9f4\" height=\"0\" width=\"0\"></p><p class=\"ql-align-justify\">In the wheel setup, all the KPR models are commonly holding aluminum alloy rim with tubeless type tires. The front-wheel setup is the same in all the model that is 90/90-17. But the rear setup widened in the newer models. In KPR150 its 120/80-17 but upgraded into 130/80-17 in KPR165-Carb &amp; KPR165-FI version.</p><p class=\"ql-align-justify\">Coming to the brake and suspension system, all the KPR models available in Bangladesh are holding the same brake and suspension setup. Its commonly hydraulic disk brake setup in both wheels. Commonly they also carrying the same 37mm telescopic-fork suspension and mono suspension at the rear that is adjustable type.</p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/01/lifan-kpr150-feature-specification-top-speed-review-price-1.jpg\" height=\"292\" width=\"800\"></p><h2><strong><u>Lifan KPR150 VS KPR165-FI VS KPR165-Carb Engine &amp; Features</u></strong></h2><p class=\"ql-align-justify\">The Lifan KPR series owned its popularity with engine power &amp; performance as well as the damn cool looks &amp; design. Sequentially, the engine and other related mechanical stuff in Lifan KPR150 VS KPR165-FI VS KPR165-Carb got quite vital upgrades. Commonly, all the three models holding the same type of single-cylinder, four-stroke, water-cooled, 2-valve SOHC engine. All the engines are featured with return type 6-speed transmission and electric start system.</p><p class=\"ql-align-justify\">Hence the differences are in their cylinder displacement and fuel feeding system. Further, the engine tweaking is different, and the gear mechanism remarkably improved in the latest releases. Thereby the KPR150 is carrying a 150cc carburetor featured engine. That has rated for the power of 14.8BHP@8,500RPM and torque of 14NM@6,500RPM. On the counter, KPR165-Carb and KPR165-FI holding 165cc NBF-2 engines featured accordingly carburetor and EFI systems. Those are rated for the power of 16.8BHP@8,000RPM and torque of 17NM@6,500RPM.</p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/01/lifan-kpr165-fi-feature-specification-top-speed-review-price.jpg\" height=\"292\" width=\"800\"></p><h2><strong><u>Lifan KPR150 VS KPR165-FI VS KPR165-Carb Feature Comparison</u></strong></h2><p class=\"ql-align-justify\">After the knowledge on engine capacity and performance figures now the concern is which KPR version is featured for what? Well, the KPR150 is featured with the combination of power, acceleration, and fuel economy within a certain budget range. Being carburetor featured it can perform even in the worst fuel condition. Further, braking and controlling features are good enough even with the 120/80-17 size rear tire.</p><p class=\"ql-align-justify\">In the KPR165-Carb, the engine comes with a bigger displacement that also is the update Lifan NBF-2 engine. Hence the power and torque figure enhanced, and being the NBF-2 class engine it’s more refined and performance-oriented. Moreover, the gear mechanism also developed. Being carbureted the positive side is KPR165-Carb can deal with the worst fuel situation which is a common issue in Bangladesh. But obviously the fuel economy may differ in a range due to carburetor setting and fuel condition.</p><p class=\"ql-align-justify\">Lastly, the KPR165-FI also carrying the same NBF-2 engine as the Carb model. But it enhanced with a new&nbsp;<a href=\"https://www.bikebd.com/carburetor-vs-fuel-injection-engine/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\">Electronic Fuel-Injection System</a>, dedicated exhaust, and updated catalytic converter setup. Thus, the fuel economy and performance figures are more précised in the KPR165-FI model. Further, power delivery, gear shifting all are tweaked for better performance. But obviously it requires for quality fuel and caring maintenances to squeeze out betterment. That’s it.</p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/01/lifan-kpr165-carb-feature-specification-top-speed-review-price.jpg\" alt=\"lifan kpr150 vs kpr165-fi vs kpr165-carb feature comparison review\" height=\"525\" width=\"800\"></p><p class=\"ql-align-justify\">So, readers, that’s the summary of the Lifan KPR150 VS KPR165-FI VS KPR165-Carb Feature Comparison. We hope you got a clearer view of the features and performances of each version of Lifan KPR. So pick your model upon your need, requirement and riding patterns. Thanks, everyone.</p><p><br></p>', '2020-02-24 21:07:56', '2020-03-11 03:35:39', NULL),
(16, 'New-Honda-CB-Hornet-160R-ABS-Feature-Detail', 'en', 0, 1, NULL, 'New Honda CB Hornet 160R ABS Feature Detail', 'new Honda', '', 'New Honda CB Hornet 160R ABS Feature DetailNew Honda CB Hornet 160R ABS Feature Detail', '1582621774__259957.jpeg', 1, 'New Honda CB Hornet 160R ABS Feature DetailNew Honda CB Hornet 160R ABS Feature Detail', '<p class=\"ql-align-justify\">Honda Motorcycle has updated the Honda Hornet 160R with new shade and features. Accordingly, we are here featuring the New Honda CB Hornet 160r ABS feature detail. So let’s illuminate on the refreshed motorcycle features that build after you.</p><p class=\"ql-align-justify\"><img src=\"https://www.bikebd.com/wp-content/uploads/2019/01/new-honda-cb-hornet-160r-abs-feature-specification-top-speed-mileage.jpg\" alt=\"honda cb hornet\" height=\"477\" width=\"800\"></p><h2><strong><u>New Honda CB Hornet 160R ABS – New Shade &amp; Refreshed Look</u></strong></h2><p class=\"ql-align-center\"><a href=\"https://bkdads.bikebd.com/www/delivery/ck.php?oaparams=2__bannerid=39__zoneid=19__cb=55b248cf56__oadest=https%3A%2F%2Fwww.facebook.com%2FYamahabd%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://bkdads.bikebd.com/www/images/1b13adc631e232de9bb17e7dd0f79d27.gif\" height=\"250\" width=\"300\"></a></p><p class=\"ql-align-center\"><img src=\"https://bkdads.bikebd.com/www/delivery/lg.php?bannerid=39&amp;campaignid=13&amp;zoneid=19&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Fnew-honda-cb-hornet-160r-abs-feature-detail%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2Fpage%2F2%2F&amp;cb=55b248cf56\" height=\"0\" width=\"0\"></p><p class=\"ql-align-justify\">The new Honda CB Hornet 160R ABS is a refreshed motorcycle that has updated with a spanking new skin. Hence few enhancements came with its design and controlling characteristics also updated.</p><p class=\"ql-align-justify\">Coming to the new skin tone the exterior now comes with mind-blowing sporty 3D graphics. The panels still carry both the glossy and matt parts. But the glossy skin is crafted with more attractive dual tone graphics. Furthermore, the motorcycle is now available in five different striking shades.</p><p class=\"ql-align-justify\">Secondly, Honda refreshed the new motorcycle headlamp assembly. It got all new stunning shape, design, and feature. The headlamp is now DC LED setup. The assembly is redesigned with a double pit lamp. Here the pits are placed directing up and down dedicating for hi and low beams.</p><p class=\"ql-align-center\"><a href=\"https://www.bikebd.com/adserv/www/delivery/ck.php?oaparams=2__bannerid=42__zoneid=17__cb=5aa260ca3f__oadest=https%3A%2F%2Fwww.facebook.com%2Fsuzukibd%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://www.bikebd.com/adserv/www/images/7bd881b7c8feb48367a6a0d4b5bf5e01.gif\" height=\"90\" width=\"620\"></a></p><p class=\"ql-align-center\"><img src=\"https://www.bikebd.com/adserv/www/delivery/lg.php?bannerid=42&amp;campaignid=19&amp;zoneid=17&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Fnew-honda-cb-hornet-160r-abs-feature-detail%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2Fpage%2F2%2F&amp;cb=5aa260ca3f\" height=\"0\" width=\"0\"></p><p class=\"ql-align-justify\">The third enhancement comes on design is the new design of bikini shield before the ODO panel. The ODO console is now protected by a new shield. It gave the motorcycle a sportier look from the front end along with the new design of headlamp. Hence from rider’s position, it also looks cool.</p><p class=\"ql-align-justify\">So, guys, you can see the new Honda CB Hornet 160R ABS is a refreshed machine with new skin tone and with design updates.</p><p class=\"ql-align-justify\"><img src=\"https://www.bikebd.com/wp-content/uploads/2019/01/new-honda-cb-hornet-160r-abs-price-in-bangladesh.jpg\" alt=\"new-honda-cb-hornet-160r-abs-price-in-bangladesh\" height=\"444\" width=\"800\"></p><h2><strong><u>New Honda CB Hornet 160R ABS – Safety Enhancements</u></strong></h2><p class=\"ql-align-justify\">In the chassis, wheel, and suspension the new Hornet 160R ABS is remaining same as were earlier. But the major controlling enhancement came with its braking system. The new machine comes with a single channel ABS braking system.</p><p class=\"ql-align-center\"><a href=\"https://www.bikebd.com/adserv/www/delivery/ck.php?oaparams=2__bannerid=51__zoneid=16__cb=e0a86a0993__oadest=https%3A%2F%2Fwww.facebook.com%2Fbdkawasaki%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://www.bikebd.com/adserv/www/images/2f691bd3927bd43facd1bfd2fc1896b1.jpg\" height=\"250\" width=\"300\"></a></p><p class=\"ql-align-center\"><img src=\"https://www.bikebd.com/adserv/www/delivery/lg.php?bannerid=51&amp;campaignid=24&amp;zoneid=16&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Fnew-honda-cb-hornet-160r-abs-feature-detail%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2Fpage%2F2%2F&amp;cb=e0a86a0993\" height=\"0\" width=\"0\"></p><p class=\"ql-align-justify\">The ABS system equipped with the&nbsp;front wheel, so it’s a remarkable update that ensured better controllability and safety. In addition, the new version also comes with rear disk braking system as standard. Therefore along with front wheel ABS and rear disk brake the new Hornet is easier and safer to control.</p><p class=\"ql-align-justify\">Hence in controlling characteristics, the new machine comes with a safety feature that is Hazard Switch. The switch triggers to blink all the turning indicators in uneven situations like fog, rain, going straight or low visibility conditions. So it’s an important safety enhancement that comes with new Honda CB Hornet 160R ABS.</p><p class=\"ql-align-justify\"><img src=\"https://www.bikebd.com/wp-content/uploads/2019/01/new-honda-cb-hornet-160r-abs-feature-review.jpg\" alt=\"new-honda-cb-hornet-160r-abs-feature-review\" height=\"350\" width=\"800\"></p><h2><strong><u>New Honda CB Hornet 160R ABS – Engine &amp; Specification</u></strong></h2><p class=\"ql-align-justify\">In the engine and other mechanical feature the Hornet 160R ABS remaining quite same. But the engine is tweaked with India’s latest BS-IV emission standard. Hence along with Honda’s HET refinement, it’s now more efficient and performance oriented.</p><p class=\"ql-align-justify\">So not extending more on common features here we put the latest official specification table of the new motorcycle. Therefore entertain yourself with more specific detail of the bike.</p><h3><strong>Specification<u>New Honda CB Hornet 160R ABS</u></strong></h3><p>EngineAir Cooled, 4 Stroke, 2-Valve, SI BS-IV EngineDisplacement162.71 ccBore x Stroke57.30mm x 63.09mmCompression Ratio10.0:1Maximum Power11.1 KW (14.9BHP) @ 8,500RPMMaximum Torque14.5 Nm @ 6,500RPMFuel SupplyCarburetorIgnitionCDIStarting MethodElectric &amp; Kick StartClutch TypeWet, Multiple-DiscLubricationWet SumpTransmissionConstant mesh 5-speed, 1-N-2345<strong><u>Dimension</u></strong>Frame TypeDiamondDimension (LxWxH)2,041mm x 783mm x 1,091mmWheelbase1,346mmGround Clearance164mmSaddle HeightNot FoundWeight (Kerb)140 kg (ABS – STD) / 141 kg (ABS – DLX)Fuel Capacity12 LitersEngine Oil1.0 Liters<strong><u>Wheel, Brake &amp; Suspension</u></strong>Suspension (Front/Rear)Telescopic / Mono ShockBrake system (Front/Rear)Front 276mm Disc with ABS;220mm Disk / 130mm Drum</p><p>Tire size (Front / Rear)Front: 100/80-17;Rear: 140/70-17</p><p>Both Tubeless</p><p>Battery12V 35/35WHeadlampDouble Pit LEDSpeedometerFull Digital</p><p class=\"ql-align-justify\"><em>*All the specifications are subject to change upon company rules, policy, offer &amp; promotion. BikeBD is not liable for the changes.</em></p><p class=\"ql-align-justify\"><img src=\"https://www.bikebd.com/wp-content/uploads/2019/01/new-honda-cb-hornet-160r-abs-featured-new-look.jpg\" alt=\"honda cb hornet 160r abs\" height=\"291\" width=\"800\"></p><p class=\"ql-align-justify\">So, readers, you can see the new Honda CB Hornet 160R ABS is the new version that comes with a lot of refreshments. Hence we welcome the enhancements and expecting the availability soon in our market. Therefore guys stay tuned with us and stay updated. Thanks, everyone.</p><p><br></p>', '2020-02-24 21:09:34', '2020-03-11 03:35:40', NULL),
(17, 'Bajaj-Discover-125-Discount-Offer-By-Uttara-Motors!', 'en', 0, 1, NULL, 'Bajaj Discover 125 Discount Offer By Uttara Motors!', 'bajaj', '', 'Bajaj Discover 125 Discount Offer By Uttara Motors!Bajaj Discover 125 Discount Offer By Uttara Motors!', '1582621840__620620.jpeg', 1, 'Bajaj Discover 125 Discount Offer By Uttara Motors!Bajaj Discover 125 Discount Offer By Uttara Motors!Bajaj Discover 125 Discount Offer By Uttara Motors!', '<p>Uttara Motors Ltd. – sole distributor of Bajaj Motorcycles in Bangladesh has announced&nbsp;<strong>Bajaj Discover 125 Discount Offer</strong>&nbsp;For this January. In this same month, they have announced a discount offer for Pulsar Series and Bajaj Discover 110, and now the 125cc variant of this popular commuter bike gets the discount offer.</p><p class=\"ql-align-center\"><a href=\"https://bkdads.bikebd.com/www/delivery/ck.php?oaparams=2__bannerid=39__zoneid=19__cb=6d24131e75__oadest=https%3A%2F%2Fwww.facebook.com%2FYamahabd%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://bkdads.bikebd.com/www/images/1b13adc631e232de9bb17e7dd0f79d27.gif\" width=\"300\" height=\"250\"></a></p><p class=\"ql-align-center\"><img src=\"https://bkdads.bikebd.com/www/delivery/lg.php?bannerid=39&amp;campaignid=13&amp;zoneid=19&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Fbajaj-discover-125-discount-offer%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2Fpage%2F3%2F&amp;cb=6d24131e75\" width=\"0\" height=\"0\"></p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/01/bajaj-discover-125-discount-offer.jpg\" alt=\"bajaj discover 125 discount offer\" width=\"402\" height=\"402\"></p><p><strong>Discount Offer:</strong></p><p class=\"ql-align-center\"><a href=\"https://www.bikebd.com/adserv/www/delivery/ck.php?oaparams=2__bannerid=42__zoneid=17__cb=c3a1327c0a__oadest=https%3A%2F%2Fwww.facebook.com%2Fsuzukibd%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://www.bikebd.com/adserv/www/images/7bd881b7c8feb48367a6a0d4b5bf5e01.gif\" width=\"620\" height=\"90\"></a></p><p class=\"ql-align-center\"><img src=\"https://www.bikebd.com/adserv/www/delivery/lg.php?bannerid=42&amp;campaignid=19&amp;zoneid=17&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Fbajaj-discover-125-discount-offer%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2Fpage%2F3%2F&amp;cb=c3a1327c0a\" width=\"0\" height=\"0\"></p><p>In the first month of 2020, Uttara Motors has been giving away discount offers on its most popular bikes. In the offer, they are giving away discounts of 4,000 BDT on different variants of Bajaj Discover 125.</p><p>After this discount, The Bajaj Discover 125 Disc brake edition is selling currently at 1,27,500 BDT, while the drum edition has a price tag of 1,20,500 BDT.</p><p class=\"ql-align-center\"><a href=\"https://www.bikebd.com/adserv/www/delivery/ck.php?oaparams=2__bannerid=51__zoneid=16__cb=f7c2c38ca8__oadest=https%3A%2F%2Fwww.facebook.com%2Fbdkawasaki%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://www.bikebd.com/adserv/www/images/2f691bd3927bd43facd1bfd2fc1896b1.jpg\" width=\"300\" height=\"250\"></a></p><p class=\"ql-align-center\"><img src=\"https://www.bikebd.com/adserv/www/delivery/lg.php?bannerid=51&amp;campaignid=24&amp;zoneid=16&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Fbajaj-discover-125-discount-offer%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2Fpage%2F3%2F&amp;cb=f7c2c38ca8\" width=\"0\" height=\"0\"></p><p>ModelPrevious Price (BDT)Discount (BDT)Current Price (BDT)Bajaj Discover 125 Disc1,31,5004,0001,27,500Bajaj Discover 125 Drum1,24,5004,0001,20,500</p><p>Along with the Bajaj Discover 125,&nbsp;<a href=\"https://www.bikebd.com/uttara-motors-ltd-8000-discount-bajaj-discover-110/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><strong>Uttara Motors Ltd. is also giving away 8,000 BDT Discount on Bajaj Discover 110</strong></a>. There is also another offer where&nbsp;<strong>Bajaj is giving away up to 12,073 BDT cashback on Bajaj Pulsar Series.</strong></p><p class=\"ql-align-center\"><a href=\"https://www.bikebd.com/bajaj-discount-offer-pulsar-series/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 255, 255); background-color: rgb(60, 165, 57);\">&nbsp;Click Here For Bajaj Pulsar Series Cashback Offer</a></p><p>This Discover 125 Discount Offer and all the other offers by Uttara Motors Ltd. will go on till further notice and is applicable to&nbsp;<a href=\"https://www.bikebd.com/bajaj-motorcycle-showroom-in-bangladesh/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><strong>All Bajaj Motorcycle Showroom In Bangladesh</strong></a>.</p><h3 class=\"ql-align-center\"><a href=\"https://www.youtube.com/watch?v=wdVC4K_zONk\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(0, 0, 0);\">Click Here For The First Impression Video of Bajaj Discover 125</a></h3><iframe class=\"ql-video\" allowfullscreen=\"true\" src=\"https://www.youtube.com/embed/wdVC4K_zONk?feature=oembed\" frameborder=\"0\"></iframe><p><br></p><p>Bajaj Discover series has always been different than most other commuter bikes from the segment, and the 125cc variant ensured that there was enough power to match up with the good styling of the bike.</p><p>The current Bajaj Discover 125 was updated back in 2018 with added features like digital speedometer, disc brake, new graphics, etc. This has been really popular among all the Discover variants, and now Uttara Motors Ltd. is giving away Discount Offer on Bajaj Discover 125 which will help more people buy this bike.</p><p>2020 has already been a year of cashback and discount offers, and Bajaj is definitely moving ahead of the curve by giving away discounts on its most popular bikes in the line-up.</p>', '2020-02-24 21:10:40', '2020-03-11 03:35:33', NULL);
INSERT INTO `blogs` (`id`, `slug`, `language`, `clickview`, `admin_id`, `superadmin_id`, `title`, `keyword`, `url`, `metadescription`, `postimage`, `status`, `shortdescription`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(18, 'Team-BikeBD', 'en', 2, 1, NULL, 'Suzuki Intruder 150 Review By Team BikeBD', ' BikeBD', '', 'Suzuki Intruder 150 Review By Team BikeBDSuzuki Intruder 150 Review By Team BikeBDSuzuki Intruder 150 Review By Team BikeBD', '1582621913__697866.jpeg', 1, 'Suzuki Intruder 150 Review By Team BikeBDSuzuki Intruder 150 Review By Team BikeBDSuzuki Intruder 150 Review By Team BikeBD', '<p>The Bangladeshi motorcycle market is mostly ruled by commuting motorcycles; followed by sports bikes and some people who wake up in the morning and want to ride a cruiser motorcycle. In fact, currently, the number is increasing slowly for cruiser motorcycles in the market. Now, we are going to introduce to you guys one from Suzuki, the modern cruiser, Suzuki Intruder 150 Review By Team BikeBD.</p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/01/suzuki-intruder.jpg\" alt=\"suzuki intruder\" height=\"500\" width=\"800\"></p><p>Suzuki Intruder was introduced in Bangladesh back in May 2018. Since then the bike has made a noticeable market and preference. Although, they have brought Fi and ABS version of this bike, today we will share details of Non-Fi and ABS version.</p><h3 class=\"ql-align-center\"><a href=\"https://www.youtube.com/watch?v=7sFIkpoEddg\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(0, 0, 0);\">Click Here For Suzuki Intruder FI With ABS Version</a></h3><p class=\"ql-align-center\"><a href=\"https://bkdads.bikebd.com/www/delivery/ck.php?oaparams=2__bannerid=39__zoneid=19__cb=dd8dc8c28d__oadest=https%3A%2F%2Fwww.facebook.com%2FYamahabd%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://bkdads.bikebd.com/www/images/1b13adc631e232de9bb17e7dd0f79d27.gif\" height=\"250\" width=\"300\"></a></p><p class=\"ql-align-center\"><img src=\"https://bkdads.bikebd.com/www/delivery/lg.php?bannerid=39&amp;campaignid=13&amp;zoneid=19&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Fsuzuki-intruder-150-review-by-team-bikebd%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2Fpage%2F3%2F&amp;cb=dd8dc8c28d\" height=\"0\" width=\"0\"></p><p>This non-Fi bike is currently available in two colors, Black &amp; Silver&amp; has a price tag of&nbsp;275,000 BDT in the offer price. The transformed smaller capacity Intruder took inspiration from its elder brother who has an 1800 cc engine &amp; has driveshaft to run the bike.</p><h3 class=\"ql-align-center\"><a href=\"https://www.bikebd.com/price/suzuki-intruder-150-price/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(0, 0, 0);\">Click Here For The Latest Price of Suzuki Intruder</a></h3><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/01/suzuki-intruder-bangladesh-1.jpg\" alt=\"suzuki intruder bangladesh\" height=\"500\" width=\"800\"></p><h3>Suzuki Intruder 150 Review – Test Ride Review</h3><p>To talk about the engine, Suzuki Intruder comes in Bangladesh fitted with the engine that we find in Suzuki Gixxer. The engine produces 14.6 BHP @ 8,000 RPM &amp; 14 NM of Torque @ 6,000 RPM. The single-cylinder 155 cc engine is air-cooled &amp; uses a carburetor to pass the fuel in the engine. The bike only has self-starter there is no kick start option.</p><p>For some reason, the vibration of the bike kicks out after 7000 RPM and that is also minimum to realize. I was shocked to find out that they didn’t detune the engine and kept the same instant ready pickup which we found while testing Suzuki Gixxer.&nbsp;I think that’s a bonus for people who may like ready pick up in their cruiser bike!</p><p class=\"ql-align-center\"><a href=\"https://www.bikebd.com/adserv/www/delivery/ck.php?oaparams=2__bannerid=42__zoneid=17__cb=59c6a87179__oadest=https%3A%2F%2Fwww.facebook.com%2Fsuzukibd%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://www.bikebd.com/adserv/www/images/7bd881b7c8feb48367a6a0d4b5bf5e01.gif\" height=\"90\" width=\"620\"></a></p><p class=\"ql-align-center\"><img src=\"https://www.bikebd.com/adserv/www/delivery/lg.php?bannerid=42&amp;campaignid=19&amp;zoneid=17&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Fsuzuki-intruder-150-review-by-team-bikebd%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2Fpage%2F3%2F&amp;cb=59c6a87179\" height=\"0\" width=\"0\"></p><p>The gear change is smooth on this motorcycle, despite having lots of things around the engine during our test ride we never found the engine to overheat.</p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/01/suzuki-intruder-150-review-1.jpg\" alt=\"suzuki intruder 150 review\" height=\"500\" width=\"800\"></p><p>The bike has halogen headlight, muscular fuel tank, speedometer borrowed straight from Gixxer, it also offers low riding position and the footrest are moved forwards as you can find in a cruising motorcycle, for starter it will make you a bit uncomfortable but once you ride it for 3-4 days straight you will get used to it.</p><p>I particularly like the twin exhaust, yes it is big and eats up lots of space on the right-hand side of the bike but if you look from a distance it looks stunning. The bike although has a low riding position but I am amazed how they still managed to have a 170 mm ground clearance. Even riding with a pillion it is a bit hard to hit the high-speed breakers in Dhaka city.</p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/01/suzuki-intruder-exhaust.jpg\" alt=\"suzuki intruder exhaust\" height=\"500\" width=\"800\"></p><p>They added halogen headlight with an LED projection underneath it as a parking light.&nbsp;The headlight illumination is good for highway riding &amp; the LED taillight has been kept in a good position so that the vehicle behind you can spot you once you brake.</p><p class=\"ql-align-center\"><a href=\"https://www.bikebd.com/adserv/www/delivery/ck.php?oaparams=2__bannerid=51__zoneid=16__cb=faf1e49e7d__oadest=https%3A%2F%2Fwww.facebook.com%2Fbdkawasaki%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://www.bikebd.com/adserv/www/images/2f691bd3927bd43facd1bfd2fc1896b1.jpg\" height=\"250\" width=\"300\"></a></p><p class=\"ql-align-center\"><img src=\"https://www.bikebd.com/adserv/www/delivery/lg.php?bannerid=51&amp;campaignid=24&amp;zoneid=16&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Fsuzuki-intruder-150-review-by-team-bikebd%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2Fpage%2F3%2F&amp;cb=faf1e49e7d\" height=\"0\" width=\"0\"></p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/01/suzuki-intruder-abs-review-1.jpg\" alt=\"suzuki intruder abs review\" height=\"500\" width=\"800\"></p><p>Suzuki added a 260 mm front disc brake with a single-channel ABS to the bike which becomes very important once you do high-speed braking. The front ABS really contributes 100%of the bike’s controlling under braking. They also added a 220 mm rear disc brake as standard.</p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/01/suzuki-intruder-abs.jpg\" alt=\"suzuki intruder abs\" height=\"500\" width=\"800\"></p><p>During our testing, we found the ABS system very helpful to gain control of the motorcycle. I think they have added too much power into this motorcycle given the people who will ride this will want more comfort over speed. The rear of the bike though slides around under heavy braking so you must be careful not to apply too much pressure on the rear brake pedal.</p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/01/suzuki-intruder-150-abs-price-in-bangladesh-1.jpg\" alt=\"suzuki intruder 150 abs price in bangladesh\" height=\"500\" width=\"800\"></p><p>Suspension wise the front telescopic suspensions does their work well, the rear mono-shock suspension which is attached on the swing arm does their work well. The rear suspension is on the softer side and it helps to absorb the bumps of the bad roads in Bangladesh well.</p><p>Suzuki gave 100 section front tyre and a 140 section rear tyre. Although this is not a bike to do cornering, but with a longer wheelbase and 140 sections rear tyre ensures that even if you need to do high-speed cornering you can still do it.</p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/01/intruder-150-review.jpg\" alt=\"intruder 150 review\" height=\"500\" width=\"800\"></p><p>Riding this bike in the city can be a hassle if you are stuck in Dhaka city heavy traffic. Unlike any commuting motorcycle, you can’t quickly change direction as the bike doesn’t have a big turning radius &amp; added to that as the bike is also very wide which makes it harder to go through small gaps. I agree for the people who will buy this won’t be too much an issue as they won’t be too concern about it.</p><p>Intruder shares the same chassis, engine, suspensions, speedometer; switch gears from Gixxer so finding &amp; buying those technical spare parts won’t be too much of an issue. But the body panel of the bike has too much body kit, yes I agree from a distant Intruder it will look beautiful to many but I think they have overdone. Despite all those things the bike still weighs 148 kg which to this segment is ok.</p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/01/intruder-bike-price-in-bd.jpg\" alt=\"intruder bike price in bd\" height=\"500\" width=\"800\"></p><p>The awkward thing about the whole bike is the ignition key position, still can’t find a reason why it has to be there. I think that makes it unique design-wise but I would still prefer the handlebar of the bike to be bent a bit more towards the rider instead of being a straight unit as it is not.</p><p>If you want to have MOST FUN from this motorcycle then you have to take this bike on a highway cruise. You can easily cruise on this motorcycle at a speed of 80-100 kmph on the highway. You can still get a top speed of 122 kmph but that is not something is why you bought this motorcycle.</p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/01/suzuki-intruder-mileage.jpg\" alt=\"suzuki intruder mileage\" height=\"500\" width=\"800\"></p><p>Pillion seat is a bit small but for cruise ride, the rider and pillion need to sit close for fine balancing on the highway. Also as the bike is sitting low on the ground tall pillion may feel uncomfortable for a long-distance ride.</p><p>The gearbox of the motorcycle is soft after the first servicing, so far the plastic quality &amp; the fit &amp; finishing looks for us but only after riding the bike over a year will showcase the true picture of how well they hold on to their position. The bike’s 11-liter fuel tank I think it’s a bit less, for the cruiser motorcycle it should have had 15 liters of fuel in its tank.</p><p>Despite having an engine from Gixxer &amp; a heavy 148 body Suzuki Intruder still returns a mileage of 35 kmpl in Dhaka city while on the highway the mileage figure can be targeted as 42kmpl. Mileage wise it is a bit down due to the weight of the bike &amp; also this bike is a bit bulky so it eats up lots of spaces while traveling through air.</p><h4><img src=\"https://www.bikebd.com/wp-content/uploads/2020/01/suzuki-intruder-automatic-gear.jpg\" alt=\"suzuki intruder automatic gear\" height=\"500\" width=\"800\"></h4><h3><strong>Suzuki Intruder 150 Review – PROS</strong></h3><ul><li>Gixxer’s engine so good ready pickup.</li><li>Minimum vibration from the engine</li><li>Good plastic quality, fit &amp; finishing</li><li>Comfortable riding position.</li><li>Good braking stability for the front single-channel ABS</li><li>Soft suspensions setup.</li></ul><h4><img src=\"https://www.bikebd.com/wp-content/uploads/2020/01/suzuki-intruder-test-drive-review.jpg\" alt=\"suzuki intruder test drive review\" height=\"500\" width=\"800\"></h4><h3><strong>Suzuki Intruder 150 Review – CONS</strong></h3><ul><li>Too much plastic/kit in the bike</li><li>Pillion seat is small &amp; not comfortable for a long-distance ride.</li><li>2,75,000 BDT is a bit expensive.</li><li>Not an easy bike to maneuver in city traffic.</li></ul><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/01/suzuki-intruder-review-1.jpg\" alt=\"suzuki intruder review\" height=\"500\" width=\"800\"></p><p>Due to the lack of options in Bangladesh, there are only 2-3 good cruiser motorcycles available in our market. Suzuki Intruder is one of them which will attract some cruiser lovers who want to ride their machine on the highway and have a fantastic weekend ride. I still think that the price of the bike is a bit too much comparing the current state of the bike market.</p>', '2020-02-24 21:11:53', '2020-03-11 03:35:33', NULL),
(19, 'Suzuki-Offering-40,000-BDT-Cashback-on-Suzuki-Gixxer-SF', 'en', 1, 1, NULL, 'Suzuki Offering 40,000 BDT Cashback on Suzuki Gixxer ', 'Suzuki ', '', 'Suzuki Offering 40,000 BDT Cashback on Suzuki Gixxer SFSuzuki Offering 40,000 BDT Cashback on Suzuki Gixxer SFSuzuki Offering 40,000 BDT ', '1582622007__500153.jpeg', 1, 'Suzuki Offering 40,000 BDT Cashback on Suzuki Gixxer SFSuzuki Offering 40,000 BDT Cashback on Suzuki Gixxer SFSuzuki Offering 40,000 BDT Cas', '<p>Just two weeks back Suzuki announced a cashback offer on their Gixxer series. Back then the maximum cashback offer which they offered was 20,000 BDT but due to popular demand among the bike lovers, Suzuki now is offering 40,000 BDT Cashback on Suzuki Gixxer SF.</p><p class=\"ql-align-center\"><a href=\"https://bkdads.bikebd.com/www/delivery/ck.php?oaparams=2__bannerid=39__zoneid=19__cb=195d52933e__oadest=https%3A%2F%2Fwww.facebook.com%2FYamahabd%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://bkdads.bikebd.com/www/images/1b13adc631e232de9bb17e7dd0f79d27.gif\" width=\"300\" height=\"250\"></a></p><p class=\"ql-align-center\"><img src=\"https://bkdads.bikebd.com/www/delivery/lg.php?bannerid=39&amp;campaignid=13&amp;zoneid=19&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Fsuzuki-cashback-suzuki-gixxer-sf%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2Fpage%2F3%2F&amp;cb=195d52933e\" width=\"0\" height=\"0\"></p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/01/suzuki-gixxer-sf-offer-january-2020.jpg\" alt=\"suzuki gixxer sf offer january 2020\" width=\"800\" height=\"500\"></p><p class=\"ql-align-center\"><a href=\"https://www.bikebd.com/adserv/www/delivery/ck.php?oaparams=2__bannerid=42__zoneid=17__cb=002d7a5c61__oadest=https%3A%2F%2Fwww.facebook.com%2Fsuzukibd%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://www.bikebd.com/adserv/www/images/7bd881b7c8feb48367a6a0d4b5bf5e01.gif\" width=\"620\" height=\"90\"></a></p><p class=\"ql-align-center\"><img src=\"https://www.bikebd.com/adserv/www/delivery/lg.php?bannerid=42&amp;campaignid=19&amp;zoneid=17&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Fsuzuki-cashback-suzuki-gixxer-sf%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2Fpage%2F3%2F&amp;cb=002d7a5c61\" width=\"0\" height=\"0\"></p><p><strong>Suzuki Gixxer SF</strong>&nbsp;is a kitted version of Suzuki Gixxer. In Bangladesh they have two versions of the bike, one with the carburetor engine while the other with the Fuel Injected (Fi) bike. They both share the same 155 cc air cooling, single-cylinder engine. The engine of the bike produces 14.6 BHP &amp; 14 NM of Torque.&nbsp;&amp; fully digital speedometer.</p><h2 class=\"ql-align-center\"><a href=\"https://www.youtube.com/watch?v=VxvkqUj2jM4&amp;t=148s\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\">Suzuki Gixxer SF FI First Impression Review</a></h2><iframe class=\"ql-video\" allowfullscreen=\"true\" src=\"https://www.youtube.com/embed/VxvkqUj2jM4?start=148&amp;feature=oembed\" frameborder=\"0\"></iframe><p><br></p><p>Both the bikes tubeless tires, 7 steps adjustable rear mono shock suspension, front telescopic suspensions, duel disc brake as standard. Suzuki Bangladesh is giving a huge discount offer on the entire Suzuki Gixxer line up. Price and discount offers are given below:</p><p class=\"ql-align-center\"><a href=\"https://www.bikebd.com/adserv/www/delivery/ck.php?oaparams=2__bannerid=51__zoneid=16__cb=4fb82f2285__oadest=https%3A%2F%2Fwww.facebook.com%2Fbdkawasaki%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://www.bikebd.com/adserv/www/images/2f691bd3927bd43facd1bfd2fc1896b1.jpg\" width=\"300\" height=\"250\"></a></p><p class=\"ql-align-center\"><img src=\"https://www.bikebd.com/adserv/www/delivery/lg.php?bannerid=51&amp;campaignid=24&amp;zoneid=16&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Fsuzuki-cashback-suzuki-gixxer-sf%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2Fpage%2F3%2F&amp;cb=4fb82f2285\" width=\"0\" height=\"0\"></p><h2><strong>Suzuki Gixxer Offer January 2020</strong></h2><p>Model NameRegular PriceOffer Price in January 2020Suzuki Gixxer SF (Carburator)2,59,950 BDT2,19,950 BDTSuzuki Gixxer SF (Fi)2,79,950 BDT2,39,950 BDTSuzuki Gixxer (Single Disc)2,09,950 BDT1,84,950 BDTSuzuki Gixxer (Dual Disc)2,29,950 BDT1,99,950 BDT</p><p>Hayate is the only commuting motorcycle in the Suzuki line up in Bangladesh. Hayate has 3 editions in Bangladesh. Hayate&nbsp;<strong>base edition cost 89,950 BDT</strong>&nbsp;while the&nbsp;<strong>Special Edition</strong>&nbsp;launched last year will cost&nbsp;<strong>94,950 BDT</strong>&nbsp;and finally,&nbsp;<strong>Suzuki Hayate EP</strong>&nbsp;which is silently pushed in the market will cost 109,950 BDT.</p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2019/12/suzuki-gixxer-sf-fi-1.jpg\" alt=\"suzuki gixxer sf fi\" width=\"640\" height=\"480\"></p><p>Suzuki also has a cruiser motorcycle in their line up. Suzuki Intruder, we are currently testing this motorcycle and come at the end of January we will publish a Test Ride Review on the bike at our website. The intruder is currently the only offering of its kind from any of the Japanese motorcycle company.</p><p>One of the most surprise packages of Suzuki is the introduction of the&nbsp;<a href=\"https://www.bikebd.com/bn/suzuki-gsx-r-150-%e0%a6%9f%e0%a7%87%e0%a6%b8%e0%a7%8d%e0%a6%9f-%e0%a6%b0%e0%a6%be%e0%a6%87%e0%a6%a1-%e0%a6%b0%e0%a6%bf%e0%a6%ad%e0%a6%bf%e0%a6%89/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><strong>Suzuki GSX-R150</strong></a>. The fastest sports bike in Bangladesh is now priced at 350,000 BDT, making it also the cheapest sports bike against its competitors. Stay tuned for more details and updates. Thank you.</p>', '2020-02-24 21:13:27', '2020-03-11 03:35:32', NULL),
(20, 'Uttara-Motors', 'en', 0, 1, NULL, 'Uttara Motors Announced Discount Offer On Bajaj Pulsar S ...', 'Uttara Motors ', '', 'Uttara Motors Announced Discount Offer On Bajaj Pulsar S ...Uttara Motors Announced Discount Offer On Bajaj Pulsar S ...', '1582622072__320761.jpeg', 1, 'Uttara Motors Announced Discount Offer On Bajaj Pulsar S ...Uttara Motors Announced Discount Offer On Bajaj Pulsar S ...', '<p>Just yesterday Uttara Motors has announced the discount offer on one of their commuter motorcycle, Bajaj Discover 110. Now they have announced the&nbsp;<strong>Discount offer</strong>&nbsp;on the Bajaj Pulsar series.</p><p class=\"ql-align-center\"><a href=\"https://bkdads.bikebd.com/www/delivery/ck.php?oaparams=2__bannerid=39__zoneid=19__cb=e686b8df87__oadest=https%3A%2F%2Fwww.facebook.com%2FYamahabd%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://bkdads.bikebd.com/www/images/1b13adc631e232de9bb17e7dd0f79d27.gif\" width=\"300\" height=\"250\"></a></p><p class=\"ql-align-center\"><img src=\"https://bkdads.bikebd.com/www/delivery/lg.php?bannerid=39&amp;campaignid=13&amp;zoneid=19&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Fbajaj-discount-offer-pulsar-series%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2Fpage%2F3%2F&amp;cb=e686b8df87\" width=\"0\" height=\"0\"></p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/01/bajaj-pulsar-discount-offer.jpg\" alt=\"bajaj pulsar discount offer\" width=\"500\" height=\"500\"></p><p>Bajaj is giving offers on Bajaj Pulsar150 Twin Disc, Pulsar NS 160 and the latest Bajaj Pulsar NS160 Fi with ABS. Uttara Motors launched the NS160 Fi ABS version last year. Every Pulsar NS lover has waited for that version to come in Bangladesh.</p><p class=\"ql-align-center\"><a href=\"https://www.bikebd.com/adserv/www/delivery/ck.php?oaparams=2__bannerid=42__zoneid=17__cb=08cd597543__oadest=https%3A%2F%2Fwww.facebook.com%2Fsuzukibd%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://www.bikebd.com/adserv/www/images/7bd881b7c8feb48367a6a0d4b5bf5e01.gif\" width=\"620\" height=\"90\"></a></p><p class=\"ql-align-center\"><img src=\"https://www.bikebd.com/adserv/www/delivery/lg.php?bannerid=42&amp;campaignid=19&amp;zoneid=17&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Fbajaj-discount-offer-pulsar-series%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2Fpage%2F3%2F&amp;cb=08cd597543\" width=\"0\" height=\"0\"></p><h3><strong>Bajaj Pulsar Discount Offer January – 2020</strong></h3><p>ModelPriceDiscountNS160 Fi ABS254,90012,073(Cashback)NS160 Twin Disc1,92,9004,000Pulsar 150 Twin Disc1,82,9004,000</p><p>Bajaj is giving a discount on Bajaj Pulsar 150 Twin disc and Bajaj Pulsar NS160. On Bajaj Pulsar 150 Twin disc and Pulsar NS160, they are 4,000/- BDT discounts on each motorcycle. On Bajaj Pulsar NS160 Fi ABS Uttara Motors is giving 12073/- BDT registration fee cashback.</p><p class=\"ql-align-center\"><a href=\"https://www.bikebd.com/adserv/www/delivery/ck.php?oaparams=2__bannerid=51__zoneid=16__cb=85ae5778e1__oadest=https%3A%2F%2Fwww.facebook.com%2Fbdkawasaki%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://www.bikebd.com/adserv/www/images/2f691bd3927bd43facd1bfd2fc1896b1.jpg\" width=\"300\" height=\"250\"></a></p><p class=\"ql-align-center\"><img src=\"https://www.bikebd.com/adserv/www/delivery/lg.php?bannerid=51&amp;campaignid=24&amp;zoneid=16&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Fbajaj-discount-offer-pulsar-series%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2Fpage%2F3%2F&amp;cb=85ae5778e1\" width=\"0\" height=\"0\"></p><h3 class=\"ql-align-center\"><a href=\"https://www.youtube.com/watch?v=LHMgdvamRQc\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(0, 0, 0);\">Click To See The First Impression Of Bajaj Pulsar NS160 FI With ABS</a></h3><iframe class=\"ql-video\" allowfullscreen=\"true\" src=\"https://www.youtube.com/embed/LHMgdvamRQc?feature=oembed\" frameborder=\"0\"></iframe><p><br></p><p>After a long period, Bajaj launched the&nbsp;<a href=\"https://www.youtube.com/watch?v=qk4pjvJIM-4\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><strong>Bajaj Pulsar 150 twin disc</strong></a>&nbsp;in Bangladesh last year. Bajaj Pulsar 150 twin disc was launched with new design, graphics, and features. It was technically a new bike equipped with new features like 260mm front disc brake and 230mm rear disc brake. After the discount&nbsp;<strong>price of this bike is 1,82,900 BDT</strong>.</p><p>In 2019, one of the biggest surprises is the launching&nbsp;<strong>Bajaj Pulsar NS160 Fi ABS</strong>. Every Pulsar lover waited for the Fi and ABS version. This bike was everything the same as the old version. But Bajaj added the&nbsp;<strong>Fi and ABS</strong>&nbsp;as new features.</p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2019/09/bajaj-pulsar-ns160-fi-with-abs.jpg\" alt=\"bajaj pulsar ns160 fi with abs\" width=\"640\" height=\"480\"></p><p><strong>Bajaj Pulsar NS160</strong>&nbsp;is one of the popular motorcycles in the 160cc nacked sports segment. It has a 160cc engine which is produces&nbsp;<strong>15.3 BHP @ 8500 RPM &amp; 14.6 NM of Torque @ 6,500 RPM</strong>. You can read our<a href=\"https://www.bikebd.com/bn/%e0%a6%ac%e0%a6%be%e0%a6%9c%e0%a6%be%e0%a6%9c-%e0%a6%aa%e0%a6%be%e0%a6%b2%e0%a6%b8%e0%a6%be%e0%a6%b0-%e0%a6%8f%e0%a6%a8%e0%a6%8f%e0%a6%b8%e0%a7%a7%e0%a7%ac%e0%a7%a6/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\">&nbsp;test ride review of Bajaj Pulsar NS160</a>. Right now the&nbsp;<strong>price of this bike is 1,92,900 BDT and the price of Fi with ABS version is 2,54,900 BDT</strong>.</p><p>In 2020, every motorcycle company has started to give their best offers to attract their customers. Bajaj has been already giving an offer on Bajaj Discover 110. Now they are giving&nbsp;<strong>Discount Offer</strong>&nbsp;on the Bajaj Pulsar series. Stay tuned for more details. Thank You.</p>', '2020-02-24 21:14:32', '2020-03-11 03:35:31', NULL),
(21, 'Uttara', 'en', 1, 1, NULL, 'Uttara Motors Ltd Is Giving 8000 BDT Discount on Bajaj D ...', 'suzuki mela 2019', '', 'Uttara Motors Ltd Is Giving 8000 BDT Discount on Bajaj D ...Uttara Motors Ltd Is Giving 8000 BDT Discount on Bajaj D ...', '1582622143__919403.jpeg', 1, 'Uttara Motors Ltd Is Giving 8000 BDT Discount on Bajaj D ...Uttara Motors Ltd Is Giving 8000 BDT Discount on Bajaj D ...', '<p><strong>Uttara Motors Ltd</strong>&nbsp;the biggest motorcycle company in the market in terms of sales per year is giving away 8000 BDT cash discount offer on Bajaj Discover 110. After the discount offer, the&nbsp;<strong>current price of Bajaj Discover 110 is 111,500 BDT.&nbsp;</strong>This offer will be available&nbsp;<a href=\"https://www.bikebd.com/bajaj-motorcycle-showroom-in-bangladesh/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\">across all dealers</a>&nbsp;of Bajaj in Bangladesh and the offer will be valid for a limited amount of time.</p><p class=\"ql-align-center\"><a href=\"https://bkdads.bikebd.com/www/delivery/ck.php?oaparams=2__bannerid=39__zoneid=19__cb=17200240c7__oadest=https%3A%2F%2Fwww.facebook.com%2FYamahabd%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://bkdads.bikebd.com/www/images/1b13adc631e232de9bb17e7dd0f79d27.gif\" width=\"300\" height=\"250\"></a></p><p class=\"ql-align-center\"><img src=\"https://bkdads.bikebd.com/www/delivery/lg.php?bannerid=39&amp;campaignid=13&amp;zoneid=19&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Futtara-motors-ltd-8000-discount-bajaj-discover-110%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2Fpage%2F3%2F&amp;cb=17200240c7\" width=\"0\" height=\"0\"></p><p>&nbsp;</p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/01/uttara-motors-ltd-discover-110-price-%E0%A6%AC%E0%A6%BE%E0%A6%9C%E0%A6%BE%E0%A6%9C-%E0%A6%A1%E0%A6%BF%E0%A6%B8%E0%A7%8D%E0%A6%95%E0%A6%AD%E0%A6%BE%E0%A6%B0.jpg\" alt=\"uttara motors ltd discover 110 price বাজাজ ডিস্কভার\" width=\"500\" height=\"500\"></p><p class=\"ql-align-center\"><a href=\"https://www.bikebd.com/adserv/www/delivery/ck.php?oaparams=2__bannerid=42__zoneid=17__cb=7231b8f3e3__oadest=https%3A%2F%2Fwww.facebook.com%2Fsuzukibd%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://www.bikebd.com/adserv/www/images/7bd881b7c8feb48367a6a0d4b5bf5e01.gif\" width=\"620\" height=\"90\"></a></p><p class=\"ql-align-center\"><img src=\"https://www.bikebd.com/adserv/www/delivery/lg.php?bannerid=42&amp;campaignid=19&amp;zoneid=17&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Futtara-motors-ltd-8000-discount-bajaj-discover-110%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2Fpage%2F3%2F&amp;cb=7231b8f3e3\" width=\"0\" height=\"0\"></p><p>Bajaj made the Discover series live back in 2003, it was targetted to a customer segment who loves a stylish commuting motorcycle. The discover series saw having engines ranging from 100 to even 150cc.</p><p class=\"ql-align-center\"><a href=\"https://www.bikebd.com/adserv/www/delivery/ck.php?oaparams=2__bannerid=51__zoneid=16__cb=49620c6717__oadest=https%3A%2F%2Fwww.facebook.com%2Fbdkawasaki%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://www.bikebd.com/adserv/www/images/2f691bd3927bd43facd1bfd2fc1896b1.jpg\" width=\"300\" height=\"250\"></a></p><p class=\"ql-align-center\"><img src=\"https://www.bikebd.com/adserv/www/delivery/lg.php?bannerid=51&amp;campaignid=24&amp;zoneid=16&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Futtara-motors-ltd-8000-discount-bajaj-discover-110%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2Fpage%2F3%2F&amp;cb=49620c6717\" width=\"0\" height=\"0\"></p><p>Bajaj still kept the core design in the Discover series. They gave the bike a 115 cc air cooling engine. The engine produces 8.4 BHP @ 7000 RPM &amp; 9.81 NM of Torque @ 5000 RPM. The engine is a SOHC engine and it has DTS-i technology. The bike has both kick &amp; self-starter. The bike is equipped with a 4-speed gearbox.</p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2018/04/2018-bajaj-discover-110-launch-in-bangladesh.jpg\" alt=\"2018-bajaj-discover-110-launch-in-bangladesh\" width=\"800\" height=\"567\"></p><p>So what is new in this Bajaj Discover 110? They updated the speedometer console, which now has a digital odometer with an analog rev counter. This bike gets 6 pieces of LED DRL on both sides of the headlight assembly. The bike also gets alloy rims.&nbsp;The bike weighs 120 kg and has a fuel tank capacity of 8 liters.</p><h3 class=\"ql-align-center\"><a href=\"https://www.youtube.com/watch?v=FkC8SxSgX0k\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(0, 0, 0);\">Bajaj Discover 110 – New Discover Motorcycle In Bangladesh</a></h3><iframe class=\"ql-video\" allowfullscreen=\"true\" src=\"https://www.youtube.com/embed/FkC8SxSgX0k?feature=oembed\" frameborder=\"0\"></iframe><p><br></p><p>For braking the bike gets 130 mm front drum brakes with a 110 mm rear drum brake. One of the big reasons why Discover is so popular in Bangladesh is due to suspensions. The front suspensions are telescopic with a 140 mm fork travel while on the rear there are two 120 mm rear wheel travel suspensions which are Nitrox (gas-filled).</p><p><strong>Uttara Motors Ltd</strong>&nbsp;last year launched few new bikes, chief among them is the&nbsp;<a href=\"https://www.youtube.com/watch?v=U2IEISOGHM8\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><strong>Bajaj Pulsar NS160 Fi with ABS</strong></a>. They also hosted the first Pulsar Stunt Mania in Bangladesh. With the current motorcycle market so competitive this 8000 BDT offer of Bajaj might also bring the price down of its competitors.</p><p><br></p>', '2020-02-24 21:15:44', '2020-03-11 03:35:31', NULL),
(22, 'Sport-Heritage', 'en', 3, 1, NULL, 'Yamaha XSR155 Feature Review – Elegance of Sport Heritage', 'suzuki mela 2019', '', 'Yamaha XSR155 Feature Review – Elegance of Sport HeritageYamaha XSR155 Feature Review – Elegance of Sport Heritage', '1582622224__770057.jpeg', 1, 'Yamaha XSR155 Feature Review – Elegance of Sport HeritageYamaha XSR155 Feature Review – Elegance of Sport Heritage', '<p class=\"ql-align-justify\">Yamaha Motorcycle has revealed the all-new Yamaha XSR155. They released the brand new XSR from Thailand this August 2019. Covering the youngest XSR feature &amp; profile here we’re presenting Yamaha XSR155 Feature Review – Elegance of Sport Heritage.</p><p class=\"ql-align-justify\"><img src=\"https://www.bikebd.com/wp-content/uploads/2019/08/yamaha-xsr155-feature-review-elegancy-of-sport-heritage.jpg\" alt=\"yamaha xsr155 feature review\" width=\"800\" height=\"403\"></p><h2><strong><u>Yamaha XSR155 Feature Review – Elegance of Sport Heritage</u></strong></h2><p class=\"ql-align-justify\">The Yamaha XSR is the dedicated motorcycle series from Yamaha that tagged the badge Sport Heritage. Yamaha describes the ‘Sport Heritage’ for a particular profile which alters the DNA Retro-Neo. Hence, XSR is the modern street scrambler series that profiled with mechanically advanced machines.</p><p class=\"ql-align-justify\">Further, the wearing and styling of the XSR shadowed from the past days. Thereby, the legacy carried through the exterior where all the modern technology covered underneath. Therefore, the breed is not only a modernist but also carrying the old day’s memories. That’s the theme of Sport Heritage, therefore, XSR from Yamaha.</p><p class=\"ql-align-center\"><a href=\"https://bkdads.bikebd.com/www/delivery/ck.php?oaparams=2__bannerid=39__zoneid=19__cb=2dc18a99f8__oadest=https%3A%2F%2Fwww.facebook.com%2FYamahabd%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://bkdads.bikebd.com/www/images/1b13adc631e232de9bb17e7dd0f79d27.gif\" width=\"300\" height=\"250\"></a></p><p class=\"ql-align-center\"><img src=\"https://bkdads.bikebd.com/www/delivery/lg.php?bannerid=39&amp;campaignid=13&amp;zoneid=19&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Fyamaha-xsr155-feature-review-elegance-of-sport-heritage%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2Fpage%2F3%2F&amp;cb=2dc18a99f8\" width=\"0\" height=\"0\"></p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2019/08/yamaha-xsr155-price-in-bangladesh.jpg\" alt=\"yamaha xsr155 feature review\" width=\"800\" height=\"531\"></p><p class=\"ql-align-justify\">The XSR series revealed in 2015 in the occasion of Yamahas 60 years of racing heritage. Carrying the inheritance Yamaha marketed the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Yamaha_XSR900\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\">XSR900</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Yamaha_XSR700\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\">XSR700</a>&nbsp;in 2016. The series altered the predecessor Yamaha XS-Series with all-new technology and technically advanced machines. Thereby, the modernized machine relayed Retro styling.</p><p class=\"ql-align-justify\">In the sequence of releasing entry-level clones of the giant sports machines, Yamaha Released the new XSR155. This August 2019 after tackling a huge rumor Yamaha released the youngest XSR from Thailand. The machine widely shadowed the XSR900 or XSR700 and technically quite a clone of latest MT15. Consequently, the new machine also tagged with Sport Heritage, therefore, covering the Retro-Neo Profile.</p><p class=\"ql-align-justify\"><img src=\"https://www.bikebd.com/wp-content/uploads/2019/08/yamaha-xsr155-feature-specification-review-price.jpg\" width=\"800\" height=\"508\"></p><p class=\"ql-align-center\"><a href=\"https://www.bikebd.com/adserv/www/delivery/ck.php?oaparams=2__bannerid=42__zoneid=17__cb=e7ec7473fb__oadest=https%3A%2F%2Fwww.facebook.com%2Fsuzukibd%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://www.bikebd.com/adserv/www/images/7bd881b7c8feb48367a6a0d4b5bf5e01.gif\" width=\"620\" height=\"90\"></a></p><p class=\"ql-align-center\"><img src=\"https://www.bikebd.com/adserv/www/delivery/lg.php?bannerid=42&amp;campaignid=19&amp;zoneid=17&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Fyamaha-xsr155-feature-review-elegance-of-sport-heritage%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2Fpage%2F3%2F&amp;cb=e7ec7473fb\" width=\"0\" height=\"0\"></p><h2><strong><u>Retro-Neo Looks &amp; Styling</u></strong></h2><p class=\"ql-align-justify\">The Yamaha XSR155 carries the basic design and styling of XSR900 and XSR700. The motorcycle also carrying the modern mechanicals of Yamaha MT15 as does between Yamaha XSR and MT series. Hence, this youngest street scrambler youngerly copied the XSR design and styling.</p><p class=\"ql-align-justify\">The&nbsp;<a href=\"https://en.wikipedia.org/wiki/Motorcycle\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\">motorcycle</a>&nbsp;carrying a very simple &amp; solid design and styling as the scramblers do. This Retro-Neo carrying the old-school inspired ergonomics with a modernized touch. Here the headlamp, tail lamp, and ODO, all are the modern gadgets. Those include integrated DRL, LED lights, &amp; fully digital setups. Further, those are compact and with rounded pit discounting further exterior enhancements.</p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2019/08/yamaha-xsr155-feature-retro-neo-design-style.jpg\" alt=\"yamaha xsr155 feature review\" width=\"800\" height=\"512\"></p><p class=\"ql-align-justify\">The delta-box frame is fully naked and the unnecessary body panel just ignored. The tail is fully naked obviously including small tail-lamp and registration plate hangers. The front-wheel got a low-profile mudguard. So, on the engine, it got a bikini under-bowl and the fatter exhaust profiled bold matching with the rests.</p><p class=\"ql-align-justify\">Here the teardrop fuel tank just has picked from the old school scramblers and that holds the ignition pit. The single-piece cushioned seat also reminds the old days. Thereby, the pipe handlebar and other controllers positioned comfy upright to ensure the real feel of the gentle breeze. Thus, the new XSR155 profiled in a blend of Retro and modernized Neo looks and styling.</p><p class=\"ql-align-justify\"><img src=\"https://www.bikebd.com/wp-content/uploads/2019/08/yamaha-xsr155-wheel-brake-suspension-system.jpg\" width=\"800\" height=\"496\"></p><h2><strong><u>Delta-Box Frame, Modern Wheel, brake &amp; Suspension System</u></strong></h2><p class=\"ql-align-justify\">The Yamaha XSR155 grabbed the delta box aluminum frame. It’s the same frame that adopted in Yamaha MT15 and R15-V3. But obviously few dimensions are different. So, on the aluminum swing-arm also hired from those models.</p><p class=\"ql-align-justify\">But the sub-frame is completely different, and all the parts kept naked matching with its Retro profile. Thereby, the XSR155 also got a higher ground clearance including lower saddle height and nimble 134kg of weight.</p><p class=\"ql-align-center\"><a href=\"https://www.bikebd.com/adserv/www/delivery/ck.php?oaparams=2__bannerid=51__zoneid=16__cb=4541089b2b__oadest=https%3A%2F%2Fwww.facebook.com%2Fbdkawasaki%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://www.bikebd.com/adserv/www/images/2f691bd3927bd43facd1bfd2fc1896b1.jpg\" width=\"300\" height=\"250\"></a></p><p class=\"ql-align-center\"><img src=\"https://www.bikebd.com/adserv/www/delivery/lg.php?bannerid=51&amp;campaignid=24&amp;zoneid=16&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Fyamaha-xsr155-feature-review-elegance-of-sport-heritage%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2Fpage%2F3%2F&amp;cb=4541089b2b\" width=\"0\" height=\"0\"></p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2019/08/yamaha-xsr155-wheel-tire.jpg\" width=\"800\" height=\"503\"></p><p class=\"ql-align-justify\">The wheel, brake, and suspension system of the XSR155 just picked from the Thai-spec MT15. The wheels are street profiled wheel. Those are with paired 10-spoke alloy rim and wider tubeless type tires. Matching with old-school feature the tires are dual-sport tires.</p><p class=\"ql-align-justify\">Further, in the braking system, all are same as in the MT15, and those are hydraulic disc type. Hence, till now its also remaining straight out of ABS feature as Thai MT15 and R15 are remaining.</p><p class=\"ql-align-justify\">In the suspension setup, its&nbsp;<a href=\"https://www.bikebd.com/inverted-suspension-system-upside-down-usd-shock-absorber/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\">USD Telescopic fork</a>&nbsp;in the front and rear are linked mono. The USD suspension barrels are featured with a color variation matching with the individual color scheme. Thereby, the golden and glossy-black coating is available in the different shade of XSR155. Therefore, XSR155 is fully packed with modern features in the wheel, brake, and suspension system.</p><p class=\"ql-align-justify\"><img src=\"https://www.bikebd.com/wp-content/uploads/2019/08/yamaha-xsr155-engine-power-torque-performance.jpg\" width=\"800\" height=\"503\"></p><h2><strong><u>Yamaha XSR155 – Engine &amp; Feature</u></strong></h2><p class=\"ql-align-justify\">The new Yamaha Retro-Neo also copying the trend of the older siblings in mechanical and technologies. Thereby, the XSR155 also adopted the same engine that featured in latest MT15 as bigger XSR does from bigger MT’s.</p><p class=\"ql-align-justify\">Whatsoever, carrying the same 6-geared 155cc engine like MT15 or R15-V3 it’s the same single-cylinder, four-stroke, water-cooled engine. The engine also featured with the same SOHC, 4-valve with the VVA, and&nbsp;<a href=\"https://www.bikebd.com/assist-slipper-clutch-vva-variable-valve-actuation-in-yamaha-r15-v3/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\">Assist-&amp;-Slipper Clutch</a>&nbsp;feature.</p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2019/08/yamaha-xsr155-engine-vva-assist-slipper-clutch.jpg\" width=\"800\" height=\"268\"></p><p class=\"ql-align-justify\">Further, this fuel-injected machine copies all the technical feature and characteristics being the same profile engine. But Yamaha Motorcycle Thailand officially hasn’t revealed the power and torque figure in their official site.</p><p class=\"ql-align-justify\">Hence, being a&nbsp;<a href=\"https://www.bikebd.com/commuter-motorcycle-feature-characteristics/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\">street commuter</a>&nbsp;its predictable that the engine tweaking and the performance figure may vary a little. It’s due to the motorcycle type, category and performing ground.</p><p class=\"ql-align-justify\">Whatsoever, on another side, this engine is profiled to deliver the maximum 14.2kW of power and 14.7Nm of torque. Thereby, whatever the final-drive-ratio tuned for the XSR155 is expected to be very closer to the rated performance figures. That’s it.</p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2019/08/yamaha-xsr155-test-ride-riding-controlling-handling.jpg\" alt=\"yamaha xsr155 feature review\" width=\"800\" height=\"413\"></p><h2><strong><u>Yamaha XSR155 – Specification &amp; Dimensions</u></strong></h2><p><br></p>', '2020-02-24 21:17:04', '2020-03-11 04:27:34', NULL),
(23, 'Benelli-And-Keeway-Motorcycles-Free-Registration-Offer!', 'en', 5, 1, NULL, 'Benelli And Keeway Motorcycles Free Registration Offer!', 'suzuki mela 2019', '', 'Benelli And Keeway Motorcycles Free Registration Offer!Benelli And Keeway Motorcycles Free Registration Offer!', '1582622280__560430.jpeg', 1, 'Benelli And Keeway Motorcycles Free Registration Offer!Benelli And Keeway Motorcycles Free Registration Offer!', '<p>In this new year of 2020, Aftab Automobiles Ltd. is giving away a&nbsp;<strong>free registration offer on all Benelli and Keeway</strong>&nbsp;Motorcycle models in Bangladesh. This New year offer has started since the beginning of January and will go on until the end of the first month of the year.</p><p class=\"ql-align-center\"><a href=\"https://bkdads.bikebd.com/www/delivery/ck.php?oaparams=2__bannerid=39__zoneid=19__cb=560ba7fbed__oadest=https%3A%2F%2Fwww.facebook.com%2FYamahabd%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://bkdads.bikebd.com/www/images/1b13adc631e232de9bb17e7dd0f79d27.gif\" width=\"300\" height=\"250\"></a></p><p class=\"ql-align-center\"><img src=\"https://bkdads.bikebd.com/www/delivery/lg.php?bannerid=39&amp;campaignid=13&amp;zoneid=19&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Fbenelli-and-keeway-free-registration-offer%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2Fpage%2F3%2F&amp;cb=560ba7fbed\" width=\"0\" height=\"0\"></p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/01/free-registration-offer.jpg\" alt=\"free registration offer\" width=\"800\" height=\"500\"></p><p>Keeway Motorcycles has been roaming in the streets of Bangladesh for a really good amount of time. At the beginning of last year, Aftab Automobiles Ltd. became the official distributor of Keeway and Benelli Motorcycles In Bangladesh, and they not only did an excellent program to launch the bikes but also participated in the Dhaka Bike Show 2019 with all their models.</p><p class=\"ql-align-center\"><a href=\"https://www.bikebd.com/adserv/www/delivery/ck.php?oaparams=2__bannerid=42__zoneid=17__cb=b561e92a79__oadest=https%3A%2F%2Fwww.facebook.com%2Fsuzukibd%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://www.bikebd.com/adserv/www/images/7bd881b7c8feb48367a6a0d4b5bf5e01.gif\" width=\"620\" height=\"90\"></a></p><p class=\"ql-align-center\"><img src=\"https://www.bikebd.com/adserv/www/delivery/lg.php?bannerid=42&amp;campaignid=19&amp;zoneid=17&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Fbenelli-and-keeway-free-registration-offer%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2Fpage%2F3%2F&amp;cb=b561e92a79\" width=\"0\" height=\"0\"></p><h3>Free Registration Offer</h3><p>In this January of 2020, Aftab Automobiles Ltd. has announced a Free registration offer on all Benelli and Keewaty Motorcycles in Bangladesh. This free registration offer is available in all Keeway showrooms in Bangladesh and will be valid till the 31st of January.</p><p>During this offer, bikers can purchase any of the available models from Keeway and Benelli and get 2 years of free registration!</p><p class=\"ql-align-center\"><a href=\"https://www.bikebd.com/adserv/www/delivery/ck.php?oaparams=2__bannerid=51__zoneid=16__cb=f4c8f03ecb__oadest=https%3A%2F%2Fwww.facebook.com%2Fbdkawasaki%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://www.bikebd.com/adserv/www/images/2f691bd3927bd43facd1bfd2fc1896b1.jpg\" width=\"300\" height=\"250\"></a></p><p class=\"ql-align-center\"><img src=\"https://www.bikebd.com/adserv/www/delivery/lg.php?bannerid=51&amp;campaignid=24&amp;zoneid=16&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Fbenelli-and-keeway-free-registration-offer%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2Fpage%2F3%2F&amp;cb=f4c8f03ecb\" width=\"0\" height=\"0\"></p><p>Keeway and Benelli Motorcycle Price:</p><p>ModelPrice (BDT)</p><p>Keeway RKR 1652,15,500Keeway RKS 150 CBS1,49,900Keeway K-Light1,67,500Keeway RKS 1251,18,500Keeway RKS 100 (Version 3)1,09,900Benelli 165S2,25,500Benelli TNT 1501,71,900</p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/01/benelli-motorcycle-price-in-bd-2020.jpg\" alt=\"benelli motorcycle price in bd 2020\" width=\"800\" height=\"500\"></p><p>While Keeway has been for a really good amount of time, Benelli has been around for some years now, and it is quickly catching up in the 150 and 165cc segment.&nbsp;<a href=\"https://www.bikebd.com/lifan-kps150-vs-benelli-tnt150-comparison-review/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><strong>Benelli TNT150</strong></a>&nbsp;and Benelli 165S really caught the attention of the people who are really fond of the segment.</p><h3 class=\"ql-align-center\"><a href=\"https://www.youtube.com/watch?v=zLs1P9mJxKQ\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(0, 0, 0);\">Benelli and Keeway at Dhaka Bike Show 2019</a></h3><iframe class=\"ql-video\" allowfullscreen=\"true\" src=\"https://www.youtube.com/embed/zLs1P9mJxKQ?feature=oembed\" frameborder=\"0\"></iframe><p><br></p><p>Through the hands of Aftab Automobiles Ltd., there are some new bikes from Keeway in Bangladesh, like Keeway RKR and Keeway K-Light. The RKR 165 creates a sports option in the Keeway line-up, while the Keeway K-Light joins with the very limited options of cruiser bikes in Bangladesh.</p><p>Free Registration Offer is a really exciting offer in this new year of 2020, and everyone who wants to buy a Keeway or Benelli bike this season will definitely get benefited from this.</p>', '2020-02-24 21:18:00', '2020-03-11 03:35:29', NULL);
INSERT INTO `blogs` (`id`, `slug`, `language`, `clickview`, `admin_id`, `superadmin_id`, `title`, `keyword`, `url`, `metadescription`, `postimage`, `status`, `shortdescription`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(24, 'BHL-To-Launch', 'en', 20, 1, NULL, 'BHL To Launch Honda CB Hornet 160R 2019 ABS Edition In Bangladesh!', 'suzuki amake valobshe', '', 'BHL To Launch Honda CB Hornet 160R 2019 ABS Edition In Bangladesh!BHL To Launch Honda CB Hornet 160R 2019 ABS Edition In Bangladesh!', '1582622368__307618.jpeg', 1, 'BHL To Launch Honda CB Hornet 160R 2019 ABS Edition In Bangladesh!BHL To Launch Honda CB Hornet 160R 2019 ABS Edition In Bangladesh!', '<p><br></p><h1><br></h1><p>Bangladesh Honda Private Limited – BHL is going to launch<strong>&nbsp;Honda CB Hornet 160R 2019 ABS Edition in Bangladesh</strong>. The bike will be launched on 9th January &amp; will be avilable across all dealers in Bangladesh.</p><p class=\"ql-align-center\"><a href=\"https://bkdads.bikebd.com/www/delivery/ck.php?oaparams=2__bannerid=39__zoneid=19__cb=d106f6ac90__oadest=https%3A%2F%2Fwww.facebook.com%2FYamahabd%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://bkdads.bikebd.com/www/images/1b13adc631e232de9bb17e7dd0f79d27.gif\" width=\"300\" height=\"250\"></a></p><p class=\"ql-align-center\"><img src=\"https://bkdads.bikebd.com/www/delivery/lg.php?bannerid=39&amp;campaignid=13&amp;zoneid=19&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Fbhl-to-launch-honda-cb-hornet-160r-2019-abs%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2Fpage%2F3%2F&amp;cb=d106f6ac90\" width=\"0\" height=\"0\"></p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/01/honda-cb-hornet-160r-2019-abs.jpg\" alt=\"honda cb hornet 160r 2019 abs\" width=\"800\" height=\"500\"></p><p>Before getting launched in 2018, Honda CB Hornet 160R was one of the most awaiting bikes for everyone in Bangladesh. BHL launched the STD variant of the Honda CB Hornet 160R back in February of 2018, and later on, they launched the CBS edition in the&nbsp;<a href=\"https://www.bikebd.com/bhl-5th-dhaka-bike-show-2019/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><strong>2019 Dhaka Bike Show</strong></a>. And now, they are going to launch the most awaited variant of the bike, the 2019 ABS Edition.</p><p class=\"ql-align-center\"><a href=\"https://www.bikebd.com/adserv/www/delivery/ck.php?oaparams=2__bannerid=42__zoneid=17__cb=5a46bc04aa__oadest=https%3A%2F%2Fwww.facebook.com%2Fsuzukibd%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://www.bikebd.com/adserv/www/images/7bd881b7c8feb48367a6a0d4b5bf5e01.gif\" width=\"620\" height=\"90\"></a></p><p class=\"ql-align-center\"><img src=\"https://www.bikebd.com/adserv/www/delivery/lg.php?bannerid=42&amp;campaignid=19&amp;zoneid=17&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Fbhl-to-launch-honda-cb-hornet-160r-2019-abs%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2Fpage%2F3%2F&amp;cb=5a46bc04aa\" width=\"0\" height=\"0\"></p><h3>Honda CB Hornet 160R 2019 ABS Edition – The Upgrades</h3><p>The new Hornet 2019 gets an updated graphics and some major upgrades on the technical side. The chassis and the body panels along with the engine is exactly the same 162.71cc as before, but the engine now has an Emission Standard of BS-IV and it provides slightly less power and torque compared to the current variant. The engine produces 14.9 bhp @ 8500 rpm and 14.5 Nm of torque @ 6500 rpm.</p><p class=\"ql-align-center\"><a href=\"https://www.bikebd.com/adserv/www/delivery/ck.php?oaparams=2__bannerid=51__zoneid=16__cb=601babda76__oadest=https%3A%2F%2Fwww.facebook.com%2Fbdkawasaki%2F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\"><img src=\"https://www.bikebd.com/adserv/www/images/2f691bd3927bd43facd1bfd2fc1896b1.jpg\" width=\"300\" height=\"250\"></a></p><p class=\"ql-align-center\"><img src=\"https://www.bikebd.com/adserv/www/delivery/lg.php?bannerid=51&amp;campaignid=24&amp;zoneid=16&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Fbhl-to-launch-honda-cb-hornet-160r-2019-abs%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2Fpage%2F3%2F&amp;cb=601babda76\" width=\"0\" height=\"0\"></p><p>The major upgrade is on the braking side. The bike will come with a 276mm disc brake at the front and 220mm disc brake at the rear, with the addition of Single-channel ABS on the front. The bike will also get new graphics, newly design LED headlight, hazard indicator, seal chain, viscous air filter, improved switch gears, blue back light speedometer,</p><p><img src=\"https://www.bikebd.com/wp-content/uploads/2020/01/honda-cb-hornet-160r-abs.jpg\" alt=\"honda cb hornet 160r abs\" width=\"800\" height=\"500\"></p><h3>Honda CB Hornet 160R 2019 ABS Edition In Bangladesh – Launching and Price</h3><p>BHL is going to launch this most anticipated variant of Hornet in Bangladesh on 9th January 2020. The bike will have price tag of around&nbsp;<strong>2,55,000 BDT</strong>&nbsp;which is the norm of ABS bikes on this segment. BHL will also launch the CBS version of Hornet with the same technical specificaiton. But only this bike will come with CBS (Combined Braking System) &amp; the&nbsp;<strong>CBS edition will be priced at 189,900 BDT.</strong></p><p>There is a price difference of over 65,000 BDT between the CBS &amp; ABS version and the reason is that the CBS version is coming in Bangladesh in CKD condition while the Hornet ABS version is coming in CBU conditon.</p><p>After the recent launching of&nbsp;<a href=\"https://www.bikebd.com/honda-x-blade-xciting-bangladesh-details/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 122, 183);\">Honda X Blade in Bangladesh</a>, The Honda CB Hornet 160R 2019 Edition will increase the range of 160cc bikes in the Honda lineup and in Bangladesh.</p><h3 class=\"ql-align-center\"><a href=\"https://www.youtube.com/watch?v=zMMSxr2CaGY\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(0, 0, 0);\">Click Here For Honda CB Hornet 160R Review</a></h3><iframe class=\"ql-video\" allowfullscreen=\"true\" src=\"https://www.youtube.com/embed/zMMSxr2CaGY?feature=oembed\" frameborder=\"0\"></iframe><p><br></p><p><br></p>', '2020-02-24 21:19:28', '2020-03-11 06:44:41', NULL),
(25, 'Finder-GPS-এর-সাথে-এক-বছরে', 'bn', 0, 2, NULL, 'Finder GPS এর সাথে এক বছরের বাইক ইন্স্যুরেন্স ফ্রী!', 'suzuki mela 2019', 'Benelli-And-Keeway-Motorcycles-Free-Registration-Offer!', 'Benelli-And-Keeway-Motorcycles-Free-Registration-Offer!Benelli-And-Keeway-Motorcycles-Free-Registration-Offer!', '1582624719__627664.jpeg', 1, 'হিরো বাংলাদেশের অন্যতম জনপ্রিয় টু হুইলার ব্র্যান্ড। এবছরেই তারা বাংলাদেশে ২টি কমিউটিং মোটরসাইকেল এবং একটি ', '<p><img src=\"data:image/jpeg;base64,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\"><img src=\"https://www.bikebd.com/adserv/www/delivery/lg.php?bannerid=0&amp;campaignid=0&amp;zoneid=13&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Fbn%2Ffinder-gps-%25e0%25a6%25ac%25e0%25a6%25be%25e0%25a6%2587%25e0%25a6%2595-%25e0%25a6%2587%25e0%25a6%25a8%25e0%25a7%258d%25e0%25a6%25b8%25e0%25a7%258d%25e0%25a6%25af%25e0%25a7%2581%25e0%25a6%25b0%25e0%25a7%2587%25e0%25a6%25a8%25e0%25a7%258d%25e0%25a6%25b8-%25e0%25a6%25ab%25e0%25a7%258d%25e0%25a6%25b0%25e0%25a7%2580%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2Fbn%2F&amp;cb=d01bfcc783\" height=\"0\" width=\"0\"></p><h1>Finder GPS এর সাথে এক বছরের বাইক ইন্স্যুরেন্স ফ্রী!</h1><p>Posted by: <a href=\"https://www.bikebd.com/bn/author/arif/\" rel=\"noopener noreferrer\" target=\"_blank\">Arif Raihan opu </a><span> February 25, 2020</span></p><h2>Review Overview</h2><p></p><p><strong>User Rating: </strong><span>  Be the first one ! </span></p><p></p><p><strong>Finder GPS Tracking (Monico IT)&nbsp;</strong><strong>বাইকবিডি ফ্যান, ফলোয়ার এবং বন্ধু ও শুভাকাঙ্ক্ষীদের জন্য নিয়ে এসেছে এক দারুন অফার । ফাইন্ডার জিপিএস দিচ্ছে খুব কম খরচে জিপিএস ট্র্যাকিং ডিভাইস ।</strong><strong></strong></p><p><strong></strong></p>', '2020-02-24 21:58:39', '2020-02-24 21:58:42', NULL),
(26, 'রোডমাস্টার-বাংলাদেশে-লঞ্চ-করেছে-নতুন', 'bn', 0, 2, NULL, ' রোডমাস্টার বাংলাদেশে লঞ্চ করেছে নতুন ', 'gggg', 'Yamaha-Cashback-Offer-On-Valentine-February-2020-!', 'Yamaha-Cashback-Offer-On-Valentine-February-2020-!Yamaha-Cashback-Offer-On-Valentine-February-2020-!', '1582625149__997531.jpeg', 1, '\nRoadmaster বাংলাদেশের অন্যতম জনপ্রিয় ব্র্যান্ড । তাদের লাইন আপে রয়েছে দারুন সব কমিউটার মোটরসাইকেল রয়েছে । এ', '<p>tgyutt</p><p><br></p>', '2020-02-24 22:05:49', '2020-02-24 22:07:29', NULL),
(27, 'রোডমাস্টার-বাংলাদেশে-লঞ্চ', 'bn', 7, 2, NULL, 'টীম বাইকবিডির হিরো প্লেসার টেষ্ট রাইড রিভিউ', 'tvs new bike', 'BHL-To-Launch', 'BHL-To-LaunchBHL-To-LaunchBHL-To-LaunchBHL-To-Launch', '1582625375__370346.jpeg', 1, 'টীম বাইকবিডির হিরো প্লেসার টেষ্ট রাইড রিভি\n\nসকল রাইডারদের জানাই পহেলা বৈশাখের শুভেচ্ছা । আশা করি সববাই ভাল আছেন ।', '<h1><img src=\"data:image/jpeg;base64,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\">টীম বাইকবিডির হিরো প্লেসার টেষ্ট রাইড রিভিউ</h1><p>Posted by:&nbsp;<a href=\"https://www.bikebd.com/bn/author/admin/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(170, 170, 170);\">শুভ্র সেন</a>&nbsp;May 4, 2015</p><p class=\"ql-align-justify\">সকল রাইডারদের জানাই পহেলা বৈশাখের শুভেচ্ছা । আশা করি সববাই ভাল আছেন ।</p><h1>টীম বাইকবিডির হিরো প্লেসার টেষ্ট রাইড রিভিউ</h1><p>Posted by:&nbsp;<a href=\"https://www.bikebd.com/bn/author/admin/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(170, 170, 170);\">শুভ্র সেন</a>&nbsp;May 4, 2015</p><p>সকল রাইডারদের জানাই পহেলা বৈশাখের শুভেচ্ছা । আশা করি সববাই ভাল আছেন । এই পহেলা বৈশাখে টীম বাইকবিডি থেকে প্রচুর পরিমানে রাইডারদের রেসপন্স পেয়ে একটা ৫০০+ কি.মি এর টেষ্ট ড্রাইভে গিয়েছিল । এবং আমরা জানি অনেক বাইক প্রেমীই এই রিভিউটার জন্য অনেক মাস ধরে অপেক্ষা করে আছেন । এবং অনেকেই এই নতুন স্কুটার টি নিয়ে অনেক আগ্রহের সাথে এর একটা প্রাকটিক্যাল রিভিউএর জন্য বসে আছেন । এবং এখন এই স্কুটার টি নিয়ে যেটা ছেলে বা মেয়ে যে ককেউ খুব কমফোর্টের সাথে রাইড করতে পারেন সেটা নিয়ে আজ এই রিভিউ ।</p><p><br></p>', '2020-02-24 22:09:35', '2020-02-25 17:23:38', NULL);
INSERT INTO `blogs` (`id`, `slug`, `language`, `clickview`, `admin_id`, `superadmin_id`, `title`, `keyword`, `url`, `metadescription`, `postimage`, `status`, `shortdescription`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(28, 'মোটরসাইকেল-রেসিং-এর-কিছু-আর্টস-এবং-টিপস', 'bn', 10, 2, NULL, 'মোটরসাইকেল রেসিং এর কিছু আর্টস এবং টিপস ', 'suzuki mela 2019', 'Team-BikeBD', 'Suzuki-Offering-40,000-BDT-Cashback-on-Suzuki-Gixxer-SFSuzuki-Offering-40,000-BDT-Cashback-on-Suzuki-Gixxer-SF', '1582625497__958459.jpeg', 1, 'মোটরসাইকেল রেসিং হল বাইকারদের একটা খুবই কমন বিষয় । যেকোন রাইডারই রেসিং এর প্রতি একটু আসক্ত থাকেন । কেউ কম', '<p><span style=\"color: rgb(51, 51, 51);\">যদিও বাংলাদেশে তেমন কোন রেসিং ট্রাক নেই । তারপরও আমরা দেখতে পাই আমাদের দেশের রাইডাররা বিভিন্ন রোডেই রেস দিয়ে থাকেন । রেসিং ট্রাকের অভাব যেন তারা বুঝতেই দেন না । যদিও ওপেন পাবলিক রোডে রেসিংটা অনেক ঝুকিপূর্ণ এবং আইনবিরোধী । তারপরও রাইডাররা মজা করে বা শখের বশে পাবলিক রোডেই রেসিং<img src=\"data:image/jpeg;base64,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\"></span><a href=\"https://bikebd.com/bn/wp-content/uploads/2019/10/motorcycle-racing-tips-in-bangladesh.jpg\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(13, 12, 13);\"><img src=\"https://bikebd.com/bn/wp-content/uploads/2019/10/motorcycle-racing-tips-in-bangladesh.jpg\" alt=\"motorcycle racing tips in bangladesh\" height=\"360\" width=\"640\"></a></p><p>কোন মোটরসাইকেল রেসিং এ যেতে হলে মূলত ৩ টা বিষয় খুবই ভালভাবে জানা বা আয়ত্ত্ব করা দরকার । যেগুলো না জানলে আপনি রেসিং এ তো হারবেনই, উপরন্তু আপনার রেসিং এর সময় দুর্ঘটনা ঘটার সম্ভাবনাও আছে । এই ৩টি বিষয় হলঃ</p>', '2020-02-24 22:11:37', '2020-02-25 17:44:23', NULL),
(29, 'রোডমাস্টার-বাংলাদেশে', 'bn', 15, 2, NULL, 'টিউবলেস টায়ার ফিচার ', 'Uttara Motors ', 'Sport-Heritage', 'Team-BikeBDTeam-BikeBDTeam-BikeBDTeam-BikeBDTeam-BikeBDTeam-BikeBDTeam-BikeBDTeam-BikeBD', '1582625650__596515.jpeg', 1, '\nটিউবলেস টায়ার ফিচার ও বেনেফিট। আজকের দিনে আধুনিক ও হাইটেক মোটর ভেহিকেলে টিউবলেস টায়ার মোটামুটি একটি কমন ফিচার। সেইসূত্রে \nয়ে এই টায়ার দ্রুতই বাজারে বেশ বড় ', '<p class=\"ql-align-justify\"><img src=\"data:image/jpeg;base64,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\">আধুনিক মোটরগাড়ীর জন্যে টিউবলেস-টায়ার মূলত: মডার্ণ টেকনলোজির এক অনন্য অবদান। এটি গতানুগতিক রাবার টিউব ব্যাতিরেকেই স্বাতন্ত্রভাবে&nbsp;কাজ করে থাকে। এ<a href=\"https://en.wikipedia.org/wiki/Tubeless_tire\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(46, 72, 242);\"><span>টায়া</span></a>&nbsp;নিজেই বাতাস ধারন করে এবং একইসাথে এর বাইরের লেয়ারটি রোড সারফেসের সাথে লেগে থাকে।</p><p>এই সলিড টেকনলোজি টিউবলেস টায়ারকে দিয়েছে বাড়তি কিছু প্রিমিয়াম ফিচার। আর সেকানেই এটি কিছু অসাধারন পারফর্মেন্স দিতে পারে। টিউবলেস টায়ারের সেই এ্যাডভান্সড ফিচার ও বেনেফিটগুলোই মূলত: নিম্নে আলোচিত হলো।<img src=\"https://bkdads.bikebd.com/www/delivery/lg.php?bannerid=0&amp;campaignid=0&amp;zoneid=17&amp;loc=https%3A%2F%2Fwww.bikebd.com%2Fbn%2F%25e0%25a6%259f%25e0%25a6%25bf%25e0%25a6%2589%25e0%25a6%25ac%25e0%25a6%25b2%25e0%25a7%2587%25e0%25a6%25b8-%25e0%25a6%259f%25e0%25a6%25be%25e0%25a7%259f%25e0%25a6%25be%25e0%25a6%25b0-%25e0%25a6%25ab%25e0%25a6%25bf%25e0%25a6%259a%25e0%25a6%25be%25e0%25a6%25b0%2F&amp;referer=https%3A%2F%2Fwww.bikebd.com%2Fbn%2F&amp;cb=0b6b04e213\"><a href=\"https://en.wikipedia.org/wiki/Tubeless_tire\" rel=\"noopener noreferrer\" target=\"_blank\"><span></span></a><a href=\"https://en.wikipedia.org/wiki/Tubeless_tire\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(46, 72, 242);\"><span></span></a></p><p><a href=\"https://en.wikipedia.org/wiki/Tubeless_tire\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(46, 72, 242);\"><span>র</span></a>ই&nbsp;</p>', '2020-02-24 22:14:10', '2020-02-25 17:20:23', NULL);
INSERT INTO `blogs` (`id`, `slug`, `language`, `clickview`, `admin_id`, `superadmin_id`, `title`, `keyword`, `url`, `metadescription`, `postimage`, `status`, `shortdescription`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(30, 'totaaa', 'bn', 3, 2, NULL, 'Bajaj Launches Bajaj Pulsar NS160 ABS in Bangladesh', 'suzuki mela 2019', 'Team-BikeBD', 'Team-BikeBDTeam-BikeBD', '1582696412__916904.jpeg', 1, 'Team-BikeBDTeam-BikeBDTeam-BikeBDTeam-BikeBDTeam-BikeBDTeam-BikeBDTeam-BikeBD', '<ul data-checked=\"false\"><li class=\"ql-indent-1\"><span style=\"color: rgb(255, 255, 102);\"><img src=\"data:image/jpeg;base64,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\"></span></li></ul>', '2020-02-25 17:53:32', '2020-03-01 07:14:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bores`
--

CREATE TABLE `bores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bore` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bores`
--

INSERT INTO `bores` (`id`, `admin_id`, `bore`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '47.0 mm', 1, '2020-03-05 05:57:19', '2020-03-09 02:54:11'),
(2, 1, '57.0 mm', 1, '2020-03-09 02:54:02', '2020-03-09 02:54:02'),
(3, 1, '59.0 mm', 1, '2020-03-09 02:54:20', '2020-03-09 02:54:20'),
(4, 1, '59.0 mmm', 1, '2020-03-09 02:54:30', '2020-03-09 02:54:30');

-- --------------------------------------------------------

--
-- Table structure for table `brandcategories`
--

CREATE TABLE `brandcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brandcategory` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brandcategories`
--

INSERT INTO `brandcategories` (`id`, `admin_id`, `company_id`, `brandcategory`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Walton Phone', 1, '2020-03-05 01:15:29', '2020-03-09 03:04:44'),
(2, 1, 2, 'Yamah Rx', 1, '2020-03-05 02:13:17', '2020-03-09 03:04:32'),
(3, 1, 1, 'Walton Motorcycle', 1, '2020-03-05 02:15:16', '2020-03-09 03:04:15'),
(4, 1, 1, 'Walton Iron', 1, '2020-03-05 02:21:36', '2020-03-09 03:03:57'),
(5, 1, 1, 'Walton Freez', 1, '2020-03-05 02:22:02', '2020-03-09 03:03:43');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `categoryname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `admin_id`, `categoryname`, `created_at`, `updated_at`) VALUES
(1, 1, 'abc', '2020-02-27 23:30:32', '2020-02-27 23:30:32');

-- --------------------------------------------------------

--
-- Table structure for table `ccs`
--

CREATE TABLE `ccs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ccs`
--

INSERT INTO `ccs` (`id`, `admin_id`, `cc`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '120cc', 1, '2020-03-08 00:51:03', '2020-03-09 02:59:16'),
(2, 1, '125cc', 1, '2020-03-08 00:53:03', '2020-03-09 02:59:34'),
(4, 1, '150cc', 1, '2020-03-08 01:05:19', '2020-03-09 02:59:40'),
(5, 1, '200cc', 1, '2020-03-08 01:05:23', '2020-03-09 02:59:48'),
(6, 1, '1250cc', 1, '2020-03-08 01:05:26', '2020-03-08 01:05:43'),
(7, 1, '100cc', 1, '2020-03-08 01:05:31', '2020-03-09 03:05:08');

-- --------------------------------------------------------

--
-- Table structure for table `chassis`
--

CREATE TABLE `chassis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `chassis` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chassis`
--

INSERT INTO `chassis` (`id`, `admin_id`, `chassis`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Double Cradle', 1, '2020-03-05 05:58:22', '2020-03-09 02:58:42'),
(2, 1, 'Single Cradle', 1, '2020-03-09 02:58:54', '2020-03-09 02:58:54'),
(3, 1, 'Multiple Cradle', 1, '2020-03-09 02:59:06', '2020-03-09 02:59:06');

-- --------------------------------------------------------

--
-- Table structure for table `clutches`
--

CREATE TABLE `clutches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `clutch` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clutches`
--

INSERT INTO `clutches` (`id`, `admin_id`, `clutch`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Wet Multi Plate Type', 1, '2020-03-05 05:58:09', '2020-03-09 02:57:44'),
(2, 1, 'Dry Multi Plate Type ', 1, '2020-03-09 02:57:52', '2020-03-09 02:58:25'),
(3, 1, 'Wet Single Plate Type', 1, '2020-03-09 02:58:14', '2020-03-09 02:58:14');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `superadmin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(280) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profileimage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coverimage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 2,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `admin_id`, `superadmin_id`, `brand`, `fullname`, `profileimage`, `coverimage`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Walton', 'Walton Bangladesh', '1583390972_1_170182.jpeg', '1_757405.jpeg', 'sad fasdf sadf sdafsda fsadf', 2, '2020-03-05 00:49:33', '2020-03-05 00:49:33'),
(2, 1, NULL, 'Yahama', 'Yahama Bangladesh', '1583391651_1_278363.jpeg', 'not-found.jpg', ' dsfdsaf adsf asdfads ', 2, '2020-03-05 01:00:51', '2020-03-05 01:00:51');

-- --------------------------------------------------------

--
-- Table structure for table `cylinders`
--

CREATE TABLE `cylinders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cylinder` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cylinders`
--

INSERT INTO `cylinders` (`id`, `admin_id`, `cylinder`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '1', 1, '2020-03-05 05:57:50', '2020-03-09 02:56:26'),
(2, 1, '2', 1, '2020-03-09 02:56:36', '2020-03-09 02:56:36'),
(3, 1, '3', 1, '2020-03-09 02:56:47', '2020-03-09 02:56:47'),
(4, 1, '4', 1, '2020-03-09 02:56:52', '2020-03-09 02:56:52');

-- --------------------------------------------------------

--
-- Table structure for table `engines`
--

CREATE TABLE `engines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `enginetype` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `engines`
--

INSERT INTO `engines` (`id`, `admin_id`, `enginetype`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '4 stroke, DTs-i,Single cylinder', 1, NULL, '2020-03-05 05:55:13', '2020-03-09 02:52:52'),
(2, 1, 'stroke, DTs-i,Single cylinder', 1, NULL, '2020-03-05 05:55:17', '2020-03-09 02:53:05'),
(3, 1, '4 stroke, DTs-i,Single ', 1, NULL, '2020-03-05 05:55:23', '2020-03-09 02:53:16'),
(4, 1, '5 stroke, DTs-i,Single cylinder', 1, NULL, '2020-03-05 05:55:27', '2020-03-09 02:53:25');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ftcapacities`
--

CREATE TABLE `ftcapacities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ftcapacity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ftcapacities`
--

INSERT INTO `ftcapacities` (`id`, `admin_id`, `ftcapacity`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '15 litres', 1, '2020-03-08 04:09:01', '2020-03-09 03:01:48'),
(2, 1, '16 litres', 1, '2020-03-08 04:11:44', '2020-03-09 03:01:58'),
(4, 1, '18 litres', 1, '2020-03-09 03:02:04', '2020-03-09 03:02:04');

-- --------------------------------------------------------

--
-- Table structure for table `ftyres`
--

CREATE TABLE `ftyres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ftyre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ftyres`
--

INSERT INTO `ftyres` (`id`, `admin_id`, `ftyre`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, '80/100-17', 1, '2020-03-08 04:10:22', '2020-03-09 03:00:09'),
(3, 1, '80/100-18', 1, '2020-03-08 04:10:25', '2020-03-09 03:00:19'),
(4, 1, '80/100-12', 1, '2020-03-09 03:00:27', '2020-03-09 03:00:27');

-- --------------------------------------------------------

--
-- Table structure for table `gears`
--

CREATE TABLE `gears` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `gear` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gears`
--

INSERT INTO `gears` (`id`, `admin_id`, `gear`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '5', 1, '2020-03-05 05:57:58', '2020-03-09 02:57:07'),
(2, 1, '3', 1, '2020-03-07 05:18:21', '2020-03-09 02:57:16'),
(3, 1, '4', 1, '2020-03-09 02:57:21', '2020-03-09 02:57:21'),
(4, 1, '6', 1, '2020-03-09 02:57:25', '2020-03-09 02:57:25');

-- --------------------------------------------------------

--
-- Table structure for table `genders`
--

CREATE TABLE `genders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genders`
--

INSERT INTO `genders` (`id`, `admin_id`, `gender`, `created_by`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Male', 'Superadmin', '2020-02-27 12:07:58', '2020-02-27 12:07:58'),
(2, NULL, 'Female', 'Superadmin', '2020-02-27 12:08:07', '2020-02-27 12:08:07');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_03_19_103350_create_superadmins_table', 1),
(3, '2019_04_19_064005_create_accounttypes_table', 1),
(4, '2019_04_19_105136_create_statuses_table', 1),
(5, '2019_04_20_103232_create_genders_table', 1),
(6, '2019_05_01_095710_create_admins_table', 1),
(7, '2019_05_12_095710_create_users_table', 1),
(8, '2019_05_21_051520_create_permission_tables', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2019_12_08_090310_create_modelyears_table', 1),
(11, '2019_12_08_093123_create_categories_table', 1),
(12, '2020_02_09_054458_create_blogs_table', 1),
(13, '2020_02_10_063905_create_blogcategorylists_table', 1),
(14, '2020_02_13_090732_create_blogcomments_table', 1),
(15, '2020_02_13_094536_create_parentpages_table', 1),
(16, '2020_02_13_095139_create_pages_table', 1),
(22, '2020_02_19_111852_create_viewcounts_table', 2),
(27, '2020_03_02_063141_create_companies_table', 3),
(28, '2020_03_05_052850_create_brandcategories_table', 3),
(30, '2020_03_04_055056_create_engines_table', 5),
(31, '2020_03_04_101058_create_bores_table', 5),
(32, '2020_03_04_125052_create_strokes_table', 5),
(33, '2020_03_05_062007_create_cylinders_table', 5),
(34, '2020_03_05_081750_create_gears_table', 5),
(35, '2020_03_05_091744_create_clutches_table', 5),
(36, '2020_03_05_100915_create_chassis_table', 5),
(37, '2020_03_08_055343_create_ccs_table', 6),
(38, '2020_03_05_124323_create_ftyres_table', 7),
(39, '2020_03_07_061646_create_rtyres_table', 7),
(40, '2020_03_07_083306_create_weights_table', 7),
(41, '2020_03_07_130250_create_ftcapacities_table', 7),
(42, '2020_03_08_080659_create_betteryvoltages_table', 7),
(46, '2020_03_10_053057_create_productimages_table', 8),
(47, '2020_03_09_080517_create_products_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `modelyears`
--

CREATE TABLE `modelyears` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `modelyear` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(2, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Admin', 1),
(1, 'App\\Admin', 2),
(2, 'App\\Admin', 3);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `clickview` int(11) NOT NULL DEFAULT 0,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `superadmin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `parentpage_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pagetitle` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pagename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pageurl` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pagemetadescription` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pageimage` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pagekeyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 2,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parentpages`
--

CREATE TABLE `parentpages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `superadmin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `parentpage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parentpages`
--

INSERT INTO `parentpages` (`id`, `admin_id`, `superadmin_id`, `parentpage`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, 'Default', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(198) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin-List', 'superadmin', '2020-02-25 23:47:25', '2020-02-25 23:47:25'),
(2, 'Admin-Create', 'superadmin', '2020-02-25 23:47:50', '2020-02-25 23:47:50'),
(3, 'Admin-Edit', 'superadmin', '2020-02-25 23:48:03', '2020-02-25 23:48:03'),
(4, 'Admin-Delete', 'superadmin', '2020-02-25 23:48:14', '2020-02-25 23:48:14'),
(5, 'User-List', 'superadmin', '2020-02-25 23:48:27', '2020-02-25 23:48:27'),
(6, 'User-Create', 'superadmin', '2020-02-25 23:48:36', '2020-02-25 23:48:36'),
(7, 'User-Edit', 'superadmin', '2020-02-25 23:48:44', '2020-02-25 23:48:44'),
(8, 'User-Delete', 'superadmin', '2020-02-25 23:48:52', '2020-02-25 23:48:52'),
(9, 'Post-List', 'superadmin', '2020-02-25 23:49:08', '2020-02-25 23:49:08'),
(10, 'Post-Create', 'superadmin', '2020-02-25 23:49:18', '2020-02-25 23:49:18'),
(11, 'Post-Edit', 'superadmin', '2020-02-25 23:49:28', '2020-02-25 23:49:28'),
(12, 'Post-Delete', 'superadmin', '2020-02-25 23:49:42', '2020-02-25 23:49:42'),
(13, 'Page-List', 'superadmin', '2020-02-25 23:50:11', '2020-02-25 23:50:11'),
(14, 'Page-Create', 'superadmin', '2020-02-25 23:50:27', '2020-02-25 23:50:27'),
(15, 'Page-Edit', 'superadmin', '2020-02-25 23:50:37', '2020-02-25 23:50:37'),
(16, 'Page-Delete', 'superadmin', '2020-02-25 23:50:48', '2020-02-25 23:50:48');

-- --------------------------------------------------------

--
-- Table structure for table `productimages`
--

CREATE TABLE `productimages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `productimage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productimages`
--

INSERT INTO `productimages` (`id`, `product_id`, `productimage`, `created_at`, `updated_at`) VALUES
(1, 1, '1583819411_1_999861.jpeg', '2020-03-09 23:50:11', '2020-03-09 23:50:11'),
(2, 1, '1583819411_1_469309.jpeg', '2020-03-09 23:50:11', '2020-03-09 23:50:11'),
(3, 1, '1583819411_1_505313.jpeg', '2020-03-09 23:50:11', '2020-03-09 23:50:11'),
(4, 1, '1583829969_1_803566.jpeg', '2020-03-10 02:46:09', '2020-03-10 02:46:09'),
(5, 1, '1583829969_1_566850.jpeg', '2020-03-10 02:46:09', '2020-03-10 02:46:09'),
(6, 1, '1583829969_1_601744.jpeg', '2020-03-10 02:46:09', '2020-03-10 02:46:09'),
(7, 1, '1583829969_1_200265.jpeg', '2020-03-10 02:46:09', '2020-03-10 02:46:09'),
(8, 3, '1583830353_1_421828.jpeg', '2020-03-10 02:52:33', '2020-03-10 02:52:33'),
(9, 3, '1583830353_1_428662.jpeg', '2020-03-10 02:52:33', '2020-03-10 02:52:33'),
(10, 3, '1583830353_1_128627.jpeg', '2020-03-10 02:52:33', '2020-03-10 02:52:33'),
(11, 3, '1583830353_1_512304.jpeg', '2020-03-10 02:52:33', '2020-03-10 02:52:33'),
(12, 3, '1583830353_1_194474.jpeg', '2020-03-10 02:52:33', '2020-03-10 02:52:33'),
(13, 4, '1583833477_1_704009.jpeg', '2020-03-10 03:44:38', '2020-03-10 03:44:38'),
(15, 4, '1583833478_1_561885.jpeg', '2020-03-10 03:44:38', '2020-03-10 03:44:38'),
(16, 5, '1583906774_1_109801.jpeg', '2020-03-11 00:06:14', '2020-03-11 00:06:14'),
(17, 6, '1583906901_1_717565.jpeg', '2020-03-11 00:08:21', '2020-03-11 00:08:21'),
(18, 7, '1583908231_1_568410.jpeg', '2020-03-11 00:30:31', '2020-03-11 00:30:31'),
(19, 8, '1583916299_1_478560.jpeg', '2020-03-11 02:44:59', '2020-03-11 02:44:59'),
(20, 9, '1583916431_1_291167.jpeg', '2020-03-11 02:47:11', '2020-03-11 02:47:11'),
(22, 9, '1583930408_1_448950.jpeg', '2020-03-11 06:40:09', '2020-03-11 06:40:09');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `superadmin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brandcategory_id` bigint(20) UNSIGNED DEFAULT NULL,
  `clickview` int(11) NOT NULL DEFAULT 0,
  `title` varchar(280) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `producttype` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `marketstatus` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `keyword` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `regularprice` double(8,2) NOT NULL,
  `offerprice` double(8,2) DEFAULT NULL,
  `offerurl` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displacement` double(8,2) DEFAULT NULL,
  `mileage` double(8,2) NOT NULL,
  `rm` double(8,2) NOT NULL,
  `rpm` double(8,2) NOT NULL,
  `torquenm` double(8,2) NOT NULL,
  `torquerpm` double(8,2) NOT NULL,
  `engine` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enginemaximumpower` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enginemaximumtorque` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bore` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stroke` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `compressionratio` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cylinder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gears` int(11) DEFAULT NULL,
  `clutch` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transmission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chassis` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `frontsuspension` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rearsuspension` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `frontbrake` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rearbrake` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `frontbrakediameter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rearbrakediameter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abs` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ftyre` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rtyre` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tubeless` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `overalllength` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `overallwidth` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `groundclearness` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ftcapacity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wheelbase` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `battery` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bvoltage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `headlight` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taillight` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `indicators` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `speedometer` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `odometer` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rpmmeter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `handle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seattype` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passenger` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `engineks` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featureimage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shortdescription` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `embedurl` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 2,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `superadmin_id`, `admin_id`, `brand_id`, `brandcategory_id`, `clickview`, `title`, `slug`, `cc`, `producttype`, `marketstatus`, `keyword`, `regularprice`, `offerprice`, `offerurl`, `displacement`, `mileage`, `rm`, `rpm`, `torquenm`, `torquerpm`, `engine`, `enginemaximumpower`, `enginemaximumtorque`, `bore`, `stroke`, `compressionratio`, `cylinder`, `gears`, `clutch`, `transmission`, `chassis`, `frontsuspension`, `rearsuspension`, `frontbrake`, `rearbrake`, `frontbrakediameter`, `rearbrakediameter`, `abs`, `ftyre`, `rtyre`, `tubeless`, `overalllength`, `overallwidth`, `groundclearness`, `weight`, `ftcapacity`, `wheelbase`, `battery`, `bvoltage`, `headlight`, `taillight`, `indicators`, `speedometer`, `odometer`, `rpmmeter`, `handle`, `seattype`, `passenger`, `engineks`, `featureimage`, `shortdescription`, `embedurl`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 2, 2, 0, 'MoU Signing Ceremony Between BikeBD And Finder GPS', 'TVS-Victor-110-Feature-Review', '2', 'old', 'Yes', 'ggggg,dfgdfg,dfgdfg,1', 125.00, 1250.00, 'dsaf asdfsadf asdf', 11.00, 11.00, 11.00, 11.00, 1.00, 11.00, '4 stroke, DTs-i,Single cylinder', '2345', '432545', '57.0 mm', '56.4 mmm', '452345', '2', 3, 'Manual', 'Auto', 'single', '43534', '4352345', 'Manual', 'Auto', '5234543', 'Manual', 'no', '80/100-17', '80/100-13', '111', '111', NULL, '44', '144 kg', '16 litres', '111', 'Manual', '16V', '4325435', 'Manual', 'Manual', 'analog', 'digital', 'digital', '3-Part ', 'unibody', 'no', 'yes', '1583829969_1_373059.jpeg', 'featureimagefeatureids fasd fasdfmagefeatureimagefeatureimagsda fasdf sadsad fsad fsadf sdefeatureimage', 'https://www.facebook.com', 1, NULL, '2020-03-10 02:46:09', '2020-03-10 06:52:31'),
(3, NULL, 1, 1, 3, 0, 'Honda Spring CashBack Offer 2020 | BikeBD', 'TVS-Victosdgafr-110-Feature-Review', '1', 'upcoming', 'Yes', 'ggggg,dfgdfg,dfgdfg,1', 3444.00, 44.00, 'drfasd fsdafsad', 44.00, 44.00, 44.00, 44.00, 44.00, 44.00, 'stroke, DTs-i,Single cylinder', '2345', '432545', '57.0 mm', '56.4 mmm', '452345', '2', 3, 'Auto', 'Auto', 'single', '43534', '4352345', 'Auto', 'Auto', '5234543', 'Auto', 'yes', '80/100-17', '80/100-17', '4344', '4444', '34523452345', '44', '143 kg', '15 litres', '444', 'Auto', '12V', '4325435', 'Manual', 'bulb', 'digital', 'digital', 'digital', '2-Part ', 'unibody', 'yes', 'yes', '1583830353_1_239913.jpeg', 'sd fsadfsda fsdf sdfs dafsdafa dfsdf sdafsdafdsfdsfsdfsdfsdf', 'https://www.facebook.com', 1, NULL, '2020-03-10 02:52:33', '2020-03-11 02:48:40'),
(4, NULL, 1, 1, 3, 0, 'TVS Victor 110 Feature Review1', 'TVS-Victor-110-Feature-Reviewdsf', '2', 'upcoming', 'Yes', 'ggggg,dfgdfg,dfgdfg,', 44.00, 44.00, 'dsaf adsfsadf ds', 44.00, 4.00, 4.00, 4.00, 4.00, 4.00, 'stroke, DTs-i,Single cylinder', '2345', '432545', '57.0 mm', '56.4 mmm', '452345', '2', 3, 'Auto', 'Manual', 'single', '43534', '4352345', 'Manual', 'Auto', '5234543', 'Manual', 'yes', '80/100-18', '80/100-17', '444', '44', '34523452345', '44', '143 kg', '16 litres', '444', 'Auto', '16V', '4325435', 'led', 'bulb', 'digital', 'digital', 'digital', '2-Part ', 'unibody', 'no', 'yes', '1583835405_1_668389.jpeg', 'overallwidthoverallwidth sdfdsaf asdf sdf sdfsad fsdads sdf sdf sdafsd fsd111', 'https://www.facebook.com', 1, NULL, '2020-03-10 03:44:37', '2020-03-11 02:48:23'),
(5, NULL, 1, 1, 1, 0, 'Yamaha Cashback Offer On Valentine February 2020 !3', 'Yamaha-Cashback-Offer-On-Valentine-February-2020-!', '4', 'upcoming', 'Yes', 'gggg', 4444.00, 3333.00, 'dsfasdfsdfdsaf', 4444.00, 44444.00, 234234.00, 56567.00, 65767.00, 9999.00, 'stroke, DTs-i,Single cylinder', '14.89 Bhp @ 9000 rpm', '12.45 Nm @ 6500 rpm', '57.0 mm', '56.4 mmo', 'Info. Not Available', '2', 6, 'Manual', 'Both', 'single', 'zdfvxdv', 'fdxgcfgfcv', 'Manual', 'Manual', '5555', 'Manual', 'yes', '80/100-18', '80/100-13', 'dfgdfg', '20', 'adasdasd', 'sdfsdf', '142 kg', '18 litres', 'yyyy', 'Manual', '16V', '35W/35W Halogen (AHO)', 'Manual', 'Manual', 'analog', 'Both', 'analog', '3-Part ', 'singlebody', 'no', 'no', '1583906774_1_233154.jpeg', '* [Shortdescription may not be greater than 160 characters]\nShort Description\n* [Shortdescription may not be greater than 160 characters]\nShort Description\n* [Shortdescription may not be grea', 'https://www.youtube.com/watch?v=wyyVtx0K1Vg', 1, NULL, '2020-03-11 00:06:14', '2020-03-11 02:47:28'),
(6, NULL, 1, 1, 4, 0, 'Hornet-ABS VS FZS-ABS VS NS160-ABS Feature Comparison Reviewttt', 'Hornet-ABS-VS-FZS-ABS-VS-NS160-ABS-Feature-Comparison-Reviewtt', '4', 'upcoming', 'No', 'gggghhh', 5555.00, 334535.00, 'ffthfhfh', 5555.00, 999999.99, 34535.00, 345345.00, 235345.00, 235235.00, '4 stroke, DTs-i,Single ', '14.89 Bhp @ 9000 rpm', '12.45 Nm @ 6500 rpm', '59.0 mmm', '56.4 mmo', 'Info. Not Available', '4', 6, 'Both', 'Manual', 'single', 'zdfvxdv', 'fdxgcfgfcv', 'Manual', 'Manual', '5555', 'Manual', 'yes', '80/100-18', '80/100-17', 'dfgdfg', '20', 'fffsdfsxdc', 'sdfsdf', '142 kg', '16 litres', 'yyyy', 'Auto', '16V', '35W/35W Halogen (AHO)', 'led', 'Manual', 'analog', 'analog', 'analog', '2-Part ', 'singlebody', 'yes', 'no', '1583906901_1_418351.jpeg', '* [Shortdescription may not be greater than 160 characters]\nShort Description\n* [Shortdescription may not be greater than 160 characters]\nShort Description\n* [Shortdescription may not be grea', 'https://www.youtube.com/watch?v=wyyVtx0K1Vg', 1, NULL, '2020-03-11 00:08:21', '2020-03-11 00:08:28'),
(7, NULL, 1, 1, 5, 0, 'gsdxfdgfdfg', 'gsdxfdgfdf', '4', 'New', 'Yes', 'sdgdfg', 34546.00, 456456.00, 'fgfcg', 145456.00, 456456.00, 546456.00, 45657.00, 567567.00, 57.00, '4 stroke, DTs-i,Single ', '666', '34534', '57.0 mm', '56.4 mmm', '4456', '3', 4, 'Manual', 'Auto', 'both', '456456', '43534', 'Manual', 'Manual', '65567', 'Auto', 'no', '80/100-18', '80/100-13', '456546', '56456', 'zdxcxcv', 'xvxvc', '144 kg', '16 litres', 'xdvxcv', 'Auto', '16V', 'xdvxvc', 'Both', 'bulb', 'digital', 'analog', 'digital', '2-Part ', 'unibody', 'yes', 'yes', '1583908230_1_849862.jpeg', 'Shortdescription may notShortdescription may notShortdescription may notShortdescription may notShortdescription may notShortdescription may notShortdescription may not', 'http://127.0.0.1:8000/', 1, NULL, '2020-03-11 00:30:31', '2020-03-11 00:30:35'),
(8, NULL, 1, 1, 1, 0, 'hello', 'hell', '4', 'upcoming', 'Yes', 'jhbjhb', 9999.00, 7878.00, 'gjhghgh', 768767.00, 87878.00, 9898.00, 8878.00, 9897.00, 88787.00, 'stroke, DTs-i,Single cylinder', '8676', '76786', '59.0 mm', '56.4 mmo', '7767', '2', 4, 'Auto', 'Auto', 'doble', '45456', '45656', 'Auto', 'Auto', '34545', 'Auto', 'yes', '80/100-18', '80/100-17', '4545', '43545', 'dfd', 'dfdfg', '', '16 litres', '3445', 'Auto', '16V', '455', 'led', 'bulb', 'digital', 'digital', 'analog', '2-Part ', 'unibody', 'yes', 'yes', '1583916299_1_934766.jpeg', 'not be greater than 160 characters]not be greater than 160 characters]not be greater than 160 characters]not be greater than 160 characters]', 'http://127.0.0.1:8000/', 1, NULL, '2020-03-11 02:44:59', '2020-03-11 02:45:04'),
(9, NULL, 1, 1, 3, 0, 'hfgfghfdhgdfhg', 'hfgfghfdhgdfh', '6', 'upcoming', 'Yes', 'fgfgg', 45456.00, 456456.00, '445665', 56.00, 456.00, 46456.00, 4564.00, 4456.00, 456.00, '4 stroke, DTs-i,Single ', '4655', '4565', '', '56.4 mmo', '4564', '', 4, 'Manual', 'Auto', 'doble', '56456', '546456', 'Auto', 'Auto', '4564', 'Auto', 'yes', '80/100-12', '80/100-17', '546456', '4564', '456', '456', '144 kg', '16 litres', '456456', 'Manual', '16V', '4566', 'led', 'Manual', 'digital', 'analog', 'analog', '2-Part ', 'singlebody', 'yes', 'no', '1583916430_1_473964.jpeg', 'characters]characters]characters]characters]characters]characters]characters]characters]characters]characters]characters]', 'http://127.0.0.1:8000/', 1, NULL, '2020-03-11 02:47:10', '2020-03-11 02:47:13');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'superadmin', '2020-02-27 12:06:14', '2020-02-27 12:06:14'),
(2, 'Bangla Content Writer', 'superadmin', '2020-02-28 23:21:45', '2020-02-29 02:29:28'),
(3, 'English Content Writer', 'superadmin', '2020-02-29 02:29:00', '2020-02-29 02:29:00');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(9, 2),
(9, 3),
(10, 1),
(10, 2),
(10, 3),
(11, 1),
(11, 2),
(11, 3),
(12, 1),
(13, 1),
(13, 2),
(13, 3),
(14, 1),
(14, 2),
(14, 3),
(15, 1),
(15, 2),
(15, 3),
(16, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rtyres`
--

CREATE TABLE `rtyres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `rtyre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rtyres`
--

INSERT INTO `rtyres` (`id`, `admin_id`, `rtyre`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '80/100-18', 1, '2020-03-08 04:10:44', '2020-03-09 03:00:43'),
(3, 1, '80/100-17', 1, '2020-03-09 03:00:36', '2020-03-09 03:00:36'),
(4, 1, '80/100-13', 1, '2020-03-09 03:00:50', '2020-03-09 03:00:50');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `superadmin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `superadmin_id`, `status_name`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'Active', 'Superadmin', '2020-02-27 12:08:12', '2020-02-27 12:08:12'),
(2, 1, 'Inactive', 'Superadmin', '2020-02-27 12:08:20', '2020-02-27 12:08:20');

-- --------------------------------------------------------

--
-- Table structure for table `strokes`
--

CREATE TABLE `strokes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `stroke` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `strokes`
--

INSERT INTO `strokes` (`id`, `admin_id`, `stroke`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '56.4 mm', 1, '2020-03-05 05:57:31', '2020-03-09 02:55:28'),
(2, 1, '56.4 mmm', 1, '2020-03-09 02:55:39', '2020-03-09 02:55:39'),
(3, 1, '56.4 mmo', 1, '2020-03-09 02:55:47', '2020-03-09 02:55:47'),
(4, 1, '76.4 mm', 1, '2020-03-09 02:56:07', '2020-03-09 02:56:07');

-- --------------------------------------------------------

--
-- Table structure for table `superadmins`
--

CREATE TABLE `superadmins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `superadminname` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `superadmins`
--

INSERT INTO `superadmins` (`id`, `superadminname`, `image`, `phone`, `email`, `password`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Superadmin', 'not-found.jpg', '', 'admin1234@gmail.com', '$2y$10$oiWSKKpE745.ILnxJlrH/ujAccydcnDEnbnfQcqFKAreCWzgrlKtu', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `superadmin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `accounttype_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` bigint(20) UNSIGNED DEFAULT NULL,
  `gender_id` bigint(20) UNSIGNED DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `superadmin_id`, `admin_id`, `accounttype_id`, `name`, `image`, `phone`, `email`, `status_id`, `gender_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 2, 2, 'as dfsdaf', 'not-found.jgp', '01739898764', 'user1234@gmail.com', 1, 1, NULL, '$2y$10$9gK5iEFSRGbxXqh2ESj0T.vBG8caeSVAIgLLzdmSQ9mkOn19wkwHG', NULL, NULL, NULL, NULL),
(2, NULL, 1, 2, 'zahidul Islam', '1583235430_1_618301.jpeg', '01744852187', 'admin1234@gmail.com', 1, 2, NULL, '$2y$10$YHDlKahpwaZFvwTtKrHOdOqJZ4TqoUBkGd4KOn1XLwqhQh4v06gCG', NULL, '2020-03-03 05:37:12', '2020-03-03 05:37:12', NULL),
(3, NULL, 1, 2, 'zahidul Islam', '1583236543_1_689866.jpeg', '01739898764', 'admin12dsfsd34@gmail.com', 1, 1, NULL, '$2y$10$JSOcMAHBojfaLj.rOzPScO2FIt3zT8Xxm3K3ngjeS6rIG1GhskRIa', NULL, '2020-03-03 05:55:43', '2020-03-03 05:55:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `viewcounts`
--

CREATE TABLE `viewcounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `titleslug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agent` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `weights`
--

CREATE TABLE `weights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `weight` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `weights`
--

INSERT INTO `weights` (`id`, `admin_id`, `weight`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, '143 kg', 1, '2020-03-08 04:11:21', '2020-03-09 03:01:08'),
(3, 1, '144 kg', 1, '2020-03-09 03:01:14', '2020-03-09 03:01:14'),
(4, 1, '142 kg', 1, '2020-03-09 03:01:22', '2020-03-09 03:01:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounttypes`
--
ALTER TABLE `accounttypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounttypes_accounttype_unique` (`accounttype`),
  ADD KEY `accounttypes_superadmin_id_foreign` (`superadmin_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD KEY `admins_superadmin_id_foreign` (`superadmin_id`),
  ADD KEY `admins_status_id_foreign` (`status_id`),
  ADD KEY `admins_gender_id_foreign` (`gender_id`);

--
-- Indexes for table `betteryvoltages`
--
ALTER TABLE `betteryvoltages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `betteryvoltages_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `blogcategorylists`
--
ALTER TABLE `blogcategorylists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogcategorylists_blog_id_foreign` (`blog_id`);

--
-- Indexes for table `blogcomments`
--
ALTER TABLE `blogcomments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogcomments_blog_id_foreign` (`blog_id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_slug_unique` (`slug`),
  ADD KEY `blogs_admin_id_foreign` (`admin_id`),
  ADD KEY `blogs_superadmin_id_foreign` (`superadmin_id`);

--
-- Indexes for table `bores`
--
ALTER TABLE `bores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bores_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `brandcategories`
--
ALTER TABLE `brandcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brandcategories_admin_id_foreign` (`admin_id`),
  ADD KEY `brandcategories_company_id_foreign` (`company_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_categoryname_unique` (`categoryname`),
  ADD KEY `categories_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `ccs`
--
ALTER TABLE `ccs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ccs_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `chassis`
--
ALTER TABLE `chassis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chassis_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `clutches`
--
ALTER TABLE `clutches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clutches_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `companies_brand_unique` (`brand`),
  ADD KEY `companies_admin_id_foreign` (`admin_id`),
  ADD KEY `companies_superadmin_id_foreign` (`superadmin_id`);

--
-- Indexes for table `cylinders`
--
ALTER TABLE `cylinders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cylinders_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `engines`
--
ALTER TABLE `engines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `engines_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ftcapacities`
--
ALTER TABLE `ftcapacities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ftcapacities_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `ftyres`
--
ALTER TABLE `ftyres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ftyres_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `gears`
--
ALTER TABLE `gears`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gears_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `genders_gender_unique` (`gender`),
  ADD KEY `genders_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modelyears`
--
ALTER TABLE `modelyears`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `modelyears_modelyear_unique` (`modelyear`),
  ADD KEY `modelyears_admin_id_foreign` (`admin_id`);

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
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`),
  ADD UNIQUE KEY `pages_pagename_unique` (`pagename`),
  ADD KEY `pages_admin_id_foreign` (`admin_id`),
  ADD KEY `pages_superadmin_id_foreign` (`superadmin_id`),
  ADD KEY `pages_parentpage_id_foreign` (`parentpage_id`);

--
-- Indexes for table `parentpages`
--
ALTER TABLE `parentpages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `parentpages_parentpage_unique` (`parentpage`),
  ADD KEY `parentpages_admin_id_foreign` (`admin_id`),
  ADD KEY `parentpages_superadmin_id_foreign` (`superadmin_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productimages`
--
ALTER TABLE `productimages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productimages_product_id_foreign` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_superadmin_id_foreign` (`superadmin_id`),
  ADD KEY `products_admin_id_foreign` (`admin_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_brandcategory_id_foreign` (`brandcategory_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `rtyres`
--
ALTER TABLE `rtyres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rtyres_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `statuses_superadmin_id_foreign` (`superadmin_id`);

--
-- Indexes for table `strokes`
--
ALTER TABLE `strokes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strokes_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `superadmins`
--
ALTER TABLE `superadmins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `superadmins_email_unique` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_superadmin_id_foreign` (`superadmin_id`),
  ADD KEY `users_admin_id_foreign` (`admin_id`),
  ADD KEY `users_accounttype_id_foreign` (`accounttype_id`),
  ADD KEY `users_status_id_foreign` (`status_id`),
  ADD KEY `users_gender_id_foreign` (`gender_id`);

--
-- Indexes for table `viewcounts`
--
ALTER TABLE `viewcounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `weights`
--
ALTER TABLE `weights`
  ADD PRIMARY KEY (`id`),
  ADD KEY `weights_admin_id_foreign` (`admin_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounttypes`
--
ALTER TABLE `accounttypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `betteryvoltages`
--
ALTER TABLE `betteryvoltages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blogcategorylists`
--
ALTER TABLE `blogcategorylists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogcomments`
--
ALTER TABLE `blogcomments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `bores`
--
ALTER TABLE `bores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `brandcategories`
--
ALTER TABLE `brandcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ccs`
--
ALTER TABLE `ccs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `chassis`
--
ALTER TABLE `chassis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `clutches`
--
ALTER TABLE `clutches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cylinders`
--
ALTER TABLE `cylinders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `engines`
--
ALTER TABLE `engines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ftcapacities`
--
ALTER TABLE `ftcapacities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ftyres`
--
ALTER TABLE `ftyres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `gears`
--
ALTER TABLE `gears`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `modelyears`
--
ALTER TABLE `modelyears`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parentpages`
--
ALTER TABLE `parentpages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `productimages`
--
ALTER TABLE `productimages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rtyres`
--
ALTER TABLE `rtyres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `strokes`
--
ALTER TABLE `strokes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `superadmins`
--
ALTER TABLE `superadmins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `viewcounts`
--
ALTER TABLE `viewcounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `weights`
--
ALTER TABLE `weights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounttypes`
--
ALTER TABLE `accounttypes`
  ADD CONSTRAINT `accounttypes_superadmin_id_foreign` FOREIGN KEY (`superadmin_id`) REFERENCES `superadmins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_gender_id_foreign` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admins_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admins_superadmin_id_foreign` FOREIGN KEY (`superadmin_id`) REFERENCES `superadmins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `betteryvoltages`
--
ALTER TABLE `betteryvoltages`
  ADD CONSTRAINT `betteryvoltages_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blogcategorylists`
--
ALTER TABLE `blogcategorylists`
  ADD CONSTRAINT `blogcategorylists_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blogcomments`
--
ALTER TABLE `blogcomments`
  ADD CONSTRAINT `blogcomments_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blogs_superadmin_id_foreign` FOREIGN KEY (`superadmin_id`) REFERENCES `superadmins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bores`
--
ALTER TABLE `bores`
  ADD CONSTRAINT `bores_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `brandcategories`
--
ALTER TABLE `brandcategories`
  ADD CONSTRAINT `brandcategories_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `brandcategories_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ccs`
--
ALTER TABLE `ccs`
  ADD CONSTRAINT `ccs_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `chassis`
--
ALTER TABLE `chassis`
  ADD CONSTRAINT `chassis_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `clutches`
--
ALTER TABLE `clutches`
  ADD CONSTRAINT `clutches_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `companies_superadmin_id_foreign` FOREIGN KEY (`superadmin_id`) REFERENCES `superadmins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cylinders`
--
ALTER TABLE `cylinders`
  ADD CONSTRAINT `cylinders_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `engines`
--
ALTER TABLE `engines`
  ADD CONSTRAINT `engines_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ftcapacities`
--
ALTER TABLE `ftcapacities`
  ADD CONSTRAINT `ftcapacities_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ftyres`
--
ALTER TABLE `ftyres`
  ADD CONSTRAINT `ftyres_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `gears`
--
ALTER TABLE `gears`
  ADD CONSTRAINT `gears_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `genders`
--
ALTER TABLE `genders`
  ADD CONSTRAINT `genders_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `superadmins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `modelyears`
--
ALTER TABLE `modelyears`
  ADD CONSTRAINT `modelyears_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pages_parentpage_id_foreign` FOREIGN KEY (`parentpage_id`) REFERENCES `parentpages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pages_superadmin_id_foreign` FOREIGN KEY (`superadmin_id`) REFERENCES `superadmins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `productimages`
--
ALTER TABLE `productimages`
  ADD CONSTRAINT `productimages_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_brandcategory_id_foreign` FOREIGN KEY (`brandcategory_id`) REFERENCES `brandcategories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_superadmin_id_foreign` FOREIGN KEY (`superadmin_id`) REFERENCES `superadmins` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
