-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2025 at 08:08 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `favorite`
--

CREATE TABLE `favorite` (
  `Favorite_id` int(11) NOT NULL,
  `Watch_date` date DEFAULT NULL,
  `User_id` int(11) NOT NULL,
  `Movie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `favorite`
--

INSERT INTO `favorite` (`Favorite_id`, `Watch_date`, `User_id`, `Movie_id`) VALUES
(450001, '2021-12-12', 42016, 370002),
(450002, '2011-12-03', 42018, 370001);

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `Genre_id` int(11) NOT NULL,
  `Genre_list` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`Genre_id`, `Genre_list`) VALUES
(360001, 'Horror'),
(360002, 'Mystery');

-- --------------------------------------------------------

--
-- Table structure for table `movie_show`
--

CREATE TABLE `movie_show` (
  `Movie_id` int(11) NOT NULL,
  `Release_date` date DEFAULT NULL,
  `Title` varchar(100) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Genre_id` int(11) NOT NULL,
  `Rating` decimal(3,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `movie_show`
--

INSERT INTO `movie_show` (`Movie_id`, `Release_date`, `Title`, `Description`, `Genre_id`, `Rating`) VALUES
(370001, '2025-01-01', 'Manuver', 'Lightborn', 360001, 9.5),
(370002, '2012-12-12', 'Kemerdekaan', 'Indonesia merdeka', 360002, 10.0);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Payment_id` int(11) NOT NULL,
  `User_id` int(11) NOT NULL,
  `Payment_Date` date DEFAULT NULL,
  `Transaksi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`Payment_id`, `User_id`, `Payment_Date`, `Transaksi_id`) VALUES
(38001, 42001, '2021-12-08', 41001),
(38002, 42002, '2021-12-09', 41002),
(38003, 42003, '2022-01-15', 41003),
(38004, 42004, '2022-02-10', 41004),
(38005, 42005, '2022-03-05', 41005),
(38006, 42006, '2022-04-20', 41006),
(38007, 42007, '2022-05-13', 41007),
(38008, 42008, '2022-06-08', 41008),
(38009, 42009, '2022-07-12', 41009),
(38010, 42010, '2022-08-25', 41010),
(38011, 42011, '2022-09-14', 41011),
(38012, 42012, '2022-10-18', 41012),
(38013, 42013, '2022-11-22', 41013),
(38014, 42014, '2022-12-07', 41014),
(38015, 42015, '2023-01-10', 41015),
(38016, 42016, '2023-02-11', 41016),
(38017, 42017, '2023-03-05', 41017),
(38018, 42018, '2023-04-20', 41018),
(38019, 42019, '2023-05-15', 41019),
(38020, 42020, '2023-06-22', 41020);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `Review_id` int(11) NOT NULL,
  `User_id` int(11) NOT NULL,
  `Movie_id` int(11) NOT NULL,
  `Rating` decimal(3,1) DEFAULT NULL,
  `Good_rating` text DEFAULT NULL,
  `Bad_rating` text DEFAULT NULL,
  `Review_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`Review_id`, `User_id`, `Movie_id`, `Rating`, `Good_rating`, `Bad_rating`, `Review_text`) VALUES
(390001, 42007, 470002, 10.0, 'y', 'n', 'Rekuest');

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `Subscription_id` int(11) NOT NULL,
  `Type_Standart` text DEFAULT NULL,
  `Type_Dasar` text DEFAULT NULL,
  `Type_Premium` text DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `User_id` int(11) NOT NULL,
  `Payment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`Subscription_id`, `Type_Standart`, `Type_Dasar`, `Type_Premium`, `Price`, `User_id`, `Payment_id`) VALUES
(40001, '-', '-', '✓', 186.00, 42001, 38001),
(40002, '-', '✓', '-', 65.00, 42002, 38002),
(40003, '✓', '-', '-', 120.00, 42003, 38003),
(40004, '-', '-', '✓', 186.00, 42004, 38004),
(40005, '-', '✓', '-', 65.00, 42005, 38005),
(40006, '✓', '-', '-', 120.00, 42006, 38006),
(40007, '-', '-', '✓', 186.00, 42007, 38007),
(40008, '-', '✓', '-', 65.00, 42008, 38008),
(40009, '✓', '-', '-', 120.00, 42009, 38009),
(40010, '-', '-', '✓', 186.00, 42010, 38010),
(40011, '-', '✓', '-', 65.00, 42011, 38011),
(40012, '✓', '-', '-', 120.00, 42012, 38012),
(40013, '-', '-', '✓', 186.00, 42013, 38013),
(40014, '-', '✓', '-', 65.00, 42014, 38014),
(40015, '✓', '-', '-', 120.00, 42015, 38015),
(40016, '-', '-', '✓', 186.00, 42016, 38016),
(40017, '-', '✓', '-', 65.00, 42017, 38017),
(40018, '✓', '-', '-', 120.00, 42018, 38018),
(40019, '-', '-', '✓', 186.00, 42019, 38019),
(40020, '-', '✓', '-', 65.00, 42020, 38020);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `Transaksi_id` int(11) NOT NULL,
  `Pembayaran` text NOT NULL,
  `Debit` text DEFAULT NULL,
  `Transfer` text DEFAULT NULL,
  `E_Wallet` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`Transaksi_id`, `Pembayaran`, `Debit`, `Transfer`, `E_Wallet`) VALUES
