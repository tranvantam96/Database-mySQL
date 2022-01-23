-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Jan 23, 2022 at 05:07 PM
-- Server version: 8.0.27
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Shop_clothes`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user_admin` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_admin` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_admin`, `password_admin`) VALUES
('VM3194123', 'Trantam96');

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id_ads` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id_ads`, `image`, `link`) VALUES
('ads1', 'IMG1', 'Link1'),
('ads2', 'IMG2', 'Link2'),
('ads3', 'IMG3', 'Link3');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id_bill` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_payment` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_customer` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_ship` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_buy` date NOT NULL,
  `date_sell` date NOT NULL,
  `status_bill` enum('Complete','Not yet','Processing') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('male','female') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id_bill`, `id_payment`, `id_customer`, `id_ship`, `date_buy`, `date_sell`, `status_bill`, `name`, `address`, `phone_number`, `email`, `gender`, `note`) VALUES
('Billid1', 'Pay1', 'C1', 'Ship1', '2022-01-10', '2022-01-11', 'Complete', 'Tran Van A', 'Ha Noi', '11111111', 'vanA_mail1', 'male', 'Done'),
('Billid10', 'Pay3', 'C3', 'Ship3', '2022-01-12', '2022-01-13', 'Processing', 'Tran Van J', 'Bac Giang', '11111120', 'vanJ_mail10', 'female', 'Waiting'),
('Billid11', 'Pay3', 'C3', 'Ship3', '2022-01-12', '2022-01-13', 'Processing', 'Tran Van K', 'Bac Giang', '11111121', 'vanK_mail11', 'male', 'Waiting'),
('Billid12', 'Pay3', 'C3', 'Ship3', '2022-01-12', '2022-01-13', 'Processing', 'Tran Van M', 'Bac Giang', '11111122', 'vanM_mail12', 'female', 'Waiting'),
('Billid2', 'Pay1', 'C1', 'Ship1', '2022-01-10', '2022-01-12', 'Complete', 'Tran Van B', 'Ha Noi', '11111112', 'vanB_mail2', 'female', 'Done'),
('Billid3', 'Pay1', 'C1', 'Ship1', '2022-01-10', '2022-01-13', 'Complete', 'Tran Van C', 'Ha Noi', '11111113', 'vanC_mail3', 'male', 'Done'),
('Billid4', 'Pay2', 'C1', 'Ship1', '2022-01-10', '2022-01-14', 'Complete', 'Tran Van D', 'Ha Noi', '11111114', 'vanD_mail4', 'female', 'Done'),
('Billid5', 'Pay2', 'C1', 'Ship1', '2022-01-11', '2022-01-12', 'Complete', 'Tran Van E', 'Ha Noi', '11111115', 'vanE_mail5', 'male', 'Done'),
('Billid6', 'Pay2', 'C2', 'Ship2', '2022-01-11', '2022-01-12', 'Complete', 'Tran Van F', 'Bac Ninh', '11111116', 'vanF_mail6', 'female', 'Done'),
('Billid7', 'Pay2', 'C2', 'Ship2', '2022-01-11', '2022-01-12', 'Complete', 'Tran Van G', 'Bac Ninh', '11111117', 'vanG_mail7', 'male', 'Done'),
('Billid8', 'Pay3', 'C2', 'Ship2', '2022-01-11', '2022-01-12', 'Complete', 'Tran Van H', 'Bac Ninh', '11111118', 'vanH_mail8', 'female', 'Done'),
('Billid9', 'Pay3', 'C3', 'Ship3', '2022-01-12', '2022-01-13', 'Not yet', 'Tran Van I', 'Bac Ninh', '11111119', 'vanI_mail9', 'male', 'Waiting');

-- --------------------------------------------------------

--
-- Table structure for table `bill_detail`
--

