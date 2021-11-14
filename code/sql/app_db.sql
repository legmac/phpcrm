-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: db:3306
-- Generation Time: Nov 14, 2021 at 03:57 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `url_key` varchar(255) NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `content` text,
  `description` varchar(1024) DEFAULT NULL,
  `published_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `title`, `url_key`, `image_path`, `content`, `description`, `published_date`) VALUES
(6, 'Hello World', 'hello-world', NULL, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', 'My first blog post', '2020-12-05 12:00:00'),
(7, 'Second post', 'second-post', NULL, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English.', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English.', '2020-12-09 12:00:00'),
(8, 'My third post', 'my-third-post', NULL, 'There are many variations of passages of Lorem Ipsum available', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', '2020-12-10 12:00:00'),
(9, '6blog', '6blog', NULL, 'adscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdf', 'adscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdf', '2021-11-14 15:28:22'),
(10, '7blog', '7blog', NULL, 'adscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdf', 'adscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdf', '2021-11-14 15:28:22'),
(11, '8blog', '8blog', NULL, 'adscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdf', 'adscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdf', '2021-11-14 15:28:22'),
(12, '9blog', '9blog', NULL, 'adscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdf', 'adscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdf', '2021-11-14 15:28:22'),
(13, '10blog', '10blog', NULL, 'adscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdf', 'adscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdf', '2021-11-14 15:28:22'),
(14, '11blog', '11blog', 'public/images/christmas.png', 'adscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdf', 'adscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdfadscvzsdvsdf', '2021-11-14 15:28:22');

-- --------------------------------------------------------

--
-- Table structure for table `zxc`
--

CREATE TABLE `zxc` (
  `a` int(11) NOT NULL,
  `s` int(11) NOT NULL,
  `x` int(11) NOT NULL,
  `x1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD UNIQUE KEY `url_key` (`url_key`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
