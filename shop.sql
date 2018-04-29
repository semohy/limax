-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 24 Nis 2018, 17:40:08
-- Sunucu sürümü: 10.1.26-MariaDB
-- PHP Sürümü: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `shop`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cargo_company`
--

CREATE TABLE `cargo_company` (
  `company_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `logo1` varchar(255) NOT NULL,
  `sorting` int(11) NOT NULL,
  `admin_explain` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `cargo_company`
--

INSERT INTO `cargo_company` (`company_id`, `name`, `logo1`, `sorting`, `admin_explain`) VALUES
(1, 'sdfasdf w', '1521987405.jpg', 0, ''),
(2, 'Aras Kargo', '1522059509.jpg', 0, '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cargo_package`
--

CREATE TABLE `cargo_package` (
  `cargo_package_id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `name` text NOT NULL,
  `price` float NOT NULL,
  `price_extra` text NOT NULL,
  `free_amount_limit` int(11) NOT NULL,
  `summary` text NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `cargo_package`
--

INSERT INTO `cargo_package` (`cargo_package_id`, `code`, `name`, `price`, `price_extra`, `free_amount_limit`, `summary`, `content`) VALUES
(1, 151, '3241', 345.02, '', 0, '', ''),
(2, 152, 'dsfgsdfg f', 354, '', 0, '', ''),
(3, 153, 'dg', 34, '', 0, '', ''),
(4, 154, 'bbb', 3425, '', 0, '', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cargo_package_extend_location`
--

CREATE TABLE `cargo_package_extend_location` (
  `cargo_package_extend_location_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `location_group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `data_type` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `satisfaction` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `time_add` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `comments`
--

INSERT INTO `comments` (`comment_id`, `data_type`, `user_id`, `product_id`, `content`, `satisfaction`, `status`, `time_add`) VALUES
(2, 'store_product', 1, 7, 'Ayakkabı çok güzel . Hızlı ve özenli kargo için teşekkür ederiz.\r\n\r\nTeşekkür ederim.', 2, 1, 1523881738),
(15, 'store_product', 1, 7, 'df gdfsg sdf gsdfg', 1, 1, 1523887583),
(16, 'store_product', 1, 7, 'sdf sdf sdf sdf', 0, 1, 1523888026),
(17, 'store_product', 1, 5, 'dfs gsdfg sdfg', 0, 1, 1524136302);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `help`
--

CREATE TABLE `help` (
  `help_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `sef` text NOT NULL,
  `content` text NOT NULL,
  `question_answer` text NOT NULL,
  `sorting` int(11) NOT NULL,
  `time_add` int(11) NOT NULL,
  `time_edit` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `help`
--

INSERT INTO `help` (`help_id`, `title`, `sef`, `content`, `question_answer`, `sorting`, `time_add`, `time_edit`, `status`) VALUES
(2, 'asd fasdf', 'asd_fasdf', '<p>s fasdf asdf sdf asdf asdf sadf&nbsp;</p>', 'a:2:{i:0;a:2:{s:1:\"q\";s:1:\"1\";s:1:\"a\";s:2:\"11\";}i:1;a:2:{s:1:\"q\";s:1:\"2\";s:1:\"a\";s:2:\"22\";}}', 5, 1523606241, 1523607822, 1),
(3, 'Yardım Konusu 1', 'yardim_konusu_1', '<p>Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardı<strong>m İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Y</strong>ardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1</p>\r\n\r\n<p>Yardım İ&ccedil;erik<span style=\"color:#d35400\"> 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;</span>erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1</p>\r\n\r\n<p>Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1</p>\r\n\r\n<p>Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Y<span style=\"background-color:#27ae60\">ardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Y</span>ardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1</p>', 'a:0:{}', 0, 1523609815, 1523609815, 1),
(4, 'Yardım Konusu 1', 'yardim_konusu_1', '<p>Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardı<strong>m İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Y</strong>ardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1</p>\r\n\r\n<p>Yardım İ&ccedil;erik<span style=\"color:#d35400\"> 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;</span>erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1</p>\r\n\r\n<p>Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1</p>\r\n\r\n<p>Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Y<span style=\"background-color:#27ae60\">ardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Y</span>ardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1Yardım İ&ccedil;erik 1</p>', 'a:0:{}', 0, 1523609815, 1523609815, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `location_city`
--

CREATE TABLE `location_city` (
  `city_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `admin_explain` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `location_city`
--

INSERT INTO `location_city` (`city_id`, `country_id`, `name`, `admin_explain`) VALUES
(1, 215, 'Adana', ''),
(2, 215, 'Adıyaman', ''),
(3, 215, 'Afyonkarahisar', ''),
(4, 215, 'Ağrı', ''),
(5, 215, 'Aksaray', ''),
(6, 215, 'Amasya', ''),
(7, 215, 'Ankara', ''),
(8, 215, 'Antalya', ''),
(9, 215, 'Ardahan', ''),
(10, 215, 'Artvin', ''),
(11, 215, 'Aydın', ''),
(12, 215, 'Balıkesir', ''),
(13, 215, 'Bartın', ''),
(14, 215, 'Batman', ''),
(15, 215, 'Bayburt', ''),
(16, 215, 'Bilecik', ''),
(17, 215, 'Bingöl', ''),
(18, 215, 'Bitlis', ''),
(19, 215, 'Bolu', ''),
(20, 215, 'Burdur', ''),
(21, 215, 'Bursa', ''),
(22, 215, 'Çanakkale', ''),
(23, 215, 'Çankırı', ''),
(24, 215, 'Çorum', ''),
(25, 215, 'Denizli', ''),
(26, 215, 'Diyarbakır', ''),
(27, 215, 'Düzce', ''),
(28, 215, 'Edirne', ''),
(29, 215, 'Elazığ', ''),
(30, 215, 'Erzincan', ''),
(31, 215, 'Erzurum', ''),
(32, 215, 'Eskişehir', ''),
(33, 215, 'Gaziantep', ''),
(34, 215, 'Giresun', ''),
(35, 215, 'Gümüşhane', ''),
(36, 215, 'Hakkari', ''),
(37, 215, 'Hatay', ''),
(38, 215, 'Iğdır', ''),
(39, 215, 'Isparta', ''),
(40, 215, 'İstanbul', ''),
(41, 215, 'İzmir', ''),
(42, 215, 'Kahramanmaraş', ''),
(43, 215, 'Karabük', ''),
(44, 215, 'Karaman', ''),
(45, 215, 'Kars', ''),
(46, 215, 'Kastamonu', ''),
(47, 215, 'Kayseri', ''),
(48, 215, 'Kilis', ''),
(49, 215, 'Kırıkkale', ''),
(50, 215, 'Kırklareli', ''),
(51, 215, 'Kırşehir', ''),
(52, 215, 'Kocaeli', ''),
(53, 215, 'Konya', ''),
(54, 215, 'Kütahya', ''),
(55, 215, 'Malatya', ''),
(56, 215, 'Manisa', ''),
(57, 215, 'Mardin', ''),
(58, 215, 'Mersin', ''),
(59, 215, 'Muğla', ''),
(60, 215, 'Muş', ''),
(61, 215, 'Nevşehir', ''),
(62, 215, 'Niğde', ''),
(63, 215, 'Ordu', ''),
(64, 215, 'Osmaniye', ''),
(65, 215, 'Rize', ''),
(66, 215, 'Sakarya', ''),
(67, 215, 'Samsun', ''),
(68, 215, 'Şanlıurfa', ''),
(69, 215, 'Siirt', ''),
(70, 215, 'Sinop', ''),
(71, 215, 'Şırnak', ''),
(72, 215, 'Sivas', ''),
(73, 215, 'Tekirdağ', ''),
(74, 215, 'Tokat', ''),
(75, 215, 'Trabzon', ''),
(76, 215, 'Tunceli', ''),
(77, 215, 'Uşak', ''),
(78, 215, 'Van', ''),
(79, 215, 'Yalova', ''),
(80, 215, 'Yozgat', ''),
(81, 215, 'Zonguldak', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `location_country`
--

CREATE TABLE `location_country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `sorting` int(11) NOT NULL,
  `admin_explain` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `location_country`
--

INSERT INTO `location_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `postcode_required`, `sorting`, `admin_explain`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', 0, 0, ''),
(2, 'Albania', 'AL', 'ALB', 0, 0, ''),
(3, 'Algeria', 'DZ', 'DZA', 0, 0, ''),
(4, 'American Samoa', 'AS', 'ASM', 0, 0, ''),
(5, 'Andorra', 'AD', 'AND', 0, 0, ''),
(6, 'Angola', 'AO', 'AGO', 0, 0, ''),
(7, 'Anguilla', 'AI', 'AIA', 0, 0, ''),
(8, 'Antarctica', 'AQ', 'ATA', 0, 0, ''),
(9, 'Antigua and Barbuda', 'AG', 'ATG', 0, 0, ''),
(10, 'Argentina', 'AR', 'ARG', 0, 0, ''),
(11, 'Armenia', 'AM', 'ARM', 0, 0, ''),
(12, 'Aruba', 'AW', 'ABW', 0, 0, ''),
(13, 'Australia', 'AU', 'AUS', 0, 0, ''),
(14, 'Austria', 'AT', 'AUT', 0, 0, ''),
(15, 'Azerbaijan', 'AZ', 'AZE', 0, 0, ''),
(16, 'Bahamas', 'BS', 'BHS', 0, 0, ''),
(17, 'Bahrain', 'BH', 'BHR', 0, 0, ''),
(18, 'Bangladesh', 'BD', 'BGD', 0, 0, ''),
(19, 'Barbados', 'BB', 'BRB', 0, 0, ''),
(20, 'Belarus', 'BY', 'BLR', 0, 0, ''),
(21, 'Belgium', 'BE', 'BEL', 0, 0, ''),
(22, 'Belize', 'BZ', 'BLZ', 0, 0, ''),
(23, 'Benin', 'BJ', 'BEN', 0, 0, ''),
(24, 'Bermuda', 'BM', 'BMU', 0, 0, ''),
(25, 'Bhutan', 'BT', 'BTN', 0, 0, ''),
(26, 'Bolivia', 'BO', 'BOL', 0, 0, ''),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', 0, 0, ''),
(28, 'Botswana', 'BW', 'BWA', 0, 0, ''),
(29, 'Bouvet Island', 'BV', 'BVT', 0, 0, ''),
(30, 'Brazil', 'BR', 'BRA', 0, 0, ''),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', 0, 0, ''),
(32, 'Brunei Darussalam', 'BN', 'BRN', 0, 0, ''),
(33, 'Bulgaria', 'BG', 'BGR', 0, 0, ''),
(34, 'Burkina Faso', 'BF', 'BFA', 0, 0, ''),
(35, 'Burundi', 'BI', 'BDI', 0, 0, ''),
(36, 'Cambodia', 'KH', 'KHM', 0, 0, ''),
(37, 'Cameroon', 'CM', 'CMR', 0, 0, ''),
(38, 'Canada', 'CA', 'CAN', 0, 0, ''),
(39, 'Cape Verde', 'CV', 'CPV', 0, 0, ''),
(40, 'Cayman Islands', 'KY', 'CYM', 0, 0, ''),
(41, 'Central African Republic', 'CF', 'CAF', 0, 0, ''),
(42, 'Chad', 'TD', 'TCD', 0, 0, ''),
(43, 'Chile', 'CL', 'CHL', 0, 0, ''),
(44, 'China', 'CN', 'CHN', 0, 0, ''),
(45, 'Christmas Island', 'CX', 'CXR', 0, 0, ''),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', 0, 0, ''),
(47, 'Colombia', 'CO', 'COL', 0, 0, ''),
(48, 'Comoros', 'KM', 'COM', 0, 0, ''),
(49, 'Congo', 'CG', 'COG', 0, 0, ''),
(50, 'Cook Islands', 'CK', 'COK', 0, 0, ''),
(51, 'Costa Rica', 'CR', 'CRI', 0, 0, ''),
(52, 'Cote D\'Ivoire', 'CI', 'CIV', 0, 0, ''),
(53, 'Croatia', 'HR', 'HRV', 0, 0, ''),
(54, 'Cuba', 'CU', 'CUB', 0, 0, ''),
(55, 'Cyprus', 'CY', 'CYP', 0, 0, ''),
(56, 'Czech Republic', 'CZ', 'CZE', 0, 0, ''),
(57, 'Denmark', 'DK', 'DNK', 0, 0, ''),
(58, 'Djibouti', 'DJ', 'DJI', 0, 0, ''),
(59, 'Dominica', 'DM', 'DMA', 0, 0, ''),
(60, 'Dominican Republic', 'DO', 'DOM', 0, 0, ''),
(61, 'East Timor', 'TL', 'TLS', 0, 0, ''),
(62, 'Ecuador', 'EC', 'ECU', 0, 0, ''),
(63, 'Egypt', 'EG', 'EGY', 0, 0, ''),
(64, 'El Salvador', 'SV', 'SLV', 0, 0, ''),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', 0, 0, ''),
(66, 'Eritrea', 'ER', 'ERI', 0, 0, ''),
(67, 'Estonia', 'EE', 'EST', 0, 0, ''),
(68, 'Ethiopia', 'ET', 'ETH', 0, 0, ''),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', 0, 0, ''),
(70, 'Faroe Islands', 'FO', 'FRO', 0, 0, ''),
(71, 'Fiji', 'FJ', 'FJI', 0, 0, ''),
(72, 'Finland', 'FI', 'FIN', 0, 0, ''),
(74, 'France, Metropolitan', 'FR', 'FRA', 1, 0, ''),
(75, 'French Guiana', 'GF', 'GUF', 0, 0, ''),
(76, 'French Polynesia', 'PF', 'PYF', 0, 0, ''),
(77, 'French Southern Territories', 'TF', 'ATF', 0, 0, ''),
(78, 'Gabon', 'GA', 'GAB', 0, 0, ''),
(79, 'Gambia', 'GM', 'GMB', 0, 0, ''),
(80, 'Georgia', 'GE', 'GEO', 0, 0, ''),
(81, 'Germany', 'DE', 'DEU', 1, 0, ''),
(82, 'Ghana', 'GH', 'GHA', 0, 0, ''),
(83, 'Gibraltar', 'GI', 'GIB', 0, 0, ''),
(84, 'Greece', 'GR', 'GRC', 0, 0, ''),
(85, 'Greenland', 'GL', 'GRL', 0, 0, ''),
(86, 'Grenada', 'GD', 'GRD', 0, 0, ''),
(87, 'Guadeloupe', 'GP', 'GLP', 0, 0, ''),
(88, 'Guam', 'GU', 'GUM', 0, 0, ''),
(89, 'Guatemala', 'GT', 'GTM', 0, 0, ''),
(90, 'Guinea', 'GN', 'GIN', 0, 0, ''),
(91, 'Guinea-Bissau', 'GW', 'GNB', 0, 0, ''),
(92, 'Guyana', 'GY', 'GUY', 0, 0, ''),
(93, 'Haiti', 'HT', 'HTI', 0, 0, ''),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', 0, 0, ''),
(95, 'Honduras', 'HN', 'HND', 0, 0, ''),
(96, 'Hong Kong', 'HK', 'HKG', 0, 0, ''),
(97, 'Hungary', 'HU', 'HUN', 0, 0, ''),
(98, 'Iceland', 'IS', 'ISL', 0, 0, ''),
(99, 'India', 'IN', 'IND', 0, 0, ''),
(100, 'Indonesia', 'ID', 'IDN', 0, 0, ''),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', 0, 0, ''),
(102, 'Iraq', 'IQ', 'IRQ', 0, 0, ''),
(103, 'Ireland', 'IE', 'IRL', 0, 0, ''),
(104, 'Israel', 'IL', 'ISR', 0, 0, ''),
(105, 'Italy', 'IT', 'ITA', 0, 0, ''),
(106, 'Jamaica', 'JM', 'JAM', 0, 0, ''),
(107, 'Japan', 'JP', 'JPN', 0, 0, ''),
(108, 'Jordan', 'JO', 'JOR', 0, 0, ''),
(109, 'Kazakhstan', 'KZ', 'KAZ', 0, 0, ''),
(110, 'Kenya', 'KE', 'KEN', 0, 0, ''),
(111, 'Kiribati', 'KI', 'KIR', 0, 0, ''),
(112, 'North Korea', 'KP', 'PRK', 0, 0, ''),
(113, 'South Korea', 'KR', 'KOR', 0, 0, ''),
(114, 'Kuwait', 'KW', 'KWT', 0, 0, ''),
(115, 'Kyrgyzstan', 'KG', 'KGZ', 0, 0, ''),
(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', 0, 0, ''),
(117, 'Latvia', 'LV', 'LVA', 0, 0, ''),
(118, 'Lebanon', 'LB', 'LBN', 0, 0, ''),
(119, 'Lesotho', 'LS', 'LSO', 0, 0, ''),
(120, 'Liberia', 'LR', 'LBR', 0, 0, ''),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', 0, 0, ''),
(122, 'Liechtenstein', 'LI', 'LIE', 0, 0, ''),
(123, 'Lithuania', 'LT', 'LTU', 0, 0, ''),
(124, 'Luxembourg', 'LU', 'LUX', 0, 0, ''),
(125, 'Macau', 'MO', 'MAC', 0, 0, ''),
(126, 'FYROM', 'MK', 'MKD', 0, 0, ''),
(127, 'Madagascar', 'MG', 'MDG', 0, 0, ''),
(128, 'Malawi', 'MW', 'MWI', 0, 0, ''),
(129, 'Malaysia', 'MY', 'MYS', 0, 0, ''),
(130, 'Maldives', 'MV', 'MDV', 0, 0, ''),
(131, 'Mali', 'ML', 'MLI', 0, 0, ''),
(132, 'Malta', 'MT', 'MLT', 0, 0, ''),
(133, 'Marshall Islands', 'MH', 'MHL', 0, 0, ''),
(134, 'Martinique', 'MQ', 'MTQ', 0, 0, ''),
(135, 'Mauritania', 'MR', 'MRT', 0, 0, ''),
(136, 'Mauritius', 'MU', 'MUS', 0, 0, ''),
(137, 'Mayotte', 'YT', 'MYT', 0, 0, ''),
(138, 'Mexico', 'MX', 'MEX', 0, 0, ''),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', 0, 0, ''),
(140, 'Moldova, Republic of', 'MD', 'MDA', 0, 0, ''),
(141, 'Monaco', 'MC', 'MCO', 0, 0, ''),
(142, 'Mongolia', 'MN', 'MNG', 0, 0, ''),
(143, 'Montserrat', 'MS', 'MSR', 0, 0, ''),
(144, 'Morocco', 'MA', 'MAR', 0, 0, ''),
(145, 'Mozambique', 'MZ', 'MOZ', 0, 0, ''),
(146, 'Myanmar', 'MM', 'MMR', 0, 0, ''),
(147, 'Namibia', 'NA', 'NAM', 0, 0, ''),
(148, 'Nauru', 'NR', 'NRU', 0, 0, ''),
(149, 'Nepal', 'NP', 'NPL', 0, 0, ''),
(150, 'Netherlands', 'NL', 'NLD', 0, 0, ''),
(151, 'Netherlands Antilles', 'AN', 'ANT', 0, 0, ''),
(152, 'New Caledonia', 'NC', 'NCL', 0, 0, ''),
(153, 'New Zealand', 'NZ', 'NZL', 0, 0, ''),
(154, 'Nicaragua', 'NI', 'NIC', 0, 0, ''),
(155, 'Niger', 'NE', 'NER', 0, 0, ''),
(156, 'Nigeria', 'NG', 'NGA', 0, 0, ''),
(157, 'Niue', 'NU', 'NIU', 0, 0, ''),
(158, 'Norfolk Island', 'NF', 'NFK', 0, 0, ''),
(159, 'Northern Mariana Islands', 'MP', 'MNP', 0, 0, ''),
(160, 'Norway', 'NO', 'NOR', 0, 0, ''),
(161, 'Oman', 'OM', 'OMN', 0, 0, ''),
(162, 'Pakistan', 'PK', 'PAK', 0, 0, ''),
(163, 'Palau', 'PW', 'PLW', 0, 0, ''),
(164, 'Panama', 'PA', 'PAN', 0, 0, ''),
(165, 'Papua New Guinea', 'PG', 'PNG', 0, 0, ''),
(166, 'Paraguay', 'PY', 'PRY', 0, 0, ''),
(167, 'Peru', 'PE', 'PER', 0, 0, ''),
(168, 'Philippines', 'PH', 'PHL', 0, 0, ''),
(169, 'Pitcairn', 'PN', 'PCN', 0, 0, ''),
(170, 'Poland', 'PL', 'POL', 0, 0, ''),
(171, 'Portugal', 'PT', 'PRT', 0, 0, ''),
(172, 'Puerto Rico', 'PR', 'PRI', 0, 0, ''),
(173, 'Qatar', 'QA', 'QAT', 0, 0, ''),
(174, 'Reunion', 'RE', 'REU', 0, 0, ''),
(175, 'Romania', 'RO', 'ROM', 0, 0, ''),
(176, 'Russian Federation', 'RU', 'RUS', 0, 0, ''),
(177, 'Rwanda', 'RW', 'RWA', 0, 0, ''),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', 0, 0, ''),
(179, 'Saint Lucia', 'LC', 'LCA', 0, 0, ''),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', 0, 0, ''),
(181, 'Samoa', 'WS', 'WSM', 0, 0, ''),
(182, 'San Marino', 'SM', 'SMR', 0, 0, ''),
(183, 'Sao Tome and Principe', 'ST', 'STP', 0, 0, ''),
(184, 'Saudi Arabia', 'SA', 'SAU', 0, 0, ''),
(185, 'Senegal', 'SN', 'SEN', 0, 0, ''),
(186, 'Seychelles', 'SC', 'SYC', 0, 0, ''),
(187, 'Sierra Leone', 'SL', 'SLE', 0, 0, ''),
(188, 'Singapore', 'SG', 'SGP', 0, 0, ''),
(189, 'Slovak Republic', 'SK', 'SVK', 0, 0, ''),
(190, 'Slovenia', 'SI', 'SVN', 0, 0, ''),
(191, 'Solomon Islands', 'SB', 'SLB', 0, 0, ''),
(192, 'Somalia', 'SO', 'SOM', 0, 0, ''),
(193, 'South Africa', 'ZA', 'ZAF', 0, 0, ''),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', 0, 0, ''),
(195, 'Spain', 'ES', 'ESP', 0, 0, ''),
(196, 'Sri Lanka', 'LK', 'LKA', 0, 0, ''),
(197, 'St. Helena', 'SH', 'SHN', 0, 0, ''),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', 0, 0, ''),
(199, 'Sudan', 'SD', 'SDN', 0, 0, ''),
(200, 'Suriname', 'SR', 'SUR', 0, 0, ''),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', 0, 0, ''),
(202, 'Swaziland', 'SZ', 'SWZ', 0, 0, ''),
(203, 'Sweden', 'SE', 'SWE', 1, 0, ''),
(204, 'Switzerland', 'CH', 'CHE', 0, 0, ''),
(205, 'Syrian Arab Republic', 'SY', 'SYR', 0, 0, ''),
(206, 'Taiwan', 'TW', 'TWN', 0, 0, ''),
(207, 'Tajikistan', 'TJ', 'TJK', 0, 0, ''),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', 0, 0, ''),
(209, 'Thailand', 'TH', 'THA', 0, 0, ''),
(210, 'Togo', 'TG', 'TGO', 0, 0, ''),
(211, 'Tokelau', 'TK', 'TKL', 0, 0, ''),
(212, 'Tonga', 'TO', 'TON', 0, 0, ''),
(213, 'Trinidad and Tobago', 'TT', 'TTO', 0, 0, ''),
(214, 'Tunisia', 'TN', 'TUN', 0, 0, ''),
(215, 'Türkiye', 'TR', 'TUR', 0, 0, ''),
(216, 'Turkmenistan', 'TM', 'TKM', 0, 0, ''),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', 0, 0, ''),
(218, 'Tuvalu', 'TV', 'TUV', 0, 0, ''),
(219, 'Uganda', 'UG', 'UGA', 0, 0, ''),
(220, 'Ukraine', 'UA', 'UKR', 0, 0, ''),
(221, 'United Arab Emirates', 'AE', 'ARE', 0, 0, ''),
(222, 'United Kingdom', 'GB', 'GBR', 1, 0, ''),
(223, 'United States', 'US', 'USA', 0, 0, ''),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', 0, 0, ''),
(225, 'Uruguay', 'UY', 'URY', 0, 0, ''),
(226, 'Uzbekistan', 'UZ', 'UZB', 0, 0, ''),
(227, 'Vanuatu', 'VU', 'VUT', 0, 0, ''),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', 0, 0, ''),
(229, 'Venezuela', 'VE', 'VEN', 0, 0, ''),
(230, 'Viet Nam', 'VN', 'VNM', 0, 0, ''),
(231, 'Virgin Islands (British)', 'VG', 'VGB', 0, 0, ''),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', 0, 0, ''),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', 0, 0, ''),
(234, 'Western Sahara', 'EH', 'ESH', 0, 0, ''),
(235, 'Yemen', 'YE', 'YEM', 0, 0, ''),
(237, 'Democratic Republic of Congo', 'CD', 'COD', 0, 0, ''),
(238, 'Zambia', 'ZM', 'ZMB', 0, 0, ''),
(239, 'Zimbabwe', 'ZW', 'ZWE', 0, 0, ''),
(242, 'Montenegro', 'ME', 'MNE', 0, 0, ''),
(243, 'Serbia', 'RS', 'SRB', 0, 0, ''),
(244, 'Aaland Islands', 'AX', 'ALA', 0, 0, ''),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', 0, 0, ''),
(246, 'Curacao', 'CW', 'CUW', 0, 0, ''),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', 0, 0, ''),
(248, 'South Sudan', 'SS', 'SSD', 0, 0, ''),
(249, 'St. Barthelemy', 'BL', 'BLM', 0, 0, ''),
(250, 'St. Martin (French part)', 'MF', 'MAF', 0, 0, ''),
(251, 'Canary Islands', 'IC', 'ICA', 0, 0, ''),
(252, 'Ascension Island (British)', 'AC', 'ASC', 0, 0, ''),
(253, 'Kosovo, Republic of', 'XK', 'UNK', 0, 0, ''),
(254, 'Isle of Man', 'IM', 'IMN', 0, 0, ''),
(255, 'Tristan da Cunha', 'TA', 'SHN', 0, 0, ''),
(256, 'Guernsey', 'GG', 'GGY', 0, 0, ''),
(257, 'Jersey', 'JE', 'JEY', 0, 0, '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `location_extend_groups`
--

CREATE TABLE `location_extend_groups` (
  `extend_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `city_id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `location_groups`
--

CREATE TABLE `location_groups` (
  `group_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `sorting` int(11) NOT NULL,
  `admin_explain` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `store_cat`
--

CREATE TABLE `store_cat` (
  `cat_id` int(11) NOT NULL,
  `data_type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sef` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `content` longtext NOT NULL,
  `parent` int(11) NOT NULL,
  `parents` text NOT NULL,
  `attr_title` text NOT NULL,
  `meta_title` text NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keywords` text NOT NULL,
  `sort` int(11) NOT NULL,
  `admin_explain` text NOT NULL,
  `is_filter_color` int(11) NOT NULL,
  `is_filter_size` int(11) NOT NULL,
  `is_filter_brand` int(4) NOT NULL,
  `is_nav1` tinyint(4) NOT NULL,
  `filter_feature` text NOT NULL,
  `logo` int(11) NOT NULL,
  `data1` text NOT NULL,
  `data2` text NOT NULL,
  `data3` text NOT NULL,
  `data4` text NOT NULL,
  `data5` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `store_cat`
--

INSERT INTO `store_cat` (`cat_id`, `data_type`, `name`, `sef`, `title`, `content`, `parent`, `parents`, `attr_title`, `meta_title`, `meta_description`, `meta_keywords`, `sort`, `admin_explain`, `is_filter_color`, `is_filter_size`, `is_filter_brand`, `is_nav1`, `filter_feature`, `logo`, `data1`, `data2`, `data3`, `data4`, `data5`) VALUES
(17, 'color', 'Beyaz', '', '', '', 0, '', '', '', '', '', 11, '', 0, 0, 0, 0, '', 0, '#ffffff', '#c9c9c9', '', '', ''),
(18, 'feature_wrap', 'Taban Malzemesi', '', '', '', 0, '', '', '', '', '', 0, '', 0, 0, 0, 0, '', 0, 'a:2:{s:11:\"name_filter\";s:15:\"Taban Malzemesi\";s:9:\"name_view\";s:15:\"Taban Malzemesi\";}', '', '', '', ''),
(19, 'feature_value', 'Kauçuk', '', '', '', 18, '', '', '', '', '', 0, '', 0, 0, 0, 0, '', 0, '', '', '', '', ''),
(20, 'feature_value', 'Suni Malzeme', '', '', '', 18, '', '', '', '', '', 1, '', 0, 0, 0, 0, '', 0, '', '', '', '', ''),
(22, 'size_wrap', 'Ayakkabı Numaraları', '', '', '', 0, '', '', '', '', '', 0, '', 0, 0, 0, 0, '', 0, 'a:3:{s:12:\"title_select\";s:15:\"Numara seçiniz\";s:18:\"title_after_select\";s:6:\"Numara\";s:15:\"size_after_text\";s:6:\"numara\";}', '', '', '', ''),
(23, 'size_value', '40', '', '', '', 22, '', '', '', '', '', 5, '', 0, 0, 0, 0, '', 0, '', '', '', '', ''),
(24, 'size_value', '41', '', '', '', 22, '', '', '', '', '', 6, '', 0, 0, 0, 0, '', 0, '', '', '', '', ''),
(25, 'size_value', '42', '', '', '', 22, '', '', '', '', '', 7, '', 0, 0, 0, 0, '', 0, '', '', '', '', ''),
(26, 'size_value', '43', '', '', '', 22, '', '', '', '', '', 8, '', 0, 0, 0, 0, '', 0, '', '', '', '', ''),
(27, 'color', 'Kırmızı', '', '', '', 0, '', '', '', '', '', 6, '', 0, 0, 0, 0, '', 0, '#f40000', '#ca0000', '', '', ''),
(28, 'size_wrap', 'Standart Beden', '', '', '', 0, '', '', '', '', '', 0, '', 0, 0, 0, 0, '', 0, 'a:3:{s:12:\"title_select\";s:8:\"Standart\";s:18:\"title_after_select\";s:5:\"Beden\";s:15:\"size_after_text\";s:5:\"beden\";}', '', '', '', ''),
(29, 'size_value', 'Standart', '', '', '', 28, '', '', '', '', '', 0, '', 0, 0, 0, 0, '', 0, '', '', '', '', ''),
(32, 'cat', 'ERKEK', 'erkek', 'ERKEK', '', 0, '', '', 'ERKEK', '', '', 0, '', 0, 0, 0, 1, ',65,', 0, '', '', '', '', ''),
(33, 'cat', 'KADIN', 'kadin', 'KADIN', '', 0, '', '', 'KADIN', '', '', 0, '', 0, 0, 0, 1, '', 0, '', '', '', '', ''),
(34, 'cat', 'ÇOCUK', 'cocuk', 'ÇOCUK', '', 0, '', '', 'ÇOCUK', '', '', 0, '', 0, 0, 0, 1, '', 0, '', '', '', '', ''),
(35, 'cat', 'Ayakkabı', 'ayakkabi', 'Ayakkabı', '', 32, ',32,', '', 'Ayakkabı', '', '', 0, '', 1, 1, 1, 0, ',18,65,', 0, '', '', '', '', ''),
(36, 'cat', 'Dış Giyim', 'dis_giyim', 'Dış Giyim', '', 32, ',32,', '', 'Dış Giyim', '', '', 0, '', 0, 0, 0, 0, '', 0, '', '', '', '', ''),
(37, 'cat', 'Ayakkabı', 'ayakkabi', 'Ayakkabı', '', 33, ',33,', '', 'Ayakkabı', '', '', 0, '', 0, 0, 0, 0, ',18,65,', 0, '', '', '', '', ''),
(38, 'cat', 'Çanta', 'canta', 'Çanta', '', 33, ',33,', '', 'Çanta', '', '', 0, '', 0, 0, 0, 0, '', 0, '', '', '', '', ''),
(39, 'cat', 'Ayakkabı', 'ayakkabi', 'Ayakkabı', '', 34, ',34,', '', 'Ayakkabı', '', '', 0, '', 0, 0, 0, 0, ',18,65,', 0, '', '', '', '', ''),
(40, 'cat', 'Gömlek', 'gomlek', 'Gömlek', '', 34, ',34,', '', 'Gömlek', '', '', 0, '', 0, 0, 0, 0, '', 0, '', '', '', '', ''),
(41, 'cat', 'Koşu &amp; Yürüyüş', 'kosu_yuruyus', 'Koşu &amp; Yürüyüş', '', 35, ',35,32,', '', 'Koşu &amp; Yürüyüş', '', '', 0, '', 1, 1, 0, 0, ',18,65,', 0, '', '', '', '', ''),
(42, 'cat', 'Basketbol', 'basketbol', 'Basketbol', '', 35, ',35,32,', '', 'Basketbol', '', '', 0, '', 1, 1, 0, 0, ',18,65,', 0, '', '', '', '', ''),
(43, 'cat', 'Futbol', 'futbol', 'Futbol', '', 35, ',35,32,', '', 'Futbol', '', '', 0, '', 0, 0, 0, 0, ',18,65,', 0, '', '', '', '', ''),
(44, 'color', 'Pempe (pudra)', '', '', '', 0, '', '', '', '', '', 10, '', 0, 0, 0, 0, '', 0, '#ffbbee', '#ffa8a8', '', '', ''),
(45, 'color', 'Siyah', '', '', '', 0, '', '', '', '', '', 5, '', 0, 0, 0, 0, '', 0, '#303030', '#1b1b1b', '', '', ''),
(46, 'color', 'Yeşil', '', '', '', 0, '', '', '', '', '', 8, '', 0, 0, 0, 0, '', 0, '#7cef8b', '#34a420', '', '', ''),
(47, 'color', 'Mavi', '', '', '', 0, '', '', '', '', '', 7, '', 0, 0, 0, 0, '', 0, '#7db3ee', '#286bd0', '', '', ''),
(48, 'color', 'Turuncu', '', '', '', 0, '', '', '', '', '', 9, '', 0, 0, 0, 0, '', 0, '#ff8f59', '#f45000', '', '', ''),
(57, 'size_value', '35', '', '', '', 22, '', '', '', '', '', 0, '', 0, 0, 0, 0, '', 0, '', '', '', '', ''),
(58, 'size_value', '36', '', '', '', 22, '', '', '', '', '', 1, '', 0, 0, 0, 0, '', 0, '', '', '', '', ''),
(59, 'size_value', '37', '', '', '', 22, '', '', '', '', '', 2, '', 0, 0, 0, 0, '', 0, '', '', '', '', ''),
(60, 'size_value', '38', '', '', '', 22, '', '', '', '', '', 3, '', 0, 0, 0, 0, '', 0, '', '', '', '', ''),
(61, 'size_value', '39', '', '', '', 22, '', '', '', '', '', 4, '', 0, 0, 0, 0, '', 0, '', '', '', '', ''),
(62, 'size_value', '44', '', '', '', 22, '', '', '', '', '', 9, '', 0, 0, 0, 0, '', 0, '', '', '', '', ''),
(63, 'size_value', '45', '', '', '', 22, '', '', '', '', '', 10, '', 0, 0, 0, 0, '', 0, '', '', '', '', ''),
(64, 'size_value', '46', '', '', '', 22, '', '', '', '', '', 11, '', 0, 0, 0, 0, '', 0, '', '', '', '', ''),
(65, 'feature_wrap', 'Saya Malzemesi', '', '', '', 0, '', '', '', '', '', 0, '', 0, 0, 0, 0, '', 0, 'a:2:{s:11:\"name_filter\";s:14:\"Saya Malzemesi\";s:9:\"name_view\";s:14:\"Saya Malzemesi\";}', '', '', '', ''),
(66, 'feature_value', 'Deri', '', '', '', 65, '', '', '', '', '', 0, '', 0, 0, 0, 0, '', 0, '', '', '', '', ''),
(67, 'feature_value', 'Suni Malzeme', '', '', '', 65, '', '', '', '', '', 1, '', 0, 0, 0, 0, '', 0, '', '', '', '', ''),
(68, 'feature_value', 'Tekstil', '', '', '', 65, '', '', '', '', '', 2, '', 0, 0, 0, 0, '', 0, '', '', '', '', ''),
(70, 'brand', 'Adidas', 'adidas', '', '', 0, '', '', '', '', '', 6, 'asd fasdf', 0, 0, 0, 0, '', 0, 'adidas-1523970705.png', '', '', '', ''),
(73, 'brand', 'Nike', 'nike', '', '', 0, '', '', '', '', '', 0, '', 0, 0, 0, 0, '', 0, 'nike-1523971875.png', '', '', '', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `store_cat_extend_feature`
--

CREATE TABLE `store_cat_extend_feature` (
  `cat_extend_feature_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `feature_wrap_id` int(11) NOT NULL,
  `is_filter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `store_cat_extend_feature`
--

INSERT INTO `store_cat_extend_feature` (`cat_extend_feature_id`, `cat_id`, `feature_wrap_id`, `is_filter`) VALUES
(5, 35, 18, 1),
(6, 41, 18, 1),
(7, 42, 18, 1),
(8, 43, 18, 1),
(9, 37, 18, 1),
(10, 39, 18, 1),
(11, 35, 65, 1),
(12, 41, 65, 1),
(13, 42, 65, 1),
(14, 43, 65, 1),
(15, 37, 65, 1),
(16, 39, 65, 1),
(17, 32, 65, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `store_orders`
--

CREATE TABLE `store_orders` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `store_product`
--

CREATE TABLE `store_product` (
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `name` text NOT NULL,
  `sef` text NOT NULL,
  `title` text NOT NULL,
  `subtitle` text NOT NULL,
  `pricing_unit` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `price_old` text NOT NULL,
  `min_sale` float NOT NULL,
  `stock_total` int(11) NOT NULL,
  `img_thumb_1` text NOT NULL,
  `content_1` text NOT NULL,
  `content_2` text NOT NULL,
  `content_3` text NOT NULL,
  `cat_id` text NOT NULL,
  `size_wrap_id` int(11) NOT NULL,
  `count_manual_select` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `desi` float NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keywords` text NOT NULL,
  `count_gallery_images` int(11) NOT NULL,
  `count_comments` int(11) NOT NULL,
  `time_add` int(11) NOT NULL,
  `time_edit` int(11) NOT NULL,
  `admin_explain` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `store_product`
--

INSERT INTO `store_product` (`product_id`, `user_id`, `code`, `status`, `name`, `sef`, `title`, `subtitle`, `pricing_unit`, `price`, `price_old`, `min_sale`, `stock_total`, `img_thumb_1`, `content_1`, `content_2`, `content_3`, `cat_id`, `size_wrap_id`, `count_manual_select`, `weight`, `desi`, `meta_description`, `meta_keywords`, `count_gallery_images`, `count_comments`, `time_add`, `time_edit`, `admin_explain`) VALUES
(3, 0, '', 1, 'X Factor C9', 'x_factor_c9', 'Başlık Deneme', 's dasd ', 'Çift', 322, '', 1, 725, 'x_factor_c9-1523103681.jpg', '', 'sdf asd fsdf asd fsdf asd fsdf asd f', 'sdf asd fsdf asd fsdf asd fsdf asd fsdf asd fsdf asd f', ',22,24,25,26,45,27,46,48,32,35,41,42,43,33,37,34,39,19,18,67,65,68,', 22, 1, 400, 32, '', '', 2, 0, 1522743379, 1523361227, ''),
(4, 0, '', 1, 'Deneme 45', 'deneme_45', 'Deneme 45 Başlık', 'sd asd t ert ', 'Çift', 48, '90', 1, 3441, 'deneme_45-1523103668.jpg', '<p>sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;</p>\r\n\r\n<p>sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;</p>\r\n\r\n<p>sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;</p>\r\n\r\n<p>sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;</p>\r\n\r\n<p>sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;</p>\r\n\r\n<p>sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;</p>\r\n\r\n<p>sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;</p>\r\n\r\n<p>sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;</p>\r\n\r\n<p>sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;</p>\r\n\r\n<p>sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;</p>\r\n\r\n<p>sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;</p>\r\n\r\n<p>sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;</p>\r\n\r\n<p>sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;</p>\r\n\r\n<p>sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;</p>\r\n\r\n<p>sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;</p>\r\n\r\n<p>sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;</p>\r\n\r\n<p>sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;</p>\r\n\r\n<p>sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd<span style=\"color:#e74c3c\"> fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;</span></p>\r\n\r\n<p><span style=\"color:#e74c3c\">sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;</span></p>\r\n\r\n<p><span style=\"color:#e74c3c\">sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;</span></p>\r\n\r\n<p><span style=\"color:#e74c3c\">sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;s</span>dfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;</p>\r\n\r\n<p>sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg<strong> dsasd fadf&nbsp;</strong></p>\r\n\r\n<p><strong>sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;</strong></p>\r\n\r\n<p><strong>sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fad</strong>f&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;sdfg dsasd fadf&nbsp;</p>', 'dsa fasd fdasf d dsa fasd fdasf d dsa fasd fdasf d dsa fasd fdasf d dsa fasd fdasf d ', 'dsa fasd fdasf d dsa fasd fdasf d dsa fasd fdasf d dsa fasd fdasf d dsa fasd fdasf d ', ',22,61,24,26,45,48,32,35,41,42,37,33,39,34,20,18,66,65,67,', 22, 0, 600, 25, 'sdfg', '', 1, 0, 1522743569, 1523361213, ''),
(5, 0, '', 1, 'Ürün 1', 'urun_1', 'Ürün 1 Başlık', 'ert rt ', 'Adet', 424, '652', 1, 45, 'urun_1-1523103655.jpg', '<p>Lorem Ipsum dolor sit a<span style=\"color:#e74c3c\">met&nbsp;Lorem Ipsum dolor sit amet&nbsp;Lorem Ipsum dolor sit amet&nbsp;Lorem Ipsum d</span>olor sit amet&nbsp;Lorem Ipsum dolor sit amet&nbsp;Lorem Ipsum dolor sit amet&nbsp;</p>\r\n\r\n<p>Lorem Ipsum dolor sit amet&nbsp;Lorem Ipsum dolor sit amet&nbsp;</p>\r\n\r\n<p>Lorem Ipsum dolor si<strong>t amet&nbsp;Lorem Ipsum dolor sit amet&nbsp;Lore</strong>m Ipsum dolor sit amet&nbsp;Lorem Ipsum dolor sit amet&nbsp;Lorem Ipsum dolor sit amet&nbsp;</p>', 'Kısa açıklama 1', 'Kısa açıklama 2', ',28,29,45,27,46,44,17,32,35,41,42,43,36,37,33,19,18,20,66,65,67,68,', 28, 1, 45000, 54, 'Lorem Ipsum dolor sit amet Lorem Ipsum dolor sit amet Lorem Ipsum dolor sit amet Lorem Ipsum dolor sit amet Lorem Ipsum dolor sit amet Lorem Ipsum dolor sit amet \r\n\r\nLorem Ipsum dolor sit amet Lorem Ipsum dolor sit amet \r\n\r\nLorem Ipsum dolor sit amet', '', 4, 1, 1523005287, 1523361201, ''),
(6, 0, '', 1, 'Deneme', 'deneme', 'Deneme 1 Başlık', 'ter sdf', 'Adet', 660, '782', 1, 420, 'deneme-1524125310.jpg', '<p>f adsf adsg dfs gdf gsdfg&nbsp;f adsf adsg dfs gdf gsdfg&nbsp;f adsf adsg dfs gdf gsdfg&nbsp;f adsf adsg dfs gdf gsdfg&nbsp;f adsf adsg dfs gdf gsdfg&nbsp;</p>\r\n\r\n<p>f adsf adsg dfs gdf gsdfg&nbsp;</p>\r\n\r\n<p>f adsf adsg dfs gdf gsdfg&nbsp;f adsf adsg dfs gdf gsdfg&nbsp;f adsf adsg dfs gdf sf adsg dfs gdf gsdfg&nbsp;f adsf adsg dfs gdf sf adsg dfs gdf gsdfg&nbsp;f adsf adsg dfs gdf gsdfg&nbsp;f adsf adsg dfs gdf gsdfg&nbsp;f adsf adsg dfs gdf gsdfg&nbsp;</p>\r\n\r\n<p>f adsf adsg dfs gdf gsdfg&nbsp;</p>', '', '', ',28,29,45,27,46,48,44,17,73,32,35,41,42,43,36,19,18,67,65,68,', 28, 0, 45, 72, 'f adsf adsg dfs gdf gsdfg f adsf adsg dfs gdf gsdfg f adsf adsg dfs gdf gsdfg f adsf adsg dfs gdf gsdfg f adsf adsg dfs gdf gsdfg \r\n\r\nf adsf adsg dfs gdf gsdfg \r\n\r\nf adsf adsg dfs gdf gsdfg f adsf adsg dfs gdf gsdfg f adsf adsg dfs gdf sf adsg dfs gd', '', 3, 0, 1523005855, 1524125309, ''),
(7, 0, '', 1, 'Pembe Ayakkabı', 'pembe_ayakkabi', 'Pembe Ayakkabı', 'Pembe bayan ayakkabısı', 'Adet', 21, '960', 1, 6064, 'sdfasd_fasdf_d-1523103493.jpg', '<p>sd fdfgdfs gdfg sdf&nbsp;sd fdfgdfs gdfg sdf&nbsp;sd fdfgdfs gdfg sdf&nbsp;sd fdfgdfs gdfg sdf&nbsp;sd fdfgdfs gdfg sdf&nbsp;sd fdfgdfs gdfg sdf&nbsp;sd fdfgdfs gdfg sdf&nbsp;sd fdfgdfs gdfg sdf&nbsp;sd fdfgdfs gdfg sdf&nbsp;sd fdfgdfs gdfg sdf&nbsp;sd fdfgdfs gdfg sdf&nbsp;sd fdfgdfs gdfg sdf&nbsp;sd fdfgdfs gdfg sdf&nbsp;</p>', '', '', ',22,57,58,59,26,45,47,73,70,32,35,41,42,43,33,37,38,34,40,19,18,20,66,65,67,68,', 22, 1, 23, 42, 'sd fdfgdfs gdfg sdf sd fdfgdfs gdfg sdf sd fdfgdfs gdfg sdf sd fdfgdfs gdfg sdf sd fdfgdfs gdfg sdf sd fdfgdfs gdfg sdf sd fdfgdfs gdfg sdf sd fdfgdfs gdfg sdf sd fdfgdfs gdfg sdf sd fdfgdfs gdfg sdf sd fdfgdfs gdfg sdf sd fdfgdfs gdfg sdf sd fdfgdfs', '', 4, 3, 1523006448, 1524135799, '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `store_product_extend_cat`
--

CREATE TABLE `store_product_extend_cat` (
  `product_extend_cat_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `store_product_extend_cat`
--

INSERT INTO `store_product_extend_cat` (`product_extend_cat_id`, `product_id`, `cat_id`) VALUES
(8, 4, 22),
(12, 4, 26),
(13, 4, 41),
(14, 4, 35),
(15, 4, 32),
(16, 4, 42),
(17, 4, 20),
(18, 4, 18),
(19, 3, 22),
(20, 3, 24),
(21, 3, 25),
(22, 3, 26),
(23, 3, 41),
(24, 3, 35),
(25, 3, 32),
(26, 3, 42),
(27, 3, 43),
(28, 3, 37),
(29, 3, 33),
(30, 3, 39),
(31, 3, 34),
(32, 3, 19),
(33, 3, 18),
(34, 4, 48),
(35, 3, 27),
(36, 4, 66),
(37, 4, 65),
(38, 3, 67),
(39, 3, 65),
(40, 3, 68),
(41, 4, 45),
(42, 3, 45),
(43, 4, 61),
(44, 4, 24),
(45, 5, 28),
(46, 5, 29),
(47, 5, 45),
(48, 5, 27),
(49, 5, 36),
(50, 5, 32),
(51, 6, 28),
(52, 6, 29),
(56, 6, 46),
(57, 6, 48),
(58, 6, 44),
(59, 6, 17),
(60, 6, 36),
(61, 6, 32),
(64, 7, 37),
(65, 7, 33),
(66, 7, 38),
(67, 7, 40),
(68, 7, 34),
(69, 7, 19),
(70, 7, 18),
(71, 7, 20),
(72, 7, 66),
(73, 7, 65),
(74, 7, 67),
(75, 7, 68),
(76, 7, 22),
(77, 7, 26),
(78, 7, 57),
(79, 7, 58),
(80, 7, 59),
(81, 7, 45),
(83, 7, 47),
(84, 7, 35),
(85, 7, 32),
(86, 7, 41),
(87, 7, 42),
(88, 7, 43),
(89, 6, 35),
(90, 6, 41),
(91, 6, 42),
(92, 6, 43),
(93, 6, 19),
(94, 6, 18),
(95, 6, 67),
(96, 6, 65),
(97, 6, 68),
(98, 5, 46),
(99, 5, 44),
(100, 5, 17),
(101, 5, 35),
(102, 5, 41),
(103, 5, 42),
(104, 5, 43),
(105, 5, 37),
(106, 5, 33),
(107, 5, 19),
(108, 5, 18),
(109, 5, 20),
(110, 5, 66),
(111, 5, 65),
(112, 5, 67),
(113, 5, 68),
(114, 4, 37),
(115, 4, 33),
(116, 4, 39),
(117, 4, 34),
(118, 4, 67),
(119, 3, 46),
(120, 3, 48),
(133, 7, 70),
(134, 6, 45),
(135, 6, 27),
(137, 6, 73),
(138, 7, 73);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `store_product_extend_similar_group`
--

CREATE TABLE `store_product_extend_similar_group` (
  `extend_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `store_product_extend_similar_group`
--

INSERT INTO `store_product_extend_similar_group` (`extend_id`, `group_id`, `product_id`) VALUES
(25, 2, 3),
(26, 2, 4),
(27, 2, 6),
(34, 3, 3),
(35, 3, 4),
(36, 3, 6),
(40, 4, 3),
(41, 4, 4),
(42, 4, 6),
(43, 5, 3),
(44, 5, 4),
(45, 5, 6);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `store_product_follow`
--

CREATE TABLE `store_product_follow` (
  `follow_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `store_product_follow`
--

INSERT INTO `store_product_follow` (`follow_id`, `product_id`, `user_id`) VALUES
(30, 7, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `store_product_groups`
--

CREATE TABLE `store_product_groups` (
  `group_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `sorting` int(11) NOT NULL,
  `admin_explain` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `store_product_image`
--

CREATE TABLE `store_product_image` (
  `image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `url` text NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `time_add` int(11) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `store_product_image`
--

INSERT INTO `store_product_image` (`image_id`, `product_id`, `name`, `url`, `width`, `height`, `time_add`, `sort`) VALUES
(1, 4, 'deneme 1', 'deneme_1_4_1522744312.jpg', 1500, 1500, 1522744312, 5),
(3, 3, 'sadf asdf', 'sadf_asdf_3_1522744412.jpg', 1500, 1500, 1522744412, 0),
(4, 3, 'sadf', 'sadf_3_1522744420.jpg', 1500, 1500, 1522744420, 0),
(5, 5, 'Ürün 1', 'urun_1_5_1523005558.jpg', 768, 768, 1523005558, 5),
(6, 5, 'Ürün 1', 'urun_1_5_1523005565.jpg', 768, 768, 1523005565, 7),
(7, 5, 'Ürün 1', 'urun_1_5_1523005573.jpg', 768, 768, 1523005573, 8),
(8, 5, 'Ürün 1', 'urun_1_5_1523005581.jpg', 1500, 1500, 1523005581, 6),
(9, 6, 'Deneme', 'deneme_6_1523006411.jpg', 1000, 1000, 1523006411, 5),
(10, 6, 'Deneme', 'deneme_6_1523006420.jpg', 1000, 1000, 1523006420, 7),
(11, 6, 'Deneme', 'deneme_6_1523006428.jpg', 1500, 1500, 1523006428, 6),
(16, 7, 'sdfasd fasdf d', 'sdfasd_fasdf_d_7_1523103737.jpg', 1200, 1200, 1523103737, 0),
(17, 7, 'sdfasd fasdf d', 'sdfasd_fasdf_d_7_1523103743.jpg', 1200, 1200, 1523103743, 0),
(18, 7, 'sdfasd fasdf d', 'sdfasd_fasdf_d_7_1523103748.jpg', 1200, 1200, 1523103748, 0),
(19, 7, 'sdfasd fasdf d', 'sdfasd_fasdf_d_7_1523103756.jpg', 1200, 1200, 1523103756, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `store_product_stock`
--

CREATE TABLE `store_product_stock` (
  `product_stock_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `size_wrap_id` int(11) NOT NULL,
  `size_value_id` int(11) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `store_product_stock`
--

INSERT INTO `store_product_stock` (`product_stock_id`, `product_id`, `size_wrap_id`, `size_value_id`, `stock`) VALUES
(131, 5, 28, 29, 45),
(132, 4, 22, 61, 3425),
(133, 4, 22, 23, 0),
(134, 4, 22, 24, 5),
(135, 4, 22, 25, 0),
(136, 4, 22, 26, 11),
(137, 3, 22, 24, 35),
(138, 3, 22, 25, 345),
(139, 3, 22, 26, 345),
(179, 6, 28, 29, 420),
(186, 7, 22, 57, 5342),
(187, 7, 22, 58, 345),
(188, 7, 22, 59, 35),
(189, 7, 22, 60, 0),
(190, 7, 22, 25, 0),
(191, 7, 22, 26, 342);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `store_similar_groups`
--

CREATE TABLE `store_similar_groups` (
  `group_id` int(11) NOT NULL,
  `group_type` int(11) NOT NULL,
  `admin_explain` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `store_similar_groups`
--

INSERT INTO `store_similar_groups` (`group_id`, `group_type`, `admin_explain`) VALUES
(2, 1, ''),
(3, 2, ''),
(4, 2, ''),
(5, 3, '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `store_slider1`
--

CREATE TABLE `store_slider1` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `sef` text NOT NULL,
  `link` text NOT NULL,
  `img` text NOT NULL,
  `sorting` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `store_slider1`
--

INSERT INTO `store_slider1` (`id`, `title`, `sef`, `link`, `img`, `sorting`) VALUES
(6, 'sfd sdf adsf', 'sfd_sdf_adsf', 'http://localhost:8080/shop/admin/sliders/slider1_add', 'sfd_sdf_adsf-1523701156_1.jpg', 0),
(7, 'Deneme 45 Kahverengi', 'deneme_45_kahverengi', 'http://localhost:8080/shop/admin/sliders/slider1_add', 'deneme_45_kahverengi-1523701035_1.jpg', 0),
(8, 'sf sdf sdf', 'sf_sdf_sdf', 'http://localhost:8080/shop/admin/sliders/slider1_add', 'sf_sdf_sdf-1523701173_1.jpg', 0),
(9, 's fasdf', 's_fasdf', 'http://localhost:8080/shop/admin/sliders/slider1_add', 's_fasdf-1523701181_1.jpg', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user1`
--

CREATE TABLE `user1` (
  `user_id` int(11) NOT NULL,
  `user_name` text NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `e_mail` text NOT NULL,
  `phone` text NOT NULL,
  `pass` varchar(255) NOT NULL,
  `image_avatar_1` text NOT NULL,
  `ban` tinyint(4) NOT NULL,
  `time_join` int(11) NOT NULL,
  `key_1` varchar(255) NOT NULL,
  `key_2` varchar(255) NOT NULL,
  `key_3` varchar(255) NOT NULL,
  `key_4` varchar(255) NOT NULL,
  `admin_explain` text NOT NULL,
  `admin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `user1`
--

INSERT INTO `user1` (`user_id`, `user_name`, `first_name`, `last_name`, `e_mail`, `phone`, `pass`, `image_avatar_1`, `ban`, `time_join`, `key_1`, `key_2`, `key_3`, `key_4`, `admin_explain`, `admin`) VALUES
(1, 'codeksper', 'Hicret', 'Çetin', 'hicretcetin@outlook.com', '05415353640', '22fa36f9e47e8fe08cac70f4932a7bc9', '0.jpg', 0, 1519718477, 'ad098c6b54a7b5d19958c9135', 'a43d4a0b8f4816439ff946c89', '85d7ea9dfa091219c8d6cdab9', 'abe40650c6549aa210c6c14a0', '', 'master'),
(2, '', 'Orhan', 'Bilgim', 'orhanbilgin@gmail.com', '123456', 'd93a5def7511da3d0f2d171d9c344e91', '0.jpg', 0, 1524140401, '249c520bd1b1188ae122fa3db', '776b614d4a9bc6e008f6238c7', '4dc6b460d8a6eb67a83138f8a', 'fda8b8d2443376e88d29043cb', '', ''),
(3, '', 'deneme', 'deneme', 'deneme@sdsdf.sdf', '123456', 'd93a5def7511da3d0f2d171d9c344e91', '0.jpg', 0, 1524140604, '80a38fca114690a46786cdaa1', '42960a29193822576b6d35946', 'ea411b023d25244330c514c44', 'ae222c04e929737a650cbf3c5', '', ''),
(4, '', 'sdf', 'sdf', 'hicretcetin@outldook.com', '324325', 'c78b6663d47cfbdb4d65ea51c104044e', '0.jpg', 0, 1524140661, '12f9c5c13cc608172628a46c9', 'd51c5985e44a12ad2fc6419af', '4eb4600beb120d4a2bb20a089', '9dedbb10ab67be771e2a15503', '', ''),
(5, '', 'dssdf', 'dsfdsf', 'sddasf@sd.dsf', '123456', 'd93a5def7511da3d0f2d171d9c344e91', '0.jpg', 0, 1524140693, '990dc1103c0973b9345e1724d', '42ccbc54d50e7b7c630f0b570', '5cd44bb39e7ffde414704e2f3', '900d7d60fc055824f7b06503c', '', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user1_ban`
--

CREATE TABLE `user1_ban` (
  `user_id` int(11) NOT NULL,
  `finish_time` bigint(20) NOT NULL,
  `reason` text NOT NULL,
  `admin_explain` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user1_check`
--

CREATE TABLE `user1_check` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `data_type` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `user_name` text NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `e_mail` text NOT NULL,
  `phone` text NOT NULL,
  `pass` varchar(255) NOT NULL,
  `time_join` int(11) NOT NULL,
  `key_1` varchar(255) NOT NULL,
  `key_2` varchar(255) NOT NULL,
  `key_3` varchar(255) NOT NULL,
  `key_4` varchar(255) NOT NULL,
  `admin_explain` text NOT NULL,
  `admin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `user1_check`
--

INSERT INTO `user1_check` (`id`, `user_id`, `data_type`, `time`, `user_name`, `first_name`, `last_name`, `e_mail`, `phone`, `pass`, `time_join`, `key_1`, `key_2`, `key_3`, `key_4`, `admin_explain`, `admin`) VALUES
(1, 1, 'email_change', 1524149158, '', '', '', 'hicretcetin@yandex.com', '', '', 0, 'dac93da52e58920a1857c6c7b', '934929f7741f9e88823984108', '', '', '', ''),
(2, 1, 'email_change', 1524149605, '', '', '', 'hicretcetin@outlook.com', '', '', 0, 'f60b72b848dc3adbe5e2c8d35', '011f1d4ec0374ee47136e825a', '', '', '', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user1_data1`
--

CREATE TABLE `user1_data1` (
  `data1_id` int(11) NOT NULL,
  `data_type` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `data1` text NOT NULL,
  `data2` text NOT NULL,
  `data3` text NOT NULL,
  `data4` text NOT NULL,
  `sorting` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `user1_data1`
--

INSERT INTO `user1_data1` (`data1_id`, `data_type`, `user_id`, `data1`, `data2`, `data3`, `data4`, `sorting`) VALUES
(3, 'address', 1, 'sadf asd', 'fasdfasf', '', '', 0),
(6, 'address', 1, 'df gdsfg', 'sdfg sdfg', '', '', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user1_groups`
--

CREATE TABLE `user1_groups` (
  `group_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `sorting` int(11) NOT NULL,
  `admin_explain` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `user1_groups`
--

INSERT INTO `user1_groups` (`group_id`, `name`, `sorting`, `admin_explain`) VALUES
(3, 'sadfsadf', 1, '');

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `view_store_product_extend_cat`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `view_store_product_extend_cat` (
`product_extend_cat_id` int(11)
,`product_id` int(11)
,`cat_id` int(11)
,`data_type` varchar(255)
);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `x_admin_notes`
--

CREATE TABLE `x_admin_notes` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `time_add` int(11) NOT NULL,
  `time_edit` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `x_admin_notes`
--

INSERT INTO `x_admin_notes` (`id`, `title`, `content`, `time_add`, `time_edit`, `user_id`) VALUES
(1, 'aaa', 'dfg sdfsdf', 1521574717, 1521574948, 1),
(2, 'sfdg', 'dfg', 1521574742, 1521574742, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `x_contact`
--

CREATE TABLE `x_contact` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject` text NOT NULL,
  `content` text NOT NULL,
  `read_status` int(11) NOT NULL,
  `time` float NOT NULL,
  `ip` varchar(255) NOT NULL,
  `admin_explain` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `x_documents`
--

CREATE TABLE `x_documents` (
  `id` int(11) NOT NULL,
  `x` varchar(255) NOT NULL,
  `folder_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `content` text NOT NULL,
  `file_name` text NOT NULL,
  `time_add` int(11) NOT NULL,
  `time_edit` int(11) NOT NULL,
  `count_file` int(11) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `x_documents`
--

INSERT INTO `x_documents` (`id`, `x`, `folder_id`, `name`, `content`, `file_name`, `time_add`, `time_edit`, `count_file`, `sort`) VALUES
(2, 'folder', 0, 'sdfsdf', '', '', 1521837853, 1521837853, 0, 6);

-- --------------------------------------------------------

--
-- Görünüm yapısı `view_store_product_extend_cat`
--
DROP TABLE IF EXISTS `view_store_product_extend_cat`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_store_product_extend_cat`  AS  select `spec`.`product_extend_cat_id` AS `product_extend_cat_id`,`spec`.`product_id` AS `product_id`,`spec`.`cat_id` AS `cat_id`,`sc`.`data_type` AS `data_type` from (`store_product_extend_cat` `spec` join `store_cat` `sc` on((`sc`.`cat_id` = `spec`.`cat_id`))) ;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `cargo_company`
--
ALTER TABLE `cargo_company`
  ADD PRIMARY KEY (`company_id`);

--
-- Tablo için indeksler `cargo_package`
--
ALTER TABLE `cargo_package`
  ADD PRIMARY KEY (`cargo_package_id`);

--
-- Tablo için indeksler `cargo_package_extend_location`
--
ALTER TABLE `cargo_package_extend_location`
  ADD PRIMARY KEY (`cargo_package_extend_location_id`);

--
-- Tablo için indeksler `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Tablo için indeksler `help`
--
ALTER TABLE `help`
  ADD PRIMARY KEY (`help_id`);

--
-- Tablo için indeksler `location_city`
--
ALTER TABLE `location_city`
  ADD PRIMARY KEY (`city_id`);

--
-- Tablo için indeksler `location_country`
--
ALTER TABLE `location_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Tablo için indeksler `location_extend_groups`
--
ALTER TABLE `location_extend_groups`
  ADD PRIMARY KEY (`extend_id`);

--
-- Tablo için indeksler `location_groups`
--
ALTER TABLE `location_groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Tablo için indeksler `store_cat`
--
ALTER TABLE `store_cat`
  ADD PRIMARY KEY (`cat_id`);

--
-- Tablo için indeksler `store_cat_extend_feature`
--
ALTER TABLE `store_cat_extend_feature`
  ADD PRIMARY KEY (`cat_extend_feature_id`);

--
-- Tablo için indeksler `store_orders`
--
ALTER TABLE `store_orders`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `store_product`
--
ALTER TABLE `store_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Tablo için indeksler `store_product_extend_cat`
--
ALTER TABLE `store_product_extend_cat`
  ADD PRIMARY KEY (`product_extend_cat_id`);

--
-- Tablo için indeksler `store_product_extend_similar_group`
--
ALTER TABLE `store_product_extend_similar_group`
  ADD PRIMARY KEY (`extend_id`);

--
-- Tablo için indeksler `store_product_follow`
--
ALTER TABLE `store_product_follow`
  ADD PRIMARY KEY (`follow_id`);

--
-- Tablo için indeksler `store_product_groups`
--
ALTER TABLE `store_product_groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Tablo için indeksler `store_product_image`
--
ALTER TABLE `store_product_image`
  ADD PRIMARY KEY (`image_id`);

--
-- Tablo için indeksler `store_product_stock`
--
ALTER TABLE `store_product_stock`
  ADD PRIMARY KEY (`product_stock_id`);

--
-- Tablo için indeksler `store_similar_groups`
--
ALTER TABLE `store_similar_groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Tablo için indeksler `store_slider1`
--
ALTER TABLE `store_slider1`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `user1`
--
ALTER TABLE `user1`
  ADD PRIMARY KEY (`user_id`);

--
-- Tablo için indeksler `user1_ban`
--
ALTER TABLE `user1_ban`
  ADD PRIMARY KEY (`user_id`);

--
-- Tablo için indeksler `user1_check`
--
ALTER TABLE `user1_check`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `user1_data1`
--
ALTER TABLE `user1_data1`
  ADD PRIMARY KEY (`data1_id`);

--
-- Tablo için indeksler `user1_groups`
--
ALTER TABLE `user1_groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Tablo için indeksler `x_admin_notes`
--
ALTER TABLE `x_admin_notes`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `x_contact`
--
ALTER TABLE `x_contact`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `x_documents`
--
ALTER TABLE `x_documents`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `cargo_company`
--
ALTER TABLE `cargo_company`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Tablo için AUTO_INCREMENT değeri `cargo_package`
--
ALTER TABLE `cargo_package`
  MODIFY `cargo_package_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Tablo için AUTO_INCREMENT değeri `cargo_package_extend_location`
--
ALTER TABLE `cargo_package_extend_location`
  MODIFY `cargo_package_extend_location_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- Tablo için AUTO_INCREMENT değeri `help`
--
ALTER TABLE `help`
  MODIFY `help_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Tablo için AUTO_INCREMENT değeri `location_city`
--
ALTER TABLE `location_city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- Tablo için AUTO_INCREMENT değeri `location_country`
--
ALTER TABLE `location_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;
--
-- Tablo için AUTO_INCREMENT değeri `location_extend_groups`
--
ALTER TABLE `location_extend_groups`
  MODIFY `extend_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `location_groups`
--
ALTER TABLE `location_groups`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `store_cat`
--
ALTER TABLE `store_cat`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- Tablo için AUTO_INCREMENT değeri `store_cat_extend_feature`
--
ALTER TABLE `store_cat_extend_feature`
  MODIFY `cat_extend_feature_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- Tablo için AUTO_INCREMENT değeri `store_orders`
--
ALTER TABLE `store_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `store_product`
--
ALTER TABLE `store_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Tablo için AUTO_INCREMENT değeri `store_product_extend_cat`
--
ALTER TABLE `store_product_extend_cat`
  MODIFY `product_extend_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;
--
-- Tablo için AUTO_INCREMENT değeri `store_product_extend_similar_group`
--
ALTER TABLE `store_product_extend_similar_group`
  MODIFY `extend_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- Tablo için AUTO_INCREMENT değeri `store_product_follow`
--
ALTER TABLE `store_product_follow`
  MODIFY `follow_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- Tablo için AUTO_INCREMENT değeri `store_product_groups`
--
ALTER TABLE `store_product_groups`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `store_product_image`
--
ALTER TABLE `store_product_image`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- Tablo için AUTO_INCREMENT değeri `store_product_stock`
--
ALTER TABLE `store_product_stock`
  MODIFY `product_stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;
--
-- Tablo için AUTO_INCREMENT değeri `store_similar_groups`
--
ALTER TABLE `store_similar_groups`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Tablo için AUTO_INCREMENT değeri `store_slider1`
--
ALTER TABLE `store_slider1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Tablo için AUTO_INCREMENT değeri `user1`
--
ALTER TABLE `user1`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Tablo için AUTO_INCREMENT değeri `user1_check`
--
ALTER TABLE `user1_check`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Tablo için AUTO_INCREMENT değeri `user1_data1`
--
ALTER TABLE `user1_data1`
  MODIFY `data1_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Tablo için AUTO_INCREMENT değeri `user1_groups`
--
ALTER TABLE `user1_groups`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Tablo için AUTO_INCREMENT değeri `x_admin_notes`
--
ALTER TABLE `x_admin_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Tablo için AUTO_INCREMENT değeri `x_contact`
--
ALTER TABLE `x_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `x_documents`
--
ALTER TABLE `x_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
