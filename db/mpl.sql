-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2020 at 06:36 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mpl`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(6) NOT NULL,
  `category` varchar(20) NOT NULL,
  `purpose` enum('SELL','RENT','','') NOT NULL,
  `title` varchar(25) NOT NULL,
  `description` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `image` blob NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `category`, `purpose`, `title`, `description`, `price`, `image`, `created_at`) VALUES
(1, 'Books', 'RENT', 'c#', '2 year used', 250, 0x57494e5f32303139303930335f31325f34345f35395f50726f2e6a7067, '2020-03-25'),
(2, 'Stationary', 'SELL', 'Drafter', '2 month used,Good Condition', 100, '', '2020-03-25'),
(3, 'Stationary', 'SELL', 'Php', 'full Backend cover', 250, 0x646f776e6c6f61642e6a706567, '2020-03-26'),
(6, 'Books', 'RENT', 'c#', '2019 EDITIONS', 250, 0x646f776e6c6f6164312e6a666966, '2020-03-26'),
(7, 'Books', 'RENT', 'DWM', 'ASDDFH', 100, '', '2020-03-27'),
(8, 'Books', 'RENT', 'DWM', 'ASDDFH', 100, '', '2020-03-27'),
(10, 'Videos', 'SELL', 'Learn HTML', 'for more detail click on link https://www.w3schools.com/tags/tag_video.asp', 0, 0x7669642e6d7034, '2020-03-29'),
(11, 'Videos', '', 'How to increase your voca', '', 0, 0x486f7720746f20696e63726561736520796f757220766f636162756c6172792e6d7034, '2020-03-29'),
(12, 'Videos', '', 'How to increase your voca', '', 0, 0x486f7720746f20696e63726561736520796f757220766f636162756c6172792e6d7034, '2020-03-29'),
(13, 'Videos', 'SELL', 'IELTS   TOEFL Writing 5 C', 'Tofel', 0, 0x49454c5453202020544f45464c2057726974696e67203520436f6d6d6f6e204d697374616b6573202e7765626d, '2020-03-29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `address`, `created_at`) VALUES
(0, '0', '$2y$10$gKfSlfkXYumuA4BSBjtTY.MSDK1btk9/YjK4IkXXVmw12f.XKq.fK', '', '2020-03-28 21:33:50'),
(0, 'dhoni', '$2y$10$kN1ABNdOaMvlN6SVIvhrdeiaeJLYpAHF3ph2ptXtPLfBvmYn5AVwu', '', '2020-03-28 21:49:55'),
(0, 'vikas7', '$2y$10$lRPx.JM5uXvJBZT66lUbWeVy0B8vLu/cN7dH9FErYEP9lbMzBCSRy', '', '2020-03-28 21:59:23'),
(0, 'vikas', '$2y$10$WJyPlgbcMwcawe2Wv7BqR.eHg.sJTkkgmsQsohA62sUVc4.46afz.', '', '2020-03-29 22:08:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