(41001, 'Cash', '✓', '-', '-'),
(41002, 'Cash', '-', '-', '✓'),
(41003, 'Cash', '-', '✓', '-'),
(41004, 'Cash', '-', '-', '✓'),
(41005, 'Cash', '✓', '-', '-'),
(41006, 'Cash', '-', '✓', '-'),
(41007, 'Cash', '-', '-', '✓'),
(41008, 'Cash', '-', '-', '✓'),
(41009, 'Cash', '-', '✓', '-'),
(41010, 'Cash', '✓', '-', '-'),
(41011, 'Cash', '-', '-', '✓'),
(41012, 'Cash', '✓', '-', '-'),
(41013, 'Cash', '-', '✓', '-'),
(41014, 'Cash', '-', '-', '✓'),
(41015, 'Cash', '✓', '-', '-'),
(41016, 'Cash', '-', '✓', '-'),
(41017, 'Cash', '✓', '-', '-'),
(41018, 'Cash', '-', '-', '✓'),
(41019, 'Cash', '-', '✓', '-'),
(41020, 'Cash', '-', '-', '✓');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_id` int(11) NOT NULL,
  `Firstname_User` varchar(45) DEFAULT NULL,
  `Lastname_User` varchar(45) DEFAULT NULL,
  `Username` varchar(45) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_id`, `Firstname_User`, `Lastname_User`, `Username`, `Email`, `Password`) VALUES
(42001, 'Riza', 'Benriya', 'rizabenriya', 'rizabenriya@gmail.com', 'a8f9g7k3'),
(42002, 'Raka', 'Buramayo', 'rakamayo', 'buramayoraka@gmail.com', 'k5t1x0h8'),
(42003, 'Dimas', 'Putra', 'dimasputra', 'dimasputra@gmail.com', 'p9r2l4q7'),
(42004, 'Arif', 'Pratama', 'arifpratama', 'arifpratama@gmail.com', 'w3x8n6t2'),
(42005, 'Nadia', 'Fathia', 'nadiafathia', 'nadiafathia@gmail.com', 'y7f5d3a9'),
(42006, 'Kevin', 'Santoso', 'kevinsantoso', 'kevinsantoso@gmail.com', 'j2k9t8p4'),
(42007, 'Dewi', 'Saraswati', 'dewisaras', 'dewisaraswati@gmail.com', 'm4n7x3y1'),
(42008, 'Bayu', 'Pamungkas', 'bayupam', 'bayupamungkas@gmail.com', 'b8f2r5q9'),
(42009, 'Siti', 'Nurhaliza', 'sitinh', 'sitinurhaliza@gmail.com', 'v3k7y6x5'),
(42010, 'Hendra', 'Wijaya', 'hendrawijaya', 'hendrawijaya@gmail.com', 'q9p2m4t1'),
(42011, 'Lina', 'Mahardika', 'linamahar', 'linamahardika@gmail.com', 't7y5f3k8'),
(42012, 'Fajar', 'Kurniawan', 'fajark', 'fajarkurniawan@gmail.com', 'n2m9k8p4'),
(42013, 'Eka', 'Pradipta', 'ekapra', 'ekapradipta@gmail.com', 'w1x6y7t3'),
(42014, 'Nina', 'Haryani', 'ninahary', 'ninaharyani@gmail.com', 'r9f8d5a3'),
(42015, 'Roni', 'Saputra', 'ronisap', 'ronisaputra@gmail.com', 'p4q9t2m7'),
(42016, 'Anita', 'Halim', 'anitah', 'anitahalim@gmail.com', 'k3v7x1y5'),
(42017, 'Farhan', 'Ridwan', 'farhanrid', 'farhanridwan@gmail.com', 'm9k2n4p8'),
(42018, 'Sarah', 'Alifa', 'sarahalifa', 'sarahalifa@gmail.com', 'b7t3y5f9'),
(42019, 'Andre', 'Prasetyo', 'andrepras', 'andreprasetyo@gmail.com', 'y8f2q4n6'),
(42020, 'Tina', 'Kusuma', 'tinakusuma', 'tinakusuma@gmail.com', 'w5p7r3k9');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`Favorite_id`),
  ADD KEY `fk_favorite_user1_idx` (`User_id`),
  ADD KEY `fk_favorite_movie_show1_idx` (`Movie_id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`Genre_id`);

--
-- Indexes for table `movie_show`
--
ALTER TABLE `movie_show`
  ADD PRIMARY KEY (`Movie_id`),
  ADD KEY `fk_Movie_Show_Genre_idx` (`Genre_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Payment_id`),
  ADD KEY `fk_Payment_Transaksi_idx` (`Transaksi_id`),
  ADD KEY `fk_Payment_User_idx` (`User_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`Review_id`),
  ADD KEY `fk_Review_User_idx` (`User_id`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`Subscription_id`),
  ADD KEY `fk_Subscription_User_idx` (`User_id`),
  ADD KEY `fk_Subscription_Payment_idx` (`Payment_id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`Transaksi_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `favorite`
--
ALTER TABLE `favorite`
  ADD CONSTRAINT `fk_favorite_movie_show1` FOREIGN KEY (`Movie_id`) REFERENCES `movie_show` (`Movie_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_favorite_user1` FOREIGN KEY (`User_id`) REFERENCES `user` (`User_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `movie_show`
--
ALTER TABLE `movie_show`
  ADD CONSTRAINT `fk_Movie_Show_Genre` FOREIGN KEY (`Genre_id`) REFERENCES `genre` (`Genre_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `fk_Payment_Transaksi` FOREIGN KEY (`Transaksi_id`) REFERENCES `transaksi` (`Transaksi_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Payment_User` FOREIGN KEY (`User_id`) REFERENCES `user` (`User_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `fk_Review_User` FOREIGN KEY (`User_id`) REFERENCES `user` (`User_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `subscription`
--
ALTER TABLE `subscription`
  ADD CONSTRAINT `fk_Subscription_Payment` FOREIGN KEY (`Payment_id`) REFERENCES `payment` (`Payment_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Subscription_User` FOREIGN KEY (`User_id`) REFERENCES `user` (`User_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
