-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2018 at 10:04 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eshop`
--

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_03_29_215429_create_products_table', 2),
(4, '2018_03_30_072228_create_products_table', 3),
(5, '2018_03_31_003014_create_products_table', 4),
(6, '2018_04_03_134258_create_orders_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `user_id`, `cart`, `address`, `name`, `payment_id`) VALUES
(1, '2018-04-03 07:59:26', '2018-04-03 07:59:26', 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:3:{i:2;a:3:{s:3:\"qty\";i:1;s:5:\"price\";i:20;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagePath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:2;s:10:\"created_at\";N;s:10:\"updated_at\";N;s:9:\"imagePath\";s:47:\"http://d.gr-assets.com/books/1411114164l/33.jpg\";s:5:\"title\";s:17:\"Lord of the Rings\";s:11:\"description\";s:35:\"I found the movies to be better ...\";s:5:\"price\";i:20;}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:2;s:10:\"created_at\";N;s:10:\"updated_at\";N;s:9:\"imagePath\";s:47:\"http://d.gr-assets.com/books/1411114164l/33.jpg\";s:5:\"title\";s:17:\"Lord of the Rings\";s:11:\"description\";s:35:\"I found the movies to be better ...\";s:5:\"price\";i:20;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}i:3;a:3:{s:3:\"qty\";i:1;s:5:\"price\";i:45;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagePath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:3;s:10:\"created_at\";N;s:10:\"updated_at\";N;s:9:\"imagePath\";s:53:\"http://ecx.images-amazon.com/images/I/919-FLL37TL.jpg\";s:5:\"title\";s:40:\"A Song of Ice and Fire - Game of Thrones\";s:11:\"description\";s:27:\"No one is going to survive!\";s:5:\"price\";i:45;}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:3;s:10:\"created_at\";N;s:10:\"updated_at\";N;s:9:\"imagePath\";s:53:\"http://ecx.images-amazon.com/images/I/919-FLL37TL.jpg\";s:5:\"title\";s:40:\"A Song of Ice and Fire - Game of Thrones\";s:11:\"description\";s:27:\"No one is going to survive!\";s:5:\"price\";i:45;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}i:1;a:3:{s:3:\"qty\";i:1;s:5:\"price\";i:10;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagePath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:1;s:10:\"created_at\";N;s:10:\"updated_at\";N;s:9:\"imagePath\";s:57:\"http://www.revelationz.net/images/book/gameofthrones3.jpg\";s:5:\"title\";s:42:\"A Song of Ice and Fire - A Storm of Swords\";s:11:\"description\";s:27:\"No one is going to survive!\";s:5:\"price\";i:10;}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:1;s:10:\"created_at\";N;s:10:\"updated_at\";N;s:9:\"imagePath\";s:57:\"http://www.revelationz.net/images/book/gameofthrones3.jpg\";s:5:\"title\";s:42:\"A Song of Ice and Fire - A Storm of Swords\";s:11:\"description\";s:27:\"No one is going to survive!\";s:5:\"price\";i:10;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:3;s:10:\"totalPrice\";i:75;}', 'adsasd', 'Jenny Rosen', 'ch_1CCpfaLbldnWZjFTcpEYdfBo'),
(2, '2018-04-03 08:00:09', '2018-04-03 08:00:09', 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:2:{i:2;a:3:{s:3:\"qty\";i:1;s:5:\"price\";i:20;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagePath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:2;s:10:\"created_at\";N;s:10:\"updated_at\";N;s:9:\"imagePath\";s:47:\"http://d.gr-assets.com/books/1411114164l/33.jpg\";s:5:\"title\";s:17:\"Lord of the Rings\";s:11:\"description\";s:35:\"I found the movies to be better ...\";s:5:\"price\";i:20;}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:2;s:10:\"created_at\";N;s:10:\"updated_at\";N;s:9:\"imagePath\";s:47:\"http://d.gr-assets.com/books/1411114164l/33.jpg\";s:5:\"title\";s:17:\"Lord of the Rings\";s:11:\"description\";s:35:\"I found the movies to be better ...\";s:5:\"price\";i:20;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}i:1;a:3:{s:3:\"qty\";i:1;s:5:\"price\";i:10;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagePath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:1;s:10:\"created_at\";N;s:10:\"updated_at\";N;s:9:\"imagePath\";s:57:\"http://www.revelationz.net/images/book/gameofthrones3.jpg\";s:5:\"title\";s:42:\"A Song of Ice and Fire - A Storm of Swords\";s:11:\"description\";s:27:\"No one is going to survive!\";s:5:\"price\";i:10;}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:1;s:10:\"created_at\";N;s:10:\"updated_at\";N;s:9:\"imagePath\";s:57:\"http://www.revelationz.net/images/book/gameofthrones3.jpg\";s:5:\"title\";s:42:\"A Song of Ice and Fire - A Storm of Swords\";s:11:\"description\";s:27:\"No one is going to survive!\";s:5:\"price\";i:10;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:2;s:10:\"totalPrice\";i:30;}', 'adsasd', 'Jenny Rosen', 'ch_1CCpgHLbldnWZjFTFgtuLCFX'),
(3, '2018-04-03 11:13:33', '2018-04-03 11:13:33', 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:2:{i:2;a:3:{s:3:\"qty\";i:1;s:5:\"price\";i:20;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagePath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:2;s:10:\"created_at\";N;s:10:\"updated_at\";N;s:9:\"imagePath\";s:47:\"http://d.gr-assets.com/books/1411114164l/33.jpg\";s:5:\"title\";s:17:\"Lord of the Rings\";s:11:\"description\";s:35:\"I found the movies to be better ...\";s:5:\"price\";i:20;}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:2;s:10:\"created_at\";N;s:10:\"updated_at\";N;s:9:\"imagePath\";s:47:\"http://d.gr-assets.com/books/1411114164l/33.jpg\";s:5:\"title\";s:17:\"Lord of the Rings\";s:11:\"description\";s:35:\"I found the movies to be better ...\";s:5:\"price\";i:20;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}i:3;a:3:{s:3:\"qty\";i:1;s:5:\"price\";i:45;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagePath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:3;s:10:\"created_at\";N;s:10:\"updated_at\";N;s:9:\"imagePath\";s:53:\"http://ecx.images-amazon.com/images/I/919-FLL37TL.jpg\";s:5:\"title\";s:40:\"A Song of Ice and Fire - Game of Thrones\";s:11:\"description\";s:27:\"No one is going to survive!\";s:5:\"price\";i:45;}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:3;s:10:\"created_at\";N;s:10:\"updated_at\";N;s:9:\"imagePath\";s:53:\"http://ecx.images-amazon.com/images/I/919-FLL37TL.jpg\";s:5:\"title\";s:40:\"A Song of Ice and Fire - Game of Thrones\";s:11:\"description\";s:27:\"No one is going to survive!\";s:5:\"price\";i:45;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:2;s:10:\"totalPrice\";i:65;}', 'adsasd', 'Jenny Rosen', 'ch_1CCshRLbldnWZjFT1p3wNypH'),
(4, '2018-04-03 11:15:06', '2018-04-03 11:15:06', 2, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:2:{i:1;a:3:{s:3:\"qty\";i:1;s:5:\"price\";i:10;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagePath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:1;s:10:\"created_at\";N;s:10:\"updated_at\";N;s:9:\"imagePath\";s:57:\"http://www.revelationz.net/images/book/gameofthrones3.jpg\";s:5:\"title\";s:42:\"A Song of Ice and Fire - A Storm of Swords\";s:11:\"description\";s:27:\"No one is going to survive!\";s:5:\"price\";i:10;}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:1;s:10:\"created_at\";N;s:10:\"updated_at\";N;s:9:\"imagePath\";s:57:\"http://www.revelationz.net/images/book/gameofthrones3.jpg\";s:5:\"title\";s:42:\"A Song of Ice and Fire - A Storm of Swords\";s:11:\"description\";s:27:\"No one is going to survive!\";s:5:\"price\";i:10;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}i:3;a:3:{s:3:\"qty\";i:1;s:5:\"price\";i:45;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagePath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:3;s:10:\"created_at\";N;s:10:\"updated_at\";N;s:9:\"imagePath\";s:53:\"http://ecx.images-amazon.com/images/I/919-FLL37TL.jpg\";s:5:\"title\";s:40:\"A Song of Ice and Fire - Game of Thrones\";s:11:\"description\";s:27:\"No one is going to survive!\";s:5:\"price\";i:45;}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:3;s:10:\"created_at\";N;s:10:\"updated_at\";N;s:9:\"imagePath\";s:53:\"http://ecx.images-amazon.com/images/I/919-FLL37TL.jpg\";s:5:\"title\";s:40:\"A Song of Ice and Fire - Game of Thrones\";s:11:\"description\";s:27:\"No one is going to survive!\";s:5:\"price\";i:45;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:2;s:10:\"totalPrice\";i:55;}', 'das', 'Rafin', 'ch_1CCsixLbldnWZjFTZuwPu36I');

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `imagePath` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `created_at`, `updated_at`, `imagePath`, `title`, `description`, `price`) VALUES
(1, NULL, NULL, 'https://shop.wwe.com/on/demandware.static/-/Sites-main/default/dw4b7683c4/images/large/BB1005.jpg', 'Daniel Bryan \"Fight For Your Dreams\" Authentic T-Shirt', 'WWE Authentic Apparel - The Official Shirt of the WWE Superstars\r\nClassic Fit\r\n100% cotton\r\nScreen printed in the USA', 250),
(2, NULL, NULL, 'https://shop.wwe.com/on/demandware.static/-/Sites-main/default/dwe174f1bc/images/large/X10068.jpg', 'Finn Bálor \"OGBC Forever\" Authentic T-Shirt', 'WWE Authentic Apparel - The Official Shirt of the WWE Superstars\r\nClassic Fit\r\n100% cotton\r\nScreen printed in the USA', 320),
(3, NULL, NULL, 'https://shop.wwe.com/on/demandware.static/-/Sites-main/default/dwd7b83252/images/large/V30054.jpg', 'Seth Rollins \"Monday Night Rollins\" T-Shirt', 'WWE Authentic Apparel - The Official Shirt of the WWE Superstars\r\nClassic Fit\r\n100% cotton\r\nScreen printed in the USA', 420),
(4, NULL, NULL, 'https://shop.wwe.com/on/demandware.static/-/Sites-main/default/dw35267898/images/large/RF2063.jpg', 'AJ Styles \"The House that AJ Styles Built\" Black T-Shirt', 'WWE Authentic Apparel - The Official Shirt of the WWE Superstars\r\nClassic Fit\r\n100% cotton\r\nScreen printed in the USA', 560),
(5, NULL, NULL, 'https://shop.wwe.com/on/demandware.static/-/Sites-main/default/dwf62e53da/images/large/X10054.jpg', 'Finn Bàlor “Bàlor Club Forever” T-Shirt', '60% combed cotton/40% polyester jersey\r\n4.3-oz.\r\n32 singles for extreme softness\r\n1x1 baby rib-knit set-in collar', 1700);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'rafinationkhan@gmail.com', '$2y$10$XaGLmrj48B1vMo9WmISeeOY85E0IL7PRclmyi9z5qgoPeyKITQn72', 'FblybEUlMtdNflOxrbfcPtblzmgPf8Vkiqf0K4C4KEq1XZY5p8OuyKzidNjc', '2018-04-01 07:35:10', '2018-04-01 07:35:10'),
(2, 'orton@yahoo.com', '$2y$10$GnFgPEwfsmJXgvQHhQsSTuoEFh6HXnNHkG/pxFKmkqmZl7s3zHR2m', 'm5uT03v9O5r1PN1QuR1fy1lBcSQsdp5qxASZWycZkOOH5pKoOTbCDL9pwcKw', '2018-04-01 07:40:45', '2018-04-01 07:40:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
