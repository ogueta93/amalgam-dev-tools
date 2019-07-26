--
-- Dumping data for table `battle_status`
--
INSERT INTO `battle_status` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'pending', '2018-12-18 14:34:30', '2018-12-18 14:34:30', NULL),
(2, 'started', '2018-12-18 14:34:34', '2018-12-18 14:34:34', NULL),
(3, 'finished', '2018-12-18 14:34:43', '2018-12-18 14:34:43', NULL);

--
-- Dumping data for table `battle_type`
--
INSERT INTO `battle_type` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'simpleMatch', '2018-12-12 14:51:55', '2018-12-12 14:52:09', NULL);

--
-- Dumping data for table `card_type`
--
INSERT INTO `card_type` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'common', '2019-02-14 12:03:50', '2019-02-14 12:03:50', NULL),
(2, 'rare', '2019-02-14 12:03:59', '2019-02-14 12:03:59', NULL),
(3, 'legendary', '2019-02-14 12:04:36', '2019-02-14 12:04:36', NULL),
(4, 'unique', '2019-02-14 12:04:43', '2019-02-14 12:04:43', NULL);
