-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 26 Ağu 2021, 11:06:07
-- Sunucu sürümü: 10.4.20-MariaDB
-- PHP Sürümü: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `ustam`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

CREATE TABLE `kullanici` (
  `id` int(11) NOT NULL,
  `eposta` varchar(255) NOT NULL,
  `sifre` varchar(255) NOT NULL,
  `tarih` datetime NOT NULL DEFAULT current_timestamp(),
  `rol` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mesaj`
--

CREATE TABLE `mesaj` (
  `id` int(11) NOT NULL,
  `gonderen` varchar(255) NOT NULL,
  `baslik` varchar(255) NOT NULL,
  `icerik` text NOT NULL,
  `tarih` datetime NOT NULL DEFAULT current_timestamp(),
  `dosyaadi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `mesaj`
--

INSERT INTO `mesaj` (`id`, `gonderen`, `baslik`, `icerik`, `tarih`, `dosyaadi`) VALUES
(1, 'Ümit Tokmak', 'Deneme', 'Bu bir test mesajıdır.', '2021-08-24 12:42:59', ''),
(2, 'Ümit Tokmak', 'Deneme2', 'Bu bir test mesajıdır.', '2021-08-24 12:44:41', ''),
(3, 'asfasf', 'asfasfa', 'ssafasf', '2021-08-26 10:50:01', ''),
(8, 'asfas', 'asfasfas', 'asfasfas', '2021-08-26 10:59:49', ''),
(9, 'kkkkkkkkk', 'kkkkkkkkk', 'kkkkkkkkk', '2021-08-26 11:00:07', ''),
(10, 'aaaaaaaa', 'aaaaaaa', 'aaaa', '2021-08-26 11:01:21', ''),
(11, 'fffffff', 'ffffffffff', 'ffffffff', '2021-08-26 11:02:32', '98743367cf0222c.png'),
(12, 'Ümit Tokmak', 'Kod', 'Onluk Sayıyı Binary çevirme', '2021-08-26 11:30:51', 'Onluk sayıyı Binary yapma.rar'),
(13, 'asgfasfssfsf', 'asfasf', 'asfasf', '2021-08-26 11:39:35', 'Capture001.png');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kullanici`
--
ALTER TABLE `kullanici`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `mesaj`
--
ALTER TABLE `mesaj`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `kullanici`
--
ALTER TABLE `kullanici`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `mesaj`
--
ALTER TABLE `mesaj`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
