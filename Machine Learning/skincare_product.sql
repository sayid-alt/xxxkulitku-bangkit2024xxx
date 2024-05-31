-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2024 at 11:27 AM
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
-- Database: `skincare_product`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `kategori_produk` varchar(100) NOT NULL,
  `jenis_kulit` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id_produk`, `nama_produk`, `kategori_produk`, `jenis_kulit`) VALUES
(1, 'Himalaya Purifying Neem Face Wash', 'Facewash', 'oily'),
(2, 'ElsheSkin Oily Cleanser Wash', 'Facewash', 'oily'),
(3, 'Acnes Natural Face Wash Oil Control', 'Facewash', 'oily'),
(4, 'Evershine Moringa Facial Wash', 'Facewash', 'oily'),
(5, 'Clean & Clear Deep Action Daily Pore Cleanser', 'Facewash', 'oily'),
(6, 'Biore Facial Foam Bright & Oil Clear', 'Facewash', 'oily'),
(7, 'Wardah Perfect Bright Creamy Foam Brightening + Oil Control', 'Facewash', 'oily'),
(8, 'Senka Acne Perfect Whip Facial Wash ', 'Facewash', 'oily'),
(9, 'COSRX Low pH Good Morning Gel Cleanser ', 'Facewash', 'oily'),
(10, 'Somethinc Ceramic Skin Saviour Moisturizer Gel', 'moisturizer', 'oily'),
(11, 'Azarine Active Bright Brightening Day Moisturiser', 'moisturizer', 'oily'),
(12, 'La Roche Posay Effaclar Duo+ Moisturizer Acne', 'moisturizer', 'oily'),
(13, 'Azarine Oil Free Brightening Daily Moisturizer', 'moisturizer', 'oily'),
(14, 'Emina Ms. Pimple Acne Solution Moisturizing Gel', 'moisturizer', 'oily'),
(15, 'Safi Acne Expert Soothing Gel Moisturizer Cream', 'moisturizer', 'oily'),
(16, 'ElsheSkin Hydra Boost Oil Free Moisturizer', 'moisturizer', 'oily'),
(17, 'Wardah Crystal Secret Refreshing Day Gel', 'moisturizer', 'oily'),
(18, 'Npure Centella Asiatica Toner ', 'Toner', 'oily'),
(19, 'Garnier Micellar Water Blue', 'Cleansing water', 'oily'),
(20, 'Erha Acneact Blemish Soothing', 'Serum', 'oily'),
(21, 'Scarlett Acne Serum', 'Serum', 'oily'),
(22, 'Emina Acne Serum', 'Serum', 'oily'),
(23, 'Avoskin Your Skin Bae Salicylic Acid 2% + Zinc 30 ml', 'Serum', 'oily'),
(24, 'SKINTIFIC 5X Ceramide Skin Barrier Repair ', 'Moisturizer', 'dry'),
(25, ' SOMETHINC Calm Down! Skinpair R-Cover Cream Moisturizer', 'Moisturizer', 'dry'),
(26, 'Skin Game Kind Moisturizer', 'Moisturizer', 'dry'),
(27, 'THE ORIGINOTE Hyalucera Moisturizer Gel', 'Moisturizer', 'dry'),
(28, 'L’Oreal Paris Revitalift Hyaluronic Acid Plumping Moisturizer Day Cream', 'Moisturizer', 'dry'),
(29, 'CeraVe daily moisturizing lotion', 'Moisturizer', 'dry'),
(30, 'Cetaphil Moisturizing Cream', 'Moisturizer', 'dry'),
(31, 'Sebamed Day Defence Cream Anti-Dry', 'Moisturizer', 'dry'),
(32, 'Laneige Water Bank Hydro Gel Cream EX', 'Moisturizer', 'dry'),
(33, ' Cetaphil Daily Oil-Free Hydrating Lotion With Hyaluronic Acid', 'Moisturizer', 'dry'),
(34, 'Erha Moisturizer for Very Dry Skin', 'Moisturizer', 'dry'),
(35, 'Somethinc Ceramic Skin Saviour Moisturizer Gel', 'Moisturizer', 'dry'),
(36, 'Wardah Hydra Rose Dewy Aqua Day Gel', 'Moisturizer', 'dry'),
(37, 'Sariayu Putih Langsat Skin Brightening Moisturizer', 'Moisturizer', 'dry'),
(38, 'Nivea Moisturizing Cream', 'Moisturizer', 'dry'),
(39, 'Hada Labo Perfect X Simple Perfect 3D Gel', 'Moisturizer', 'dry'),
(40, 'Garnier Micellar Oil-Infused Cleansing Water ', 'Cleansing water', 'dry'),
(41, 'NIVEA MicellAIR XPERT', 'Cleansing water', 'dry'),
(42, 'SENKA Perfect Whip Gentle Rose Facial Foam', 'Facewash', 'dry'),
(43, 'Wardah Hydrating Aloe Gel ', 'Facewash', 'dry'),
(44, 'The OriginoteCicamide Facial Cleanser', 'Facewash', 'dry'),
(45, 'CeraVe Hydrating Cleanser', 'Facewash', 'dry'),
(46, 'Glad2Glow Milk Amino Acid Gentle Cleanser Face Wash', 'Facewash', 'dry'),
(47, 'Whitelab Brightening Facial Wash', 'Facewash', 'dry'),
(48, 'HADA LABO Gokujyun Ultimate Moisturizing Face Wash', 'Facewash', 'dry'),
(49, 'Gentle Facial Wash Avoskin Natural Sublime Facial Cleanser', 'facewash', 'dry'),
(50, 'Avoskin Your Skin Bae Niacinamide 7% + Alpha Arbutin 1% + Kale productnation', 'serum', 'dry'),
(51, 'Avoskin Miraculous Refining Serum', 'serum', 'dry'),
(52, 'Innisfree Green Tea Seed Serum', 'serum', 'dry'),
(53, 'Erha 21 C Serum', 'serum', 'dry'),
(54, 'The Ordinary Hyaluronic Acid 2 + B5', 'serum', 'dry'),
(55, 'HYALuronic B5 Serum', 'serum', 'dry'),
(56, 'Wardah Hydra Rose Micro Gel Serum', 'serum', 'dry'),
(57, 'Trueve Vitamin C & Ceramide Brightening Serum', 'serum', 'dry'),
(58, 'Whitelab Brightening Face Serum', 'serum', 'dry'),
(59, 'Avoskin Natural Sublime Facial Cleanser', 'Facewash', 'normal'),
(60, 'Pigeon Facial Foam', 'Facewash', 'normal'),
(61, 'Azarine Active Bright Brightening', 'Facewash', 'normal'),
(62, 'Whitelab pH-Balanced Facial Cleanser', 'Facewash', 'normal'),
(63, 'The Originote Cicamide Facial Cleanser. ', 'Facewash', 'normal'),
(64, 'Cetaphil Gentle Skin Cleanser', 'Facewash', 'normal'),
(65, 'Somethinc Low pH Gentle Jelly Cleanser ', 'Facewash', 'normal'),
(66, 'Innisfree The Green Tea Seed Hyaluronic  ', 'serum ', 'normal'),
(67, 'La Roche Posay Cicaplast B5 Ultra Repair Serum 30 ml', 'serum ', 'normal'),
(68, 'Nature Republic Soothing & Moisture Aloe Vera 92% Soothing Ge ', 'moisturizer', 'normal'),
(69, 'Sebamed Moisturizing Cream productnation', 'moisturizer', 'normal'),
(70, 'Olay – Regenerist Whip UV', 'moisturizer', 'normal'),
(71, 'Wardah – Perfect Bright Moisturizer Normal Skin', 'moisturizer', 'normal'),
(72, 'Emina – Moist in a Bottle', 'moisturizer', 'normal'),
(73, 'The Body Shop – Aloe Soothing Moisture Lotion SPF 15', 'moisturizer', 'normal'),
(74, 'Cetaphil – Moisturizing Cream', 'moisturizer', 'normal'),
(75, 'Wardah Nature Daily Witch Hazel Purifying Moisturizer Gel', 'moisturizer', 'normal'),
(76, 'Hadalabo Gokyujun Ultimate Moisturizing Milk', 'moisturizer', 'normal'),
(77, 'Joylab Moisture Bomb Pudding Gel Creme', 'moisturizer', 'normal'),
(78, 'Cerave Moisturizing Cream', 'moisturizer', 'normal'),
(79, 'Something Ceramic Skin Saviour Moisturizer Gel', 'moisturizer', 'normal');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
