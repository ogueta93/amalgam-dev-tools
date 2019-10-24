-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 24, 2019 at 10:26 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `app_variable`
--

CREATE TABLE `app_variable` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `battle`
--

CREATE TABLE `battle` (
  `id` int(11) NOT NULL,
  `battle_status_id` int(11) NOT NULL,
  `battle_type_id` int(11) NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `battle_status`
--

CREATE TABLE `battle_status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `battle_type`
--

CREATE TABLE `battle_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booster_type`
--

CREATE TABLE `booster_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

CREATE TABLE `card` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `type_id` int(11) NOT NULL,
  `ctop` varchar(3) COLLATE utf8mb4_spanish_ci NOT NULL,
  `cright` varchar(3) COLLATE utf8mb4_spanish_ci NOT NULL,
  `cbottom` varchar(3) COLLATE utf8mb4_spanish_ci NOT NULL,
  `cleft` varchar(3) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `card_type`
--

CREATE TABLE `card_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cron_event`
--

CREATE TABLE `cron_event` (
  `id` int(11) NOT NULL,
  `cron_event_type_id` int(11) NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expired_date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `key_id` varchar(32) COLLATE utf8_spanish_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cron_event_type`
--

CREATE TABLE `cron_event_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `daily_reward_type`
--

CREATE TABLE `daily_reward_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `age` date NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_spanish_ci NOT NULL,
  `nickname` varchar(25) COLLATE utf8mb4_spanish_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_app_variable`
--

CREATE TABLE `user_app_variable` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `app_variable_id` int(11) NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_battle`
--

CREATE TABLE `user_battle` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `battle_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `user_booster`
--

CREATE TABLE `user_booster` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `booster_type_id` int(11) NOT NULL,
  `opened` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_card`
--

CREATE TABLE `user_card` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_card` int(11) NOT NULL,
  `id_battle` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_daily_reward`
--

CREATE TABLE `user_daily_reward` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `daily_reward_type_id` int(11) NOT NULL,
  `claimed` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_variable`
--
ALTER TABLE `app_variable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `battle`
--
ALTER TABLE `battle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `battle_battle_status_id` (`battle_status_id`),
  ADD KEY `battle_battle_type_id` (`battle_type_id`);

--
-- Indexes for table `battle_status`
--
ALTER TABLE `battle_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `battle_type`
--
ALTER TABLE `battle_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booster_type`
--
ALTER TABLE `booster_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `card_name_unique` (`name`),
  ADD KEY `card_type_id` (`type_id`);

--
-- Indexes for table `card_type`
--
ALTER TABLE `card_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cron_event`
--
ALTER TABLE `cron_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cron_event_cron_event_type_id` (`cron_event_type_id`);

--
-- Indexes for table `cron_event_type`
--
ALTER TABLE `cron_event_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cront_event_type_name_unique` (`name`);

--
-- Indexes for table `daily_reward_type`
--
ALTER TABLE `daily_reward_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`),
  ADD UNIQUE KEY `nickname` (`nickname`);

--
-- Indexes for table `user_app_variable`
--
ALTER TABLE `user_app_variable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_app_variable_user_id` (`user_id`),
  ADD KEY `user_app_variable_app_variable_id` (`app_variable_id`);

--
-- Indexes for table `user_battle`
--
ALTER TABLE `user_battle`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`battle_id`),
  ADD KEY `user_battle_battle_id` (`battle_id`);

--
-- Indexes for table `user_booster`
--
ALTER TABLE `user_booster`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_booster_user_id` (`user_id`),
  ADD KEY `user_booster_booster_type_id` (`booster_type_id`);

--
-- Indexes for table `user_card`
--
ALTER TABLE `user_card`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_card_user_id` (`id_user`),
  ADD KEY `user_card_card_id` (`id_card`),
  ADD KEY `user_card_battle_id` (`id_battle`);

--
-- Indexes for table `user_daily_reward`
--
ALTER TABLE `user_daily_reward`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_daily_reward_user_id` (`user_id`),
  ADD KEY `user_daily_reward_daily_reward_type_id` (`daily_reward_type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_variable`
--
ALTER TABLE `app_variable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `battle`
--
ALTER TABLE `battle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `battle_status`
--
ALTER TABLE `battle_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `battle_type`
--
ALTER TABLE `battle_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booster_type`
--
ALTER TABLE `booster_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `card`
--
ALTER TABLE `card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `card_type`
--
ALTER TABLE `card_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cron_event`
--
ALTER TABLE `cron_event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cron_event_type`
--
ALTER TABLE `cron_event_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `daily_reward_type`
--
ALTER TABLE `daily_reward_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_app_variable`
--
ALTER TABLE `user_app_variable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_battle`
--
ALTER TABLE `user_battle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_booster`
--
ALTER TABLE `user_booster`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_card`
--
ALTER TABLE `user_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_daily_reward`
--
ALTER TABLE `user_daily_reward`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `battle`
--
ALTER TABLE `battle`
  ADD CONSTRAINT `battle_battle_status_id` FOREIGN KEY (`battle_status_id`) REFERENCES `battle_status` (`id`),
  ADD CONSTRAINT `battle_battle_type_id` FOREIGN KEY (`battle_type_id`) REFERENCES `battle_type` (`id`);

--
-- Constraints for table `card`
--
ALTER TABLE `card`
  ADD CONSTRAINT `card_card_type_id` FOREIGN KEY (`type_id`) REFERENCES `card_type` (`id`);

--
-- Constraints for table `cron_event`
--
ALTER TABLE `cron_event`
  ADD CONSTRAINT `cron_event_cron_event_type_id` FOREIGN KEY (`cron_event_type_id`) REFERENCES `cron_event_type` (`id`);

--
-- Constraints for table `user_app_variable`
--
ALTER TABLE `user_app_variable`
  ADD CONSTRAINT `user_app_variable_app_variable_id` FOREIGN KEY (`app_variable_id`) REFERENCES `app_variable` (`id`),
  ADD CONSTRAINT `user_app_variable_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `user_battle`
--
ALTER TABLE `user_battle`
  ADD CONSTRAINT `user_battle_battle_id` FOREIGN KEY (`battle_id`) REFERENCES `battle` (`id`),
  ADD CONSTRAINT `user_battle_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `user_booster`
--
ALTER TABLE `user_booster`
  ADD CONSTRAINT `user_booster_booster_type_id` FOREIGN KEY (`booster_type_id`) REFERENCES `booster_type` (`id`),
  ADD CONSTRAINT `user_booster_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `user_card`
--
ALTER TABLE `user_card`
  ADD CONSTRAINT `user_card_battle_id` FOREIGN KEY (`id_battle`) REFERENCES `battle` (`id`),
  ADD CONSTRAINT `user_card_card_id` FOREIGN KEY (`id_card`) REFERENCES `card` (`id`),
  ADD CONSTRAINT `user_card_user_id` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Constraints for table `user_daily_reward`
--
ALTER TABLE `user_daily_reward`
  ADD CONSTRAINT `user_daily_reward_daily_reward_type_id` FOREIGN KEY (`daily_reward_type_id`) REFERENCES `daily_reward_type` (`id`),
  ADD CONSTRAINT `user_daily_reward_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
