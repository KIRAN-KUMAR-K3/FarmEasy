-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2023 at 04:52 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `farmeasy`
--

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE `buyer` (
  `bid` int(100) NOT NULL,
  `bname` varchar(100) NOT NULL,
  `busername` varchar(100) NOT NULL,
  `bpassword` varchar(100) NOT NULL,
  `bhash` varchar(100) NOT NULL,
  `bemail` varchar(100) NOT NULL,
  `bmobile` varchar(100) NOT NULL,
  `baddress` text NOT NULL,
  `bactive` int(100) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `buyer`
--

INSERT INTO `buyer` (`bid`, `bname`, `busername`, `bpassword`, `bhash`, `bemail`, `bmobile`, `baddress`, `bactive`) VALUES
(1, 'Sujan P S', 'sujan', '$2y$10$bkTtUtAIsLc.FymoV6zRmOmOpaUfzaV4otXkCa0rxE.xjHu5ENAoe', '9b698eb3105bd82528f23d0c92dedfc0', 'sujanmayra6362@gmail.com', '6362567697', 'Chikkamagaluru', 0);

-- --------------------------------------------------------

--
-- Table structure for table `farmer`
--

CREATE TABLE `farmer` (
  `fid` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `fusername` varchar(255) NOT NULL,
  `fpassword` varchar(255) NOT NULL,
  `fhash` varchar(255) NOT NULL,
  `femail` varchar(255) NOT NULL,
  `fmobile` varchar(255) NOT NULL,
  `faddress` text NOT NULL,
  `factive` int(255) NOT NULL DEFAULT 0,
  `frating` int(11) NOT NULL DEFAULT 0,
  `picExt` varchar(255) NOT NULL DEFAULT 'png',
  `picStatus` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `farmer`
--

INSERT INTO `farmer` (`fid`, `fname`, `fusername`, `fpassword`, `fhash`, `femail`, `fmobile`, `faddress`, `factive`, `frating`, `picExt`, `picStatus`) VALUES
(4, 'Abhishek R Bhat', 'abhi61703', '$2y$10$4PG/jGBayuMTNlVtE1vtS.X/5qxwSlJ04J.9FEDw8U3p8eOGQaLtq', '38b3eff8baf56627478ec76a704e9b52', 'bhat61703@gmail.com', '9483929928', 'Moodbidri', 0, 0, 'png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `bid` int(10) NOT NULL,
  `pid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fproduct`
--

CREATE TABLE `fproduct` (
  `fid` int(255) NOT NULL,
  `pid` int(255) NOT NULL,
  `product` varchar(255) NOT NULL,
  `pcat` varchar(255) NOT NULL,
  `pinfo` text NOT NULL,
  `price` float NOT NULL,
  `pimage` varchar(255) NOT NULL DEFAULT 'blank.png',
  `picStatus` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `fproduct`
--

INSERT INTO `fproduct` (`fid`, `pid`, `product`, `pcat`, `pinfo`, `price`, `pimage`, `picStatus`) VALUES
(4, 31, 'Apple', 'Fruit', 'Treat yourself to the taste of crisp, juicy perfection with our delicious apples! These classic fruits are delicious and packed with essential nutrients such as Vitamin C, Vitamin K, and dietary fiber. Their sweet and slightly tangy flavor makes them the perfect addition to any dish, from salads to pies to sauces. Apples are also a great source of antioxidants, making them a perfect and healthy snack for you and your loved ones. Don\'t miss out on the delicious taste and health benefits of our fresh, hand-picked apples. Order yours today and taste the difference!', 125, 'Apple4.jpg', 1),
(4, 32, 'Banana', 'Fruit', 'Introducing the perfect addition to your breakfast or snack routine: fresh, ripe bananas! These naturally sweet and versatile fruits are packed with essential nutrients such as potassium, Vitamin B6, and Vitamin C. Whether you enjoy them on their own, in a smoothie, or as a topping for your cereal or yogurt, bananas are a convenient and delicious way to fuel your day. Plus, they\'re easy to take on the go and great for kids and adults alike. Don\'t miss out on the many health benefits and great taste of bananas. Order yours today!', 50, 'Banana4.jpg', 1),
(4, 33, 'Mangoes', 'Fruit', 'Experience the taste of summer all year round with our succulent, juicy mangoes! These tropical delights are not only delicious but also packed with essential vitamins and minerals such as Vitamin C, Vitamin A, and potassium. Their unique sweet and tangy flavor makes them the perfect addition to any dish, from salads to smoothies to desserts. Mangoes are also a great source of antioxidants, making them a perfect and healthy snack for you and your loved ones. Don\'t miss out on the delicious taste and health benefits of our fresh, hand-picked mangoes. Order yours today and taste the difference!', 200, 'Mangoes4.png', 1),
(4, 34, 'Orange', 'Fruit', 'Introducing the ultimate in flavor and nutrition: our fresh, hand-picked oranges! These citrus fruits are not only delicious but also packed with Vitamin C, folate and antioxidants. Their bright, refreshing flavor makes them the perfect addition to any meal, from breakfast to lunch to dinner. Oranges are also a great source of hydration and perfect for on-the-go snacking. They are great for kids and adults alike, easy to peel and seedless. Don\'t miss out on the many health benefits and great taste of our oranges. Order yours today and taste the difference!', 70, 'Orange4.jpg', 1),
(4, 35, 'Watermelom', 'Fruit', '<p>Quench your thirst and satisfy your sweet tooth with our refreshing watermelons! These juicy fruits are not only delicious but also packed with essential vitamins and minerals such as Vitamin C, Vitamin A, and potassium. Their unique sweet and succulent flavor makes them the perfect addition to any dish, from salads to smoothies to desserts. Watermelons are also a great source of hydration, making them the perfect snack for hot summer days. They are great for kids and adults alike, easy to cut and seedless. Don&#39;t miss out on the delicious taste and health benefits of our fresh, hand-picked watermelons. Order yours today and taste the difference!</p>\r\n<quillbot-extension-portal></quillbot-extension-portal>', 30, 'Watermelom4.jpg', 1),
(4, 36, 'Pineapple', 'Fruit', '<p>Indulge in the tropical taste of our ripe and juicy pineapples! These sweet and tangy fruits are not only delicious but also packed with essential vitamins and minerals such as Vitamin C, Vitamin B1, and manganese. Their unique flavor makes them the perfect addition to any dish, from salsas to smoothies to cocktails. Pineapples are also a great source of antioxidants and anti-inflammatory enzymes, making them a perfect and healthy snack for you and your loved ones. Don&#39;t miss out on the delicious taste and health benefits of our fresh, hand-picked pineapples. Order yours today and taste the difference!</p>\r\n<quillbot-extension-portal></quillbot-extension-portal>', 40, 'Pineapple4.jpg', 1),
(4, 37, 'Tomato', 'Vegetable', '<p>Add some color and flavor to your meals with our fresh, vine-ripened tomatoes! These versatile vegetables are not only delicious but also packed with essential vitamins and minerals such as Vitamin C, Vitamin K, and lycopene. Their unique sweet and slightly acidic flavor makes them the perfect addition to any dish, from salads to sandwiches to sauces. Tomatoes are also a great source of antioxidants, making them a perfect and healthy addition to your diet. Don&#39;t miss out on the delicious taste and health benefits of our fresh, hand-picked tomatoes. Order yours today and taste the difference!</p>\r\n<quillbot-extension-portal></quillbot-extension-portal>', 20, 'Tomato4.jpg', 1),
(4, 38, 'Onion', 'Vegetable', '<p>Add some depth and flavor to your dishes with our fresh, sweet onions! These versatile vegetables are not only delicious but also packed with essential nutrients such as Vitamin C, Vitamin B6, and dietary fiber. Their unique sweet and slightly pungent flavor makes them the perfect addition to any dish, from soups to sandwiches to sauces. Onions are also a great source of antioxidants, making them a perfect and healthy addition to your diet. They are a staple ingredient in many cuisines, adding a depth of flavor to any dish. Don&#39;t miss out on the delicious taste and health benefits of our fresh, hand-picked onions. Order yours today and taste the difference!</p>\r\n<quillbot-extension-portal></quillbot-extension-portal>', 30, 'Onion4.jpg', 1),
(4, 39, 'Carrot', 'Vegetable', '<p>Add some color and crunch to your meals with our fresh, crisp carrots! These versatile vegetables are not only delicious but also packed with essential vitamins and minerals such as Vitamin A, Vitamin K, and potassium. Their unique sweet and slightly earthy flavor makes them the perfect addition to any dish, from salads to soups to side dishes. Carrots are also a great source of antioxidants, making them a perfect and healthy addition to your diet. They are also a great source of beta-carotene, a powerful antioxidant that promotes good vision. Don&#39;t miss out on the delicious taste and health benefits of our fresh, hand-picked carrots. Order yours today and taste the difference!</p>\r\n<quillbot-extension-portal></quillbot-extension-portal>', 80, 'Carrot4.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `pid` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `rating` int(10) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `tid` int(10) NOT NULL,
  `bid` int(10) NOT NULL,
  `pid` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `addr` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buyer`
--
ALTER TABLE `buyer`
  ADD PRIMARY KEY (`bid`),
  ADD UNIQUE KEY `bid` (`bid`);

--
-- Indexes for table `farmer`
--
ALTER TABLE `farmer`
  ADD PRIMARY KEY (`fid`),
  ADD UNIQUE KEY `fid` (`fid`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD KEY `bid` (`bid`);

--
-- Indexes for table `fproduct`
--
ALTER TABLE `fproduct`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `fid` (`fid`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`tid`),
  ADD KEY `bid` (`bid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buyer`
--
ALTER TABLE `buyer`
  MODIFY `bid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `farmer`
--
ALTER TABLE `farmer`
  MODIFY `fid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `fproduct`
--
ALTER TABLE `fproduct`
  MODIFY `pid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `tid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`bid`) REFERENCES `buyer` (`bid`) ON DELETE CASCADE;

--
-- Constraints for table `fproduct`
--
ALTER TABLE `fproduct`
  ADD CONSTRAINT `fproduct_ibfk_1` FOREIGN KEY (`fid`) REFERENCES `farmer` (`fid`) ON DELETE CASCADE;

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `fproduct` (`pid`) ON DELETE CASCADE;

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`bid`) REFERENCES `buyer` (`bid`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
