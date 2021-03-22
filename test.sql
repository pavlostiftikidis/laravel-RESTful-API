-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2021 at 09:22 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `address`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Lioncode', 'BALKAN', '2311111251', '2021-03-22 20:19:28', '2021-03-22 20:19:32'),
(2, 'Lioncodekavala', 'Balkan', '2311111251', '2021-03-22 20:17:18', '2021-03-22 20:17:18'),
(3, 'Demo1', 'Skoufa43', '2311111251', '2021-03-22 20:17:18', '2021-03-22 20:17:18'),
(4, 'Demo2', 'Iasonidou2', '2369896875', '2021-03-22 20:18:39', '2021-03-22 20:18:39');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2021_03_21_171300_create_companies_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('00807c44aaaec4662f6c9450dfc9824be7b121f963e889b413387b7c0788257cfb53b485709afbe6', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 17:55:35', '2021-03-22 17:55:35', '2022-03-22 19:55:35'),
('041efab00a0b2b5e61b9622aa3022de009c6b6b7ff407d11fd4c93ec4d8a38d51d6fb7106e40a414', 14, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 17:39:34', '2021-03-22 17:39:34', '2022-03-22 19:39:34'),
('085d256a1a477cd949c7ad7192f031c07e53a2be8445e6c7fd3d4eb15f58aebff7438a17833dff2a', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 12:51:18', '2021-03-22 12:51:18', '2022-03-22 14:51:18'),
('0e15cda4032194e9b63067eee5d9ae97e16e8b10a8872ef609305d1f34976646b599d4b985b1f1e3', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 13:04:58', '2021-03-22 13:04:58', '2022-03-22 15:04:58'),
('0fb4b45c0c259bb3c437e00cb29bab9b3351a22ca81f1e045e2e62fb7f179c3a8943ae22c7310486', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-21 15:38:19', '2021-03-21 15:38:19', '2022-03-21 17:38:19'),
('1845c912f391c123d431e1e4f70bb71e7549ba191d060c476bb438beab07cb85f8bc8aaf29325690', 13, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 17:37:46', '2021-03-22 17:37:46', '2022-03-22 19:37:46'),
('1924c9a7ec9872393bbd5a443497fd0ae712a269de40f1af3ae673e32655152836e511fd83d8efe2', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 13:01:58', '2021-03-22 13:01:58', '2022-03-22 15:01:58'),
('1ec18d38f12a15e8d610201b8c388d251ac279ae264e251e9c763e79d945565b257065240b56d246', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 13:09:29', '2021-03-22 13:09:29', '2022-03-22 15:09:29'),
('1edd9cbbfc24b013c820d1509bed21732f65d593a5c5103e163a8b569c0666a9fb99bd31f91f80db', 3, 1, 'LaravelAuthApp', '[]', 0, '2021-03-21 15:38:00', '2021-03-21 15:38:00', '2022-03-21 17:38:00'),
('212d048883d5902030cd1a2b96d6c57af29bbd82042603734b649be67509d9a003da22aca73c692f', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 12:48:26', '2021-03-22 12:48:26', '2022-03-22 14:48:26'),
('21970254f95387249c096837eee8a5cba2826dcd30e3e374bd2ffa38c9172ef3c88d040f8a67270e', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-21 20:32:18', '2021-03-21 20:32:18', '2022-03-21 22:32:18'),
('23d24898d08a885e886ae11a4c17d27d8effe574ce1a576b9b7cbb049e0f6fae4736ef2649b2b41c', 23, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 17:42:27', '2021-03-22 17:42:27', '2022-03-22 19:42:27'),
('289750756a26d108ecde807396ca41415f19721e7b14af6ce8e1f7a2e0fbd69cd2a473c77173fec4', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 13:10:42', '2021-03-22 13:10:42', '2022-03-22 15:10:42'),
('2a605004b1da269b1a773e169e9465bf19df73430829467b614fdd549084da7dcd53404aad385ab7', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 13:20:21', '2021-03-22 13:20:21', '2022-03-22 15:20:21'),
('2cbfbf71960887bb57864df1183b8dc28487f881d4ca37a3429aff7317b9390446ea122e07cf4864', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-21 18:50:26', '2021-03-21 18:50:26', '2022-03-21 20:50:26'),
('32cbebd7c65d4252575cdf6ec665406299305046c8b55c30a137ad43508846a957123b7ff3a4719b', 11, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 17:36:53', '2021-03-22 17:36:53', '2022-03-22 19:36:53'),
('380eb13acf72fd787f343e031c5c2910abc976a5d6d2d62496f9a276dd4e1cde06ed9a8c8ce8e360', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-21 18:47:54', '2021-03-21 18:47:54', '2022-03-21 20:47:54'),
('3b452839cbf58054d04c6d314d819a0cea486e4513f9beeac5d93a221617cd606f2dcb2c5ea45cc4', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 12:42:35', '2021-03-22 12:42:35', '2022-03-22 14:42:35'),
('3bd9ff1547d4fc37d9707e97fa1606d6cb9d79b98d7c4dd2cf3847c5e0b972d3ded8c38091b973f3', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 13:17:51', '2021-03-22 13:17:51', '2022-03-22 15:17:51'),
('3e9b828959460bd6a41bdfe9e5f55d18848bc149ad848057724eeaf899918d778abd1827c9927542', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 12:51:40', '2021-03-22 12:51:40', '2022-03-22 14:51:40'),
('4277f03c445ca64a711ad462cac2654afa5cd79f4bb26bc07104722d2907d00a7b05700f8df0fa86', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-21 15:45:56', '2021-03-21 15:45:56', '2022-03-21 17:45:56'),
('49682cd976b0ef453db29eb5de0c96ef422272d97e069d1d2b64ba6dd954adf8f941eacd9215715a', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 13:31:14', '2021-03-22 13:31:14', '2022-03-22 15:31:14'),
('49ed1e4693df72fb4151a1678a8ce30f150b923990168f1103c3b0343e6922c92320b5bb8701e12e', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 13:04:00', '2021-03-22 13:04:00', '2022-03-22 15:04:00'),
('4b4dc8daa944538e01064682e4b6beea4198fe713b779b5f33f1736f959b573f9e8185e6ee0c5ed0', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 12:53:43', '2021-03-22 12:53:43', '2022-03-22 14:53:43'),
('4bce20a7d8b5eaf0201cf0c465f233a01444a5ad15564c6d99d2cf9e2fb44fff7b3e72e30e7bc56d', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 12:45:07', '2021-03-22 12:45:07', '2022-03-22 14:45:07'),
('4f423f6d433fae9b410a29ba3c35726c3df4b5a4a52a6a5fb0182f7676503845825456587d1d7511', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 12:53:50', '2021-03-22 12:53:50', '2022-03-22 14:53:50'),
('50206e9d662f806581fb4d178e180b1016dce650255fe4c727ac7cecfa3fc13049736034a09a2a8c', 17, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 17:40:44', '2021-03-22 17:40:44', '2022-03-22 19:40:44'),
('542ad60d99bb72fba3dd81d5dcd1a7e7c7dd4aad724b30fb45c30b7ea169fe299ebb654d44d7ffb8', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 12:47:40', '2021-03-22 12:47:40', '2022-03-22 14:47:40'),
('56a94b7348cb3e5886ecb10917ebcfd4e08e461760595498fd4ef44fcb21aea30567b9c0b10ebbdb', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-21 18:26:46', '2021-03-21 18:26:46', '2022-03-21 20:26:46'),
('57e27eb2fed005cb6fb9f90e034c7c110f0f207d9366ecc70efd083a68bb3e7c3f6ed1c9ad49fe51', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 13:22:23', '2021-03-22 13:22:23', '2022-03-22 15:22:23'),
('5e9c7d8b0a01dbba88c65c99e0dd55fed8bcd94d0014f7b914da513dd2accdd3f7d866b28e6689b3', 24, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 17:48:33', '2021-03-22 17:48:33', '2022-03-22 19:48:33'),
('60004ca52367b45cc6f8570c1cc9adb22137015a8b4912b1dfdc4ca6d8c43e39da968c0f0a4a8138', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 12:44:17', '2021-03-22 12:44:17', '2022-03-22 14:44:17'),
('62abb17e9072512e3c7c28f310c35a59fb100f91d7827200ede70addd8df334c522fee0d66ca5cd6', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 13:23:41', '2021-03-22 13:23:41', '2022-03-22 15:23:41'),
('68268cb50519b4d3b8709f927740a8ac90a41f75b4b0edb7b9d4f4ed977b4abf7a04062c4b410dee', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-21 18:50:31', '2021-03-21 18:50:31', '2022-03-21 20:50:31'),
('68db6e138a5bf631ae26327fe70aa6ee1daa7956bd25553e50f34d3177b6f08a4511eda7023dae0d', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 18:02:34', '2021-03-22 18:02:34', '2022-03-22 20:02:34'),
('6b607bae03ed93e54259eacd3926f007f61979f5ad73192d2a57d35327a51146a5cb12e1910c3513', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 11:22:09', '2021-03-22 11:22:09', '2022-03-22 13:22:09'),
('7373ffa7fe80fed8ea74ad0a31c738849fc834e9eeef2c6fd46a6f963acf35b8ab5c58bb1978ec12', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 08:16:42', '2021-03-22 08:16:42', '2022-03-22 10:16:42'),
('7b61a99e0491dc29dca3d43cd6a8e5637f80931103d675233abac663bc51adb49167afea5aef73ff', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 13:09:03', '2021-03-22 13:09:03', '2022-03-22 15:09:03'),
('8687c5b6009abfa911080d63d37310cd5dbe7f0efd0d8aa5b03a472c6e4e90f2ca005e3e08be7052', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 12:44:59', '2021-03-22 12:44:59', '2022-03-22 14:44:59'),
('86b5a0288bcc727601f53150ac25fa28e5483494cd32f9c1fa5a992cba83419db93602e59900f4a0', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 17:53:49', '2021-03-22 17:53:49', '2022-03-22 19:53:49'),
('89b6007205ef4213becfdee3b905fe3e30d58b6bf3bb2fcbe4e219cceee6682dcd98905a5cfe96bc', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 13:56:53', '2021-03-22 13:56:53', '2022-03-22 15:56:53'),
('8e9abc5932cff23061930aaa3874b68a985c47e653926a644684ff9cd50cd6e4502033852d935fb3', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 13:30:36', '2021-03-22 13:30:36', '2022-03-22 15:30:36'),
('8f3d4b22c8f0e6848e67eab756e373b208279d1d95fa5e43fed245cb96ba96b25c3616d60fbd51f1', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 12:52:21', '2021-03-22 12:52:21', '2022-03-22 14:52:21'),
('906e580e8761aaf3f31344297f53151ab44bf5983ae6f8b4f972ba75900630a00c0b2c3d6de0ae06', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-21 20:33:03', '2021-03-21 20:33:03', '2022-03-21 22:33:03'),
('9209c7206bacbfc6a3a30df2b7dbf16cf1c9b3bb2b04f5541c1eb97b332d9362cf8690ee68741cd9', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 12:42:50', '2021-03-22 12:42:50', '2022-03-22 14:42:50'),
('95c4ddca3f9f42adb9c8a889cf79d2a70cf92edad2a0fc8b01be8c9604d637ba601c95c4887f090f', 8, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 17:35:35', '2021-03-22 17:35:35', '2022-03-22 19:35:35'),
('96ad8da2dffe80b3d537283dabdb2ca4f7cb967f5587f3fc3cad59c7627992403b484aa9fe5e8fb7', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 17:56:32', '2021-03-22 17:56:32', '2022-03-22 19:56:32'),
('997a53aea919aaccde51bc003eee6fc889d605fa7b322c49e6f70baddd3c1c1008be3612c459cc60', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 12:51:52', '2021-03-22 12:51:52', '2022-03-22 14:51:52'),
('9ac78ab626ece47ca2aa4a0480064fc40968412c288fd6da82d9fd162e4a58ecd6b015b5494d76d5', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 13:07:49', '2021-03-22 13:07:49', '2022-03-22 15:07:49'),
('9c9753956d6b3129cf58c9bd73f64eff9b82e1aa4999cd43157177da6ac62a0b0ff391d9f67fe0ec', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 12:44:41', '2021-03-22 12:44:41', '2022-03-22 14:44:41'),
('9caff77f69de0e4d8aab8f6b6607baab9c4533c2c8c176901bc9ceb2b0d00f3e9776e29d246f6504', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 13:10:11', '2021-03-22 13:10:11', '2022-03-22 15:10:11'),
('9eec3850a5d476d042a13da962beb952f728a9c0d49be28b45a61f3d3c1080c992aacd51d3c1ae98', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-21 15:42:58', '2021-03-21 15:42:58', '2022-03-21 17:42:58'),
('9f10ef160417814e110f01301392714bf543e42f7eb701bdaae8885c4137473c5f80ae20e4490498', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 12:50:35', '2021-03-22 12:50:35', '2022-03-22 14:50:35'),
('9f6c863c7296f73960d69474fae48bc151f89854768474c162087dbcdb46fbbb8c7050a3d5fd00b8', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 13:27:10', '2021-03-22 13:27:10', '2022-03-22 15:27:10'),
('a2bd22339c2f5bb04643905825cd00b2958a75f4f3a4ca4c4a65882a965b3a3af71549aca7c1637e', 7, 1, 'LaravelAuthApp', '[]', 0, '2021-03-21 15:39:52', '2021-03-21 15:39:52', '2022-03-21 17:39:52'),
('a31ccaeab4dd83278a7078ef653b6294440caa02145885f864df8cbd7900d294712e153c5046e3bc', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 13:16:01', '2021-03-22 13:16:01', '2022-03-22 15:16:01'),
('a8dce481f0d00737dc9421b980900d27af1d28ebf9208a31767fa3babeed66c2151ecc1f858e1fa5', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 18:01:07', '2021-03-22 18:01:07', '2022-03-22 20:01:07'),
('aa3580d616a05d5a21b516f78f8e3be06fde45e3d9c1fedc34c2edecb8e2b6145d7b6c64bfb696ed', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 13:09:39', '2021-03-22 13:09:39', '2022-03-22 15:09:39'),
('b59d4e51371c310b2b2bec6d358bb7248257839c16a0fff17cfbe9011a77fe9f3be4b1f0a927454e', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 17:55:16', '2021-03-22 17:55:16', '2022-03-22 19:55:16'),
('b79d05114669dd79c2d5a2432a84c182def951df1197a986ed339f2abd9af51730ba65408a366241', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 17:55:06', '2021-03-22 17:55:06', '2022-03-22 19:55:06'),
('b836d7f98514a144e7fad43f10e39e133caca5eccc8b03664c70bf523f17e8a6dae65a5d33c86356', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-21 20:32:11', '2021-03-21 20:32:11', '2022-03-21 22:32:11'),
('b870489fb5d06682a5ff686b12ef60bad6f4bf901d8569c789e459a385023bb60007f8fea4a40641', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-21 20:32:15', '2021-03-21 20:32:15', '2022-03-21 22:32:15'),
('b8b7f833d38e7877d185075821966929eb0924c78d3124aa52c5c99d89c3bc384707448b09f537e7', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 18:00:08', '2021-03-22 18:00:08', '2022-03-22 20:00:08'),
('ba8500995e4a323a193a8c50b7c688cdefd52ad42a54a087b5ca85f74e1f93e264e4c8fdc32ca87a', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 12:44:51', '2021-03-22 12:44:51', '2022-03-22 14:44:51'),
('baaabc3459afd256c8dd5a59cb7e19473d74f589ce95bb13df1fe30c7fa4292f129f59dfa4f9daa1', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 13:10:53', '2021-03-22 13:10:53', '2022-03-22 15:10:53'),
('be38d7353c851e9417f2410f1f967fe35e99ef33a86e6b41bae27debfd534ca19666a98382b53ef3', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-21 20:31:52', '2021-03-21 20:31:52', '2022-03-21 22:31:52'),
('c137e2821d9d9e978acc917ea048916f793f2669d919a5cb5d014e7ce73fe5eed15a234283aff9c4', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 17:55:58', '2021-03-22 17:55:58', '2022-03-22 19:55:58'),
('c14c547e0d69a63fef24ce209b86c2058ba7fbdb864df1048ccf75727945e2b84c13e1ccf09f0f30', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 12:53:32', '2021-03-22 12:53:32', '2022-03-22 14:53:32'),
('c22e8b9dfade07de95c5f962ff6ae5f25ea8a70ceb4938ee6d1051b6af9764cf6a3f29a4408ba738', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 12:53:59', '2021-03-22 12:53:59', '2022-03-22 14:53:59'),
('c5acf9ec83abd99371686653e1b6244d56e357ed8a11914e784081ccea025de4bfd3aeda89af09c9', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 18:02:15', '2021-03-22 18:02:15', '2022-03-22 20:02:15'),
('d03b4de98ee72ce4bdb9b81c154216232f640bae3003e1937e2c909aaa4ba2ba84c4d2c38c6aefa8', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 12:52:00', '2021-03-22 12:52:00', '2022-03-22 14:52:00'),
('d69fb69976219e49477f4b683dc3cbbfe6d485403de5753d5a91d5cf9afe1a315b41b286b110d0fb', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 17:58:16', '2021-03-22 17:58:16', '2022-03-22 19:58:16'),
('d7434d1f5228108c070fab89b475e9234b9d9c2931d22ca6514ab654ce576d23afa33a472743490e', 25, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 18:02:54', '2021-03-22 18:02:54', '2022-03-22 20:02:54'),
('db48a4163586667e94f5ba0f0ad451e96f6c82fc3e4740be0e46a8cbb7da267f61e67725a0c2c49b', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 12:48:04', '2021-03-22 12:48:04', '2022-03-22 14:48:04'),
('dc5dd4475874a9b77f4db2b3a0ba51160d149ac5d13c57d05211b09ce4a53ef40234e7d848c2720f', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 10:50:53', '2021-03-22 10:50:53', '2022-03-22 12:50:53'),
('e095d60b23d18d79495b63062b04d00dad5b5685657ea9b9d53e3c893b2452423949eeded488d058', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-21 20:32:22', '2021-03-21 20:32:22', '2022-03-21 22:32:22'),
('e478154e370e3ae94605915fb918e6c71289f656e7d71a48718270b838a0b422f400e994fabb3742', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 12:49:06', '2021-03-22 12:49:06', '2022-03-22 14:49:06'),
('e8119e5b5524a93fdd070d887e5e6f84c4f293f1b7a4b6031ce601bb115683faa251010fb7656dd5', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 12:43:50', '2021-03-22 12:43:50', '2022-03-22 14:43:50'),
('ea2b4d6a299cfd568248cffae4ea0661992ad41dad14870902c71ca535baf8c4ce433a40c0739762', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 13:09:47', '2021-03-22 13:09:47', '2022-03-22 15:09:47'),
('eae980d2774a11352394010707fe421b406ca7765135e3e9ff595326efebfae7d719fe7b561b402a', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 13:01:40', '2021-03-22 13:01:40', '2022-03-22 15:01:40'),
('f007bc5c2ff68c452db64bbaca756417ba885325d2dda0f2dd31b45450ab5aeea2a1371b32e206e2', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 12:38:03', '2021-03-22 12:38:03', '2022-03-22 14:38:03'),
('f3b9f7ea9a437f80e2f56648f6b873a2c3b04a8ba4e59515a602193a67c0182def6e132dba774bc5', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 12:45:20', '2021-03-22 12:45:20', '2022-03-22 14:45:20'),
('f4684b90a0be5393284354c5113ad1868a24bf1e7e482b78523548c8c31caec267abe9f4d3c50920', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 18:02:02', '2021-03-22 18:02:02', '2022-03-22 20:02:02'),
('f83698e3b53d596a95b69dd9eb9c3d66f6e4b38c8850d6fc4531e7490379614a7162e2ea339623de', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 12:50:25', '2021-03-22 12:50:25', '2022-03-22 14:50:25'),
('f9735f182a5f846b9155d1d423dd4626d0fe4662157f23b7ac2b70fcb9ec4bd39b2e9a4c2820e2b1', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 13:08:01', '2021-03-22 13:08:01', '2022-03-22 15:08:01'),
('f9e2d9b37ae1dc5118a014e04dadad924b2f7609e5d2958c6804590d3ffb4630733bbce9373a4ed5', 19, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 17:41:38', '2021-03-22 17:41:38', '2022-03-22 19:41:38'),
('fca68cbe25183bec8f4abea940748b02d6373142f5f1961e3fd3319c764ce654ffbbd3f65bb26f23', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-03-22 13:05:50', '2021-03-22 13:05:50', '2022-03-22 15:05:50');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'DaUsmcbmDHp7I3EWi1Ylwfik9v8MqLw9lHqXHh4S', NULL, 'http://localhost', 1, 0, 0, '2021-03-21 15:08:59', '2021-03-21 15:08:59'),
(2, NULL, 'Laravel Password Grant Client', 'S4zbHXCH4odfbDvMYuUFNfnUrk3Cjr0Ck85EFejZ', 'users', 'http://localhost', 0, 1, 0, '2021-03-21 15:08:59', '2021-03-21 15:08:59');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-03-21 15:08:59', '2021-03-21 15:08:59');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'Pavlos', 'pavlostif@gmail.com', NULL, '$2y$10$qCDv4xujxiykRQ0IHs7xyOgsXBLulebBsFzBsEsIDTTCKrGRmiSQO', NULL, '2021-03-21 15:38:19', '2021-03-21 15:38:19'),
(7, 'Pavlos22', 'pavlostif23@gmail.com', NULL, '$2y$10$zM8hvE/t1ETgW6xPnUlxr.46tVYSx4u7hraKU2nLutsiCUPtXat0u', NULL, '2021-03-21 15:39:52', '2021-03-21 15:39:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
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
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
