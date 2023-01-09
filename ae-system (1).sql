-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2023 at 10:31 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ae-system`
--

-- --------------------------------------------------------

--
-- Table structure for table `canned_products`
--

CREATE TABLE `canned_products` (
  `generic_product` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `canned_products`
--

INSERT INTO `canned_products` (`generic_product`) VALUES
('SARDINES'),
('MEAT LOAF'),
('TUNA'),
('SAUSAGE'),
('CORNBEEF');

-- --------------------------------------------------------

--
-- Table structure for table `container_products`
--

CREATE TABLE `container_products` (
  `generic_product` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `container_products`
--

INSERT INTO `container_products` (`generic_product`) VALUES
('BOX'),
('PLASTICWARE'),
('BOTTLES'),
('VASE'),
('JARS');

-- --------------------------------------------------------

--
-- Table structure for table `craft_products`
--

CREATE TABLE `craft_products` (
  `generic_product` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `craft_products`
--

INSERT INTO `craft_products` (`generic_product`) VALUES
('TAPE'),
('SCISSORS'),
('BONDPAPER'),
('FOLDER'),
('GLUE');

-- --------------------------------------------------------

--
-- Table structure for table `essentials_products`
--

CREATE TABLE `essentials_products` (
  `generic_product` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `essentials_products`
--

INSERT INTO `essentials_products` (`generic_product`) VALUES
('MASKS'),
('SANITIZER'),
('GLOVES'),
('RAGS'),
('TISSUE');

-- --------------------------------------------------------

--
-- Table structure for table `expired_products`
--

CREATE TABLE `expired_products` (
  `product_id` int(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_exp` date NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `frozen_products`
--