CREATE TABLE `bill_detail` (
  `id_bill` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_product` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NOT NULL,
  `cost` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bill_detail`
--

INSERT INTO `bill_detail` (`id_bill`, `id_product`, `quantity`, `cost`) VALUES
('Billid1', 'produc1', 5, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id_category` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_category` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id_category`, `name_category`) VALUES
('Cate1', 'Shirt'),
('Cate2', 'Trousers');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id_comments` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_customer` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_product` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_comments` date NOT NULL,
  `content_comments` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Customer`
--

CREATE TABLE `Customer` (
  `id_customer` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_customer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `username_customer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_customer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_customer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_customer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNumber_customer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender_customer` enum('male','female') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Customer`
--

INSERT INTO `Customer` (`id_customer`, `name_customer`, `username_customer`, `password_customer`, `address_customer`, `email_customer`, `phoneNumber_customer`, `gender_customer`) VALUES
('C1', 'Customer 1', 'Cus_user1', 'Cus_pass1', 'Cus_add1', 'Cus_mail1', '01111111', 'male'),
('C10', 'Customer 10', 'Cus_user10', 'Cus_pass10', 'Cus_add10', 'Cus_mail10', '01111120', 'female'),
('C2', 'Customer 2', 'Cus_user2', 'Cus_pass2', 'Cus_add2', 'Cus_mail2', '01111112', 'female'),
('C3', 'Customer 3', 'Cus_user3', 'Cus_pass3', 'Cus_add3', 'Cus_mail3', '01111113', 'male'),
('C4', 'Customer 4', 'Cus_user4', 'Cus_pass4', 'Cus_add4', 'Cus_mail4', '01111114', 'female'),
('C5', 'Customer 5', 'Cus_user5', 'Cus_pass5', 'Cus_add5', 'Cus_mail5', '01111115', 'male'),
('C6', 'Customer 6', 'Cus_user6', 'Cus_pass6', 'Cus_add6', 'Cus_mail6', '01111116', 'female'),
('C7', 'Customer 7', 'Cus_user7', 'Cus_pass7', 'Cus_add7', 'Cus_mail7', '01111117', 'male'),
('C8', 'Customer 8', 'Cus_user8', 'Cus_pass8', 'Cus_add8', 'Cus_mail8', '01111118', 'female'),
('C9', 'Customer 9', 'Cus_user9', 'Cus_pass9', 'Cus_add9', 'Cus_mail9', '01111119', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id_feedback` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_customer` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_feedback` date NOT NULL,
  `content_feedback` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id_feedback`, `id_customer`, `date_feedback`, `content_feedback`) VALUES
('Feed1', 'C1', '2022-01-23', 'Good'),
('Feed10', 'C10', '2022-02-01', 'Good'),
('Feed2', 'C2', '2022-01-24', 'Good'),
('Feed3', 'C3', '2022-01-25', 'Good'),
('Feed4', 'C4', '2022-01-26', 'Good'),
('Feed5', 'C5', '2022-01-27', 'Good'),
('Feed6', 'C6', '2022-01-28', 'Bad'),
('Feed7', 'C7', '2022-01-29', 'Bad'),
('Feed8', 'C8', '2022-01-30', 'Bad'),
('Feed9', 'C9', '2022-01-31', 'Good');

-- --------------------------------------------------------

--
-- Table structure for table `maker`
--

CREATE TABLE `maker` (
  `id_maker` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_maker` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `maker`
--

INSERT INTO `maker` (`id_maker`, `name_maker`) VALUES
('maker1', 'Owen'),
('maker2', 'Yody');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id_payment` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_payment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_payment` enum('Complete','Not yet','Processing') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id_payment`, `method_payment`, `status_payment`) VALUES
('Pay1', 'ATM', 'Complete'),
('Pay10', 'Money', 'Processing'),
('Pay2', 'ATM', 'Complete'),
('Pay3', 'ATM', 'Complete'),
('Pay4', 'ATM', 'Not yet'),
('Pay5', 'ATM', 'Not yet'),
('Pay6', 'Money', 'Not yet'),
('Pay7', 'Money', 'Not yet'),
('Pay8', 'Money', 'Processing'),
('Pay9', 'Money', 'Processing');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id_product` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_category` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_maker` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_product` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_input` date NOT NULL,
  `description_product` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity_product` int NOT NULL,
  `cost_product` bigint NOT NULL,
  `image_product` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_product` enum('Con','Het','Dang nhap') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id_product`, `id_category`, `id_maker`, `name_product`, `date_input`, `description_product`, `quantity_product`, `cost_product`, `image_product`, `status_product`) VALUES
('produc1', 'Cate1', 'maker1', 'Ao Polo', '2022-01-15', 'Mua xuan', 200, 300000, 'IMG1', 'Con'),
('produc10', 'Cate2', 'maker2', 'Vay', '2022-01-19', 'Mua he', 50, 400000, 'IMG10', 'Het'),
('produc11', 'Cate1', 'maker2', 'Ao Gio', '2022-01-20', 'Mua thu', 500, 400000, 'IMG11', 'Dang nhap'),
('produc12', 'Cate2', 'maker2', 'Quan dui', '2022-01-21', 'Mua dong', 300, 100000, 'IMG12', 'Dang nhap'),
('produc2', 'Cate2', 'maker1', 'Quan bo', '2022-01-16', 'Mua he', 200, 200000, 'IMG2', 'Con'),
('produc3', 'Cate1', 'maker1', 'Ao len', '2022-01-17', 'Mua thu', 200, 200000, 'IMG3', 'Con'),
('produc4', 'Cate2', 'maker1', 'Quan vai', '2022-01-18', 'Mua dong', 100, 400000, 'IMG4', 'Con'),
('produc5', 'Cate1', 'maker1', 'Ao thun', '2022-01-19', 'Mua xuan', 100, 500000, 'IMG5', 'Con'),
('produc6', 'Cate2', 'maker1', 'Quan tho', '2022-01-20', 'Mua he', 100, 500000, 'IMG6', 'Con'),
('produc7', 'Cate1', 'maker2', 'Ao Vest', '2022-01-16', 'Mua thu', 100, 1000000, 'IMG7', 'Het'),
('produc8', 'Cate2', 'maker2', 'Quan lot', '2022-01-17', 'Mua dong', 50, 50000, 'IMG8', 'Het'),
('produc9', 'Cate1', 'maker2', 'Ao Khoac', '2022-01-18', 'Mua xuan', 50, 1500000, 'IMG9', 'Het');

-- --------------------------------------------------------

--
-- Table structure for table `ship`
--

CREATE TABLE `ship` (
  `id_ship` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ship` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_ship` enum('Complete','Not yet','Processing') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship`
--

INSERT INTO `ship` (`id_ship`, `name_ship`, `status_ship`) VALUES
('Ship1', 'Ship_name1', 'Complete'),
('Ship2', 'Ship_name2', 'Not yet'),
('Ship3', 'Ship_name3', 'Processing');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_admin`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id_ads`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id_bill`),
  ADD KEY `id_payment` (`id_payment`),
  ADD KEY `id_customer` (`id_customer`),
  ADD KEY `id_ship` (`id_ship`);

--
-- Indexes for table `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD KEY `id_bill` (`id_bill`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id_comments`),
  ADD KEY `id_customer` (`id_customer`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `Customer`
--
ALTER TABLE `Customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id_feedback`),
  ADD KEY `id_customer` (`id_customer`);

--
-- Indexes for table `maker`
--
ALTER TABLE `maker`
  ADD PRIMARY KEY (`id_maker`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id_payment`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `id_category` (`id_category`),
  ADD KEY `id_maker` (`id_maker`);

--
-- Indexes for table `ship`
--
ALTER TABLE `ship`
  ADD PRIMARY KEY (`id_ship`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`id_payment`) REFERENCES `payment` (`id_payment`),
  ADD CONSTRAINT `bill_ibfk_2` FOREIGN KEY (`id_customer`) REFERENCES `Customer` (`id_customer`),
  ADD CONSTRAINT `bill_ibfk_3` FOREIGN KEY (`id_ship`) REFERENCES `ship` (`id_ship`);

--
-- Constraints for table `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD CONSTRAINT `bill_detail_ibfk_1` FOREIGN KEY (`id_bill`) REFERENCES `bill` (`id_bill`),
  ADD CONSTRAINT `bill_detail_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `Customer` (`id_customer`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`);

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `Customer` (`id_customer`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_category`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`id_maker`) REFERENCES `maker` (`id_maker`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
