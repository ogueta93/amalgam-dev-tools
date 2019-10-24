-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 23, 2019 at 12:35 PM
-- Server version: 10.4.8-MariaDB-1:10.4.8+maria~buster
-- PHP Version: 7.2.23-1+0~20191008.27+debian9~1.gbp021266

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amalgam`
--

--
-- Dumping data for table `app_variable`
--

INSERT INTO `app_variable` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'winRowCount', default, default, NULL);

--
-- Dumping data for table `battle_status`
--

INSERT INTO `battle_status` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'pending', default, default, NULL),
(2, 'started', default, default, NULL),
(3, 'finished', default, default, NULL);

--
-- Dumping data for table `battle_type`
--

INSERT INTO `battle_type` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'simpleMatch', default, default, NULL);

--
-- Dumping data for table `booster_type`
--

INSERT INTO `booster_type` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'normalBooster', default, default, NULL),
(2, 'specialBooster', default, default, NULL),
(3, 'legendaryBooster', default, default, NULL);

--
-- Dumping data for table `card_type`
--

INSERT INTO `card_type` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'common', default, default, NULL),
(2, 'rare', default, default, NULL),
(3, 'legendary', default, default, NULL),
(4, 'unique', default, default, NULL);

--
-- Dumping data for table `cron_event_type`
--

INSERT INTO `cron_event_type` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'battleReward', default, default, NULL);

--
-- Dumping data for table `daily_reward_type`
--

INSERT INTO `daily_reward_type` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'dailyBooster', default, default, NULL),
(2, 'winRowBooster', default, default, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