CREATE TABLE `frozen_products` (
  `generic_product` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `frozen_products`
--

INSERT INTO `frozen_products` (`generic_product`) VALUES
('BACON'),
('CHICKEN'),
('HAM'),
('HOTDOG'),
('TOCCINO');

-- --------------------------------------------------------

--
-- Table structure for table `liquor_products`
--

CREATE TABLE `liquor_products` (
  `generic_product` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `liquor_products`
--

INSERT INTO `liquor_products` (`generic_product`) VALUES
('TEQUILLA'),
('RUM'),
('WHISKEY'),
('BEER'),
('WINE');

-- --------------------------------------------------------

--
-- Table structure for table `non_exp_category`
--

CREATE TABLE `non_exp_category` (
  `id` int(255) NOT NULL,
  `no_expCategs` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `non_exp_category`
--

INSERT INTO `non_exp_category` (`id`, `no_expCategs`) VALUES
(1, 'UTENSIL'),
(2, 'UTENSILS'),
(3, 'LIQUOR'),
(4, 'PDR CONDI'),
(5, 'ESSENTIALS'),
(6, 'ESSENTIAL'),
(7, 'LIQUORS'),
(8, 'CRAFTS'),
(9, 'CRAFT'),
(10, 'CONTAINER'),
(11, 'CONTAINERS'),
(12, 'TOY'),
(13, 'TOYS');

-- --------------------------------------------------------

--
-- Table structure for table `powder_condiments_products`
--

CREATE TABLE `powder_condiments_products` (
  `generic_product` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `powder_condiments_products`
--

INSERT INTO `powder_condiments_products` (`generic_product`) VALUES
('MSG'),
('PAPRIKA'),
('PEPPER'),
('SUGAR'),
('SALT');

-- --------------------------------------------------------

--
-- Table structure for table `productadd_logs`
--

CREATE TABLE `productadd_logs` (
  `product_id` int(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `date_added` date NOT NULL,
  `date_quantity_modifed` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productadd_logs`
--

INSERT INTO `productadd_logs` (`product_id`, `product_name`, `date_added`, `date_quantity_modifed`) VALUES
(202302, 'HAM', '2023-01-08', ''),
(202305, 'BACON', '2023-01-08', 'null'),
(202306, 'PENFOLDS', '2023-01-08', 'null'),
(202307, 'TUNA', '2023-01-08', 'null'),
(202308, '3 PLY', '2023-01-08', 'null'),
(202309, 'MASKS', '2023-01-08', 'null'),
(202310, 'CORNBEEF', '2023-01-08', 'null'),
(202311, 'SARDINES', '2023-01-08', 'null'),
(202312, 'HAM', '2023-01-09', 'null'),
(202313, 'BACON', '2023-01-09', 'null'),
(202314, 'TUNA', '2023-01-09', 'null'),
(202315, 'CHICKEN', '2023-01-09', 'null'),
(202316, 'BACON', '2023-01-09', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `productcategory`
--

CREATE TABLE `productcategory` (
  `product_categ` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productcategory`
--

INSERT INTO `productcategory` (`product_categ`) VALUES
('FROZEN'),
('CANNED'),
('SNACKS'),
('UTENSIL'),
('LIQUOR'),
('PDR CONDI'),
('ESSENTIAL'),
('CRAFT'),
('CONTAINER'),
('TOYS');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_brand` varchar(255) NOT NULL,
  `product_quantity` varchar(255) NOT NULL,
  `date_today` date NOT NULL,
  `product_exp` varchar(255) NOT NULL,
  `days_left` bigint(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `category`, `product_name`, `product_brand`, `product_quantity`, `date_today`, `product_exp`, `days_left`) VALUES
(202302, 'FROZEN', 'HAM', 'HOLIDAYS', '20', '2023-01-09', '2023-12-23', 348),
(202303, 'FROZEN', 'TOCCINO', 'YOUNGPORK', '150', '2023-01-09', '2023-12-23', 348),
(202304, 'FROZEN', 'CHICKEN', 'MAGNOLIA', '200', '2023-01-09', '2023-05-23', 134),
(202305, 'FROZEN', 'BACON', 'CDO', '20', '2023-01-09', '2023-12-23', 348),
(202307, 'CANNED', 'TUNA', '555', '100', '2023-01-09', '2023-12-23', 348),
(202309, 'ESSENTIAL', 'MASKS', '3 PLY', '200', '2023-01-09', '', 0),
(202310, 'CANNED', 'CORNBEEF', 'CDO', '299', '2023-01-09', '2023-02-10', 32),
(202311, 'CANNED', 'SARDINES', 'LIGO', '20', '2023-01-09', '2023-01-10', 1),
(202312, 'FROZEN', 'HAM', 'SAVERS', '20', '2023-01-09', '2023-12-23', 347),
(202313, 'FROZEN', 'BACON', 'TENDER', '20', '2023-01-09', '2023-12-23', 347),
(202314, 'CANNED', 'TUNA', 'CENTURY', '100', '2023-01-09', '2023-02-23', 44);

-- --------------------------------------------------------

--
-- Table structure for table `product_statistics`
--

CREATE TABLE `product_statistics` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_brand` varchar(255) NOT NULL,
  `product_sold` int(255) NOT NULL,
  `product_exp_qnt` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `snacks_products`
--

CREATE TABLE `snacks_products` (
  `generic_product` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `snacks_products`
--

INSERT INTO `snacks_products` (`generic_product`) VALUES
('CHIPS'),
('CEREAL'),
('BISCUITS'),
('BREAD'),
('CANDY');

-- --------------------------------------------------------

--
-- Table structure for table `toys_products`
--

CREATE TABLE `toys_products` (
  `generic_product` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `toys_products`
--

INSERT INTO `toys_products` (`generic_product`) VALUES
('ANIMALS'),
('ARMY'),
('PLUSHIES'),
('DOLL'),
('CAR');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_role` varchar(50) NOT NULL,
  `user_access_code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_role`, `user_access_code`) VALUES
(1, 'admin', 'admin123'),
(2, 'staff', 'staff123');

-- --------------------------------------------------------

--
-- Table structure for table `utensil_products`
--

CREATE TABLE `utensil_products` (
  `generic_product` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `utensil_products`
--

INSERT INTO `utensil_products` (`generic_product`) VALUES
('FORK'),
('SPOON'),
('KNIFE'),
('SPORK'),
('PLATES');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `expired_products`
--
ALTER TABLE `expired_products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `non_exp_category`
--
ALTER TABLE `non_exp_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productadd_logs`
--
ALTER TABLE `productadd_logs`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `expired_products`
--
ALTER TABLE `expired_products`
  MODIFY `product_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202308;

--
-- AUTO_INCREMENT for table `non_exp_category`
--
ALTER TABLE `non_exp_category`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202317;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
