-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2018 at 10:05 AM
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
-- Database: `bondbook`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `created_at`, `updated_at`) VALUES
(1, 'Sports', '2018-03-24 14:31:10', '2018-03-24 14:31:10'),
(2, 'Fashion', '2018-03-24 14:31:29', '2018-03-24 14:31:29'),
(3, 'Tech', '2018-03-24 14:31:39', '2018-03-24 14:31:39'),
(5, 'Movies', '2018-03-24 14:32:34', '2018-03-24 14:32:34'),
(6, 'WWE', '2018-03-24 14:32:37', '2018-03-24 14:32:37'),
(7, 'TV Shows', '2018-03-24 14:32:41', '2018-03-24 14:32:41'),
(8, 'Travel', '2018-03-24 14:34:48', '2018-03-24 14:34:48');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dislikes`
--

CREATE TABLE `dislikes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2018_03_23_213826_create_posts_table', 2),
(4, '2018_03_23_213916_create_profiles_table', 2),
(5, '2018_03_23_214008_create_categories_table', 2),
(6, '2018_03_23_214038_create_comments_table', 2),
(7, '2018_03_23_214110_create_likes_table', 2),
(8, '2018_03_23_214131_create_dislikes_table', 2);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `post_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `post_title`, `post_body`, `category_id`, `post_image`, `created_at`, `updated_at`) VALUES
(1, 1, 'WPBeginner» Ultimate Guide: How to Start a WordPress Blog (Step by Step) Ultimate Guide: How to Start a WordPress Blog (Step by Step)', 'WPBeginner» Ultimate Guide: How to Start a WordPress Blog (Step by Step)\r\nUltimate Guide: How to Start a WordPress Blog (Step by Step)\r\nLast updated on February 16th, 2018 by Editorial Staff\r\n32.8k Shares\r\nShare\r\nTweet\r\nShare\r\n\r\nDo you want to start a WordPress blog the right way? We know that starting a blog can be a terrifying thought specially when you are not geeky. Guess what – you are not alone. Having helped over 130,000+ users start a blog, we have decided to create the most comprehensive guide on how to start a WordPress blog without any technical knowledge.\r\n\r\nWhat do you need to start a WordPress blog?\r\n\r\nThere are three things you need to start a WordPress blog:\r\n\r\n    A domain name idea (this will be the name of your blog i.e wpbeginner.com)\r\n    A web hosting account (this is where your website live on the internet)\r\n    Your undivided attention for 30 minutes.\r\n\r\nYes, you read it right. You can start a blog from scratch in less than 30 minutes, and we will walk you through the whole process, step by step.\r\n\r\nIn this tutorial, we will cover:\r\n\r\n    How to Register a Domain Name for Free\r\n    How to Choose the Best Web Hosting\r\n    How to Install WordPress\r\n    How to Change Your Theme\r\n    How to Write Your First Blog Post\r\n    How to Customize WordPress with Plugins\r\n    How to Make Money From Your Blog\r\n    Resources to Learn and Master WordPress', 3, 'http://127.0.0.1:8000/posts/startawpblog.jpg', '2018-03-26 15:27:09', '2018-03-26 15:27:09'),
(2, 1, 'Code quality tools in PHP to check and improve your Code', 'Oh no! Your boss asked you to fix a bug which crash the company’s website on production. As quick as a jaguar you open the classes responsible of the maelstrom.\r\n\r\nThey were coded by Dave, your colleague developer.\r\n\r\nThe classes are full of formatting errors, poor indentation and weird one letter variables. There are so many dependencies you need to scroll down for minutes to escape the bloated constructor.\r\n\r\nShacking, you open the unit tests to understand how it should work… but they don’t exist. Horror and misfortune!\r\n\r\nYou could ask Dave to come to your desk, yelling at him that you never saw anywhere such a crappy code, cursing him and his family for generations to come.\r\n\r\nHowever, since you are such a respectful human being, you know it’s not a good solution. Teaching instead of blaming always give better results.\r\n\r\nWith a calm worthy of a Zen monk, you first fix the bug driving your boss crazy with Dave’s help. Then, you decide to introduce to your team some code quality tools.\r\n\r\nYou’ve got the good approach dear reader: code quality tools are essential to write solid and error-free PHP code. It can help your colleagues detect defects in the codebase and teach them some key concepts.\r\n\r\nDon’t forget however that the advises and data they can provide won’t be appropriate everywhere. Your experience and your analysis skills are the one you should trust first.\r\n\r\nIf you are already bored by this article and just want to see a plain PHP tools list, you can directly jump to the reference list.\r\n\r\nObviously this article is meant to evolve depending on my recent findings.', 3, 'http://127.0.0.1:8000/posts/the-php-practitioner.jpg', '2018-03-26 15:52:30', '2018-03-27 03:34:53'),
(4, 2, 'Shane McMahon hospitalized with diverticulitis', 'Shane McMahon is currently recovering from acute diverticulitis and an umbilical hernia in a New York-area medical facility, WWE.com has learned.\r\n\r\nTwo weeks ago on SmackDown LIVE, McMahon announced he would be taking an indefinite leave of absence from his position as the blue brand’s Commissioner. Following that announcement, McMahon was brutally attacked by Kevin Owens and Sami Zayn. WWE medical staff initially diagnosed him with a laryngeal contusion and trapezius and rhomboid strains as a result of the beating. \r\n\r\nFollowing the vicious assault, McMahon went to the Caribbean with his family to rest and recuperate.  While there, Shane developed a massive infection due to acute diverticulitis and was hospitalized for several days in Antigua before being flown back to a New York-area hospital, where he is currently being treated with heavy doses of antibiotics. The doctors in New York have also discovered that Shane suffered an umbilical hernia during the attack, which will require surgery once the infection has been eradicated.\r\n\r\nStick with WWE.com for further updates on Shane McMahon’s status as they become available.', 6, 'http://127.0.0.1:8000/posts/20170719_ShaneAnnouncment--862cacc3b87480100ec70d729cbaad88.jpg', '2018-03-27 04:54:43', '2018-03-27 04:54:43'),
(5, 1, 'Daniel Bryan medically cleared to return to in-ring action', 'Following more than two years of extensive evaluations, four-time World Champion Daniel Bryan has been medically cleared to return to in-ring competition by leading neurosurgeons, neurologists and concussion experts, including Dr. Robert Cantu, Dr. Javier Cárdenas and Dr. Jeffrey Kutcher.\r\n \r\nBryan underwent a full review of his medical history and received comprehensive neurological and physical evaluations independent of WWE. He was cleared by each doctor as well as WWE’s Medical Director, Dr. Joseph Maroon.\r\n\r\nAfter enjoying numerous championship runs, battling in legendary rivalries as both a singles and tag team competitor and sparking the epic “Yes!” Movement, Bryan was forced to make an emotional decision to retire from competition in February 2016. Later that year, he became the SmackDown LIVE General Manager, where he has continued to be an active part of the blue brand. \r\n\r\nWhat will the future hold for WWE’s “Yes!” Man? Could we see a WrestleMania return? How will this affect his role as GM? Who will he look to face first? Find out as The Road to WrestleMania continues on SmackDown LIVE, tonight at 8/7 C.', 6, 'http://127.0.0.1:8000/posts/RAW_11142016dg_2261--0f2fe32c3a9a9133e97b868824f985b4.jpg', '2018-03-27 04:55:36', '2018-04-03 16:12:06'),
(6, 4, 'How to see the apps tracking you on Facebook and stop them', 'Facebook is currently embroiled in scandal after it was revealed that data firm Cambridge Analytica harvested the personal information of over 50 million users without their permission. In the light of this, you might be wondering if you can do something about apps like this taking your data. As a matter of fact, you can. We\'ll show you how.\r\n\r\n    It would be madness to trust Facebook in the future\r\n    Why Mark Zuckerberg isn\'t going to fix the problems with Facebook\r\n\r\nOne of the most disconcerting things about the Facebook privacy scandal is that Cambridge Analytica didn\'t get the data through a hack or by breaking the system, but instead through a legit Facebook app which collected the data of users, and also the data of all their friends.\r\nJump to:\r\n\r\n    How to see and control tracking apps on Facebook browser/desktop\r\n    How to see and control tracking apps on the Facebook mobile app\r\n\r\nWhen you download an app or sign into a website with Facebook, these companies can see certain information on your Facebook profile. For example, your email address, phone number, employment/education history and current location, depending on the individual app. The key thing that most people forget is, if you\'re sharing that data with friends, then apps used by those friends can also see that information.\r\n\r\nNow, certain sensitive data such as your name, your phone number, and your employer is encrypted by Facebook to protect your privacy, but that doesn\'t stop Facebook from selling that data in bulk to advertisers and other companies who use that data to target and track you and the population in general.\r\n\r\nSince Facebook profits from user data sharing, we can\'t necessarily leave it to the company to keep things as secure as we\'d like. So it\'s good practice to take a dive into the settings every once in a while and clean house. Here\'s how to take control of how Facebook apps use your data.\r\nHow to find and control the apps tracking you on Facebook\r\n\r\nThere are two ways you can access your Facebook account, with only slight differences in method, but we\'ll outline both step-by-step below:\r\nHow to find and stop the Facebook apps tracking you on desktop/web browser:\r\n\r\n    First, go to the arrow symbol on the top right of your Facebook page.\r\n    Select Settings from the drop down menu\r\n    Once you\'re in the settings, select Apps (should be on the left)\r\n    In Logged in with Facebook, you\'ll see the apps tracking you \r\n    Hit show all to see the full list (I had 47!)\r\n    Hover over the app to see your options—you can edit the app\'s permissions or remove it entirely\r\n    If you scroll down and explore the Settings > Apps section, you\'ll find more options. You can set Facebook to log in and play games anonymously, for example.\r\n    This is important: select Apps Others Use to limit the information your friends\' apps can get on you.', 3, 'http://127.0.0.1:8000/posts/fb.PNG', '2018-03-27 05:00:01', '2018-03-27 05:00:01'),
(7, 6, 'Cannes Film Festival Bans \"Ridiculous\" Red Carpet Selfies', 'Ahead of the 2018 Cannes Film Festival, Thierry Fremaux, festival director, has outlined a series of changes to this year’s proceedings. Fremaux has previously tried to curb the practice of selfie taking on the red carpet, but has now decided to ban self portraits and fan photographs, which he deems \"ridiculous and grotesque\", entirely.\r\n\r\n“On the red carpet, the trivial aspect and the slowing down provoked by the disorder which these selfies create tarnishes the quality of [the red-carpet experience] and of the festival as a whole,” he said in an interview with Le Film Francais.\r\n\r\nTo help “revamp the attractiveness of and gloss to gala evenings” it will also eliminate morning press conferences. Critics will see films in the Debussy theatre at the same time as guests inside the main auditorium will view the evening world premieres, in order to reduce early reviews that can make or break a film’s prospects. \r\n\r\nThis year’s festival, which is celebrating its 71st edition, will also begin a day earlier than in the past, on a Tuesday (May 8), in order to have the closing ceremony take place on a Saturday.', 2, 'http://127.0.0.1:8000/posts/gettyimages-684567942.jpg', '2018-03-27 05:02:45', '2018-03-27 05:02:45'),
(8, 5, 'Pacific Rim: Uprising Movie Review', 'Pacific Rim: Uprising Story: Jake Pentecost, son of Stacker Pentecost, leads a new generation of Jaeger pilots, against a new Kaiju threat.\r\n\r\nPacific Rim: Uprising Review: Picking up a decade after the events of its predecessor, ‘Pacific Rim: Uprising’ starts off with an intriguing angle – to explore life after a near global catastrophe. But it soon reverts to the old threats, as the Kaiju return to wreak havoc. There are more than a few new recruits this time around: Cailee Spaeny’s Amara Namani is a valuable addition and seems to be a promising young talent to watch out for. This can’t be said about Scott Eastwood who plays a guy so reminiscent of his father Clint Eastwood; you almost hope it’s a joke. It also doesn’t help that Nate Lambert has little to no chemistry with his co-pilot Jake Pentecost.\r\n\r\nThe usually charming John Boyega plays Jake who is trying to carve his own individuality, away from his father’s fame. However, there are none of the nuances of ‘identity crisis’ seen here. Sure, he eventually gives the rousing speech expected before an apocalyptic event, but it ends up being too little, too late. Charlie Day is back as Dr Newton Geiszler, and his character is given a lot more to do beyond a nerdy and comical genius, but the transition feels rather convenient than justified. Burn Gorman’s Dr Hermann Gotliebb seems to be merely going through the motions.\r\n\r\nThe humour in this sequel is terribly forced as it focuses mostly on franchise-building pegs at the cost of storytelling basics. The movie seems hellbent on reminding you that it’s an action blockbuster every 5 minutes or so with battle sequences that jump right off the screen, as they should in 3D. This is the only reason to watch this on the biggest screen around. Devoid of the heart and soul of its predecessor, ‘Pacific Rim: Uprising’ aims to please hardcore fans of massive monster versus robot fights. Those seeking any depth in their action films, better look elsewhere.', 5, 'http://127.0.0.1:8000/posts/20180326-pacific-rim-uprising-danh-bai-black-panther-tai-phong-ve-trong-nuoc-1.jpg', '2018-03-27 05:07:23', '2018-03-27 05:07:23'),
(9, 3, 'Is the British passport now the world\'s most expensive? It\'s not even close', 'The cost of obtaining a British passport rose today, with the fee for adults increasing to as much as £85 – or £177 for those who need their travel document urgently.\r\n\r\nYet the expense pales in comparison to those incurred in some other countries around the world.\r\n\r\nIn the UK, the charge for an online passport application has risen from £72.50 to £75.50, while postal applications have increased from £72.50 to £85. The cost of a child’s travel document has risen from £46.50 to £58.50 online and from £46 to £49 by post.\r\n\r\nBut the adult postal sum of £85 actually ranks among the world’s more affordable. \r\n\r\nIn Australia, for example, the cost of acquiring a passport stretches to AU$282 (up from AU$277 as of January 1), equating to around £158 and making it one of the most expensive passports in the world.\r\n\r\nNext, according to the New Daily, who conducted the research amid reports of the Australian government using passports as a “cash cow”, was Turkey, where a passport will set a citizen back the equivalent of £142.89. The Turkish travel document has long been renowned as one of the most costly.\r\n\r\nThe nation in third, Switzerland, is perhaps less surprising – it is widely regarded as being expensive for just about everything. It costs the Swiss almost £102 to get their hands on a new passport.\r\n\r\nA number of other countries come before we reach the UK, including New Zealand (£94), Canada (£90) and the US (£86.60).\r\n\r\nAnyone after a Singaporean travel document is in for a bargain, with a national passport costing just £44.', 8, 'http://127.0.0.1:8000/posts/32650451_EPA_BRITAIN-PASSPORTS-BACKLOG.jpg', '2018-03-27 05:08:50', '2018-03-27 05:08:50');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_pic` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `name`, `designation`, `profile_pic`, `created_at`, `updated_at`) VALUES
(1, 1, 'Rafin', 'Web Developer', 'http://127.0.0.1:8000/uploads/29251485_10215717030868040_933108404_o.jpg', '2018-03-24 16:23:59', '2018-03-24 16:23:59'),
(2, 2, 'Randy Orton', 'Journalist', 'http://127.0.0.1:8000/uploads/66d5235f498a206f6a4494fe54c911c0.jpg', '2018-03-25 05:07:05', '2018-03-25 05:07:05'),
(3, 3, 'Jack Wilshere', 'Traveler', 'http://127.0.0.1:8000/uploads/iPig5Y2R.jpg', '2018-03-25 05:07:49', '2018-03-25 05:07:49'),
(4, 4, 'Cesc Fabregas', 'Android Developer', 'http://127.0.0.1:8000/uploads/cesc.jpg', '2018-03-25 05:09:07', '2018-03-25 05:09:07'),
(5, 5, 'AJ Styles', 'Movie Critic', 'http://127.0.0.1:8000/uploads/8daeb4f947e8bb7243bfae509eeeb3e2.jpg', '2018-03-25 05:09:59', '2018-03-25 05:09:59'),
(6, 6, 'Oliver Giroud', 'Fashion Expert', 'http://127.0.0.1:8000/uploads/89b950dacb8c583c3d2c3e6da2e65563--mats-hummels-giroud.jpg', '2018-03-25 05:10:51', '2018-03-25 05:10:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rafin', 'rafinationkhan@gmail.com', '$2y$10$2C6aPm3twCLwDmmq1LXZk.uewg6nKdpxJQFlqhK.Ig1hpTKqPN/1C', 'lAw54IcCyrTjzKKpWaIHlqFTaerGv8T6ZVkHRuRdC0lD9zOXImXCHjhBB7B8', '2018-03-23 14:56:41', '2018-03-23 14:56:41'),
(2, 'Randy', 'orton@yahoo.com', '$2y$10$MAyrnwhXCbEnLfdkUdNxXeASKIdzPmxzGaP1f18R2SoDPKCA7N4.a', 'oaPAcQXx6rz3ooRN9Zihu9xcupk6NKRZ9mpuocwb2VNEvKK4ewsWR42ak95R', '2018-03-23 14:57:31', '2018-03-23 14:57:31'),
(3, 'Wilshere', 'superjack@yahoo.com', '$2y$10$jAqgCIyPcVwg2sfpqbAcouqoL.Wb9REtC3Yc5hxihhTnlLemtN02y', 'IDeE2KSGeH1b4YBlmaoqfhg0bUpQtqoWqiqHctKD0GYtvBeFYBN7UtpF21Dn', '2018-03-25 05:07:24', '2018-03-25 05:07:24'),
(4, 'Fabregas', 'cesc@yahoo.com', '$2y$10$NeBM5S9x043dLSaffGEhX.nHdv.m3e.q4CQIhf3aKIoH5qhnYm7L2', 'BILfasnru6omN0dNglXf2VGt5TYq2QehELoioqNn0HdBT9Ye86fNv0e4FOf7', '2018-03-25 05:08:20', '2018-03-25 05:08:20'),
(5, 'AJ Styles', 'ajstyles@yahoo.com', '$2y$10$3zvx46Bf.bSdVH/NRwRi3.xK.fheXOxGLP/OXbJ5/Y/sdqSbpmU/W', '04LoD1y00OKYpd7toLe7WQ2IfOJRjqH9pjZPgJstfzdSePx1pIfnDD4NTi2H', '2018-03-25 05:09:37', '2018-03-25 05:09:37'),
(6, 'Olivier Giroud', 'giroud@yahoo.com', '$2y$10$7xsC5N/GZ5/vrDiTKSIEvOSXrjNYDSD5ijdFkUsOJlC5UkHqNxEKu', 'uLxlEDH3RbaGneKFkgZjgliv2MNwiyh7T5aH2A19or7ZoUIBd8yBTGvz1FMY', '2018-03-25 05:10:20', '2018-03-25 05:10:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dislikes`
--
ALTER TABLE `dislikes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dislikes`
--
ALTER TABLE `dislikes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
