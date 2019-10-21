-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 21 Okt 2019 pada 08.02
-- Versi server: 8.0.17
-- Versi PHP: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phinx`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `booking_class`
--

CREATE TABLE `booking_class` (
  `booking_id` int(11) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `studio_id` varchar(255) NOT NULL,
  `users_id` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `booking_class`
--

INSERT INTO `booking_class` (`booking_id`, `date`, `studio_id`, `users_id`, `created`, `updated`) VALUES
(1, '1971-10-13 04:10:10', '8fb30fdd-a1e2-3dc7-bc7f-dad30c1447e9', 'ea2fc9f9-0cbd-3894-93fc-aec1463c7866', '2019-10-21 08:01:29', '2019-10-21 08:01:29'),
(2, '2010-06-04 12:51:54', '36c4b4bd-40ec-3660-8f4b-e001afecc1c2', 'fb6b282d-13dc-392d-ac32-797118d95f3b', '2019-10-21 08:01:29', '2019-10-21 08:01:29'),
(3, '2016-03-22 07:05:31', 'bafd222d-c393-3a51-b627-43ae0486be8e', '3138d739-14ad-3ba8-8936-07f3af8f4b02', '2019-10-21 08:01:29', '2019-10-21 08:01:29'),
(4, '1983-04-30 18:56:50', 'bbd4bfce-ba7f-3751-82f0-779af3ca17d9', '13c9f4ea-c073-36c6-8dee-fcc65058095b', '2019-10-21 08:01:29', '2019-10-21 08:01:29'),
(5, '1991-10-07 07:00:12', 'ff6e5daa-872a-3813-b574-f352614bcf54', '503fb2dd-5a6f-3a15-bcc5-3edf7fde98dd', '2019-10-21 08:01:29', '2019-10-21 08:01:29'),
(6, '1978-10-15 04:25:09', '1e2b0fce-28d9-374b-9c64-98b40cbd7c54', 'c793cd29-af1a-31f0-802a-9c43bd9b9da5', '2019-10-21 08:01:29', '2019-10-21 08:01:29'),
(7, '2014-12-25 20:33:39', '6538e375-083e-3cb8-ab31-0ef9bb6ba7f2', 'e7975b66-d889-3fcb-a875-03e0647db80e', '2019-10-21 08:01:29', '2019-10-21 08:01:29'),
(8, '2004-02-22 18:03:27', '8b14ad67-5834-3957-bc23-0211fead6ecc', '0b0d0c4d-3d17-301b-8ce3-ebcd26946c5e', '2019-10-21 08:01:29', '2019-10-21 08:01:29'),
(9, '1989-03-16 03:40:40', 'a401dca1-486a-38e9-b092-d9e7babbd4a7', 'a6d4d9f1-100a-3431-8011-2777c95b9c6e', '2019-10-21 08:01:29', '2019-10-21 08:01:29'),
(10, '2012-04-29 18:36:33', 'e8ccf187-ea17-373b-979c-0d1b2e7f454b', '7d348555-79b4-3cc8-9003-6e0b11654f98', '2019-10-21 08:01:29', '2019-10-21 08:01:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `phinxlog`
--

CREATE TABLE `phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `phinxlog`
--

INSERT INTO `phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20191021045611, 'CreateUserTable', '2019-10-21 01:01:20', '2019-10-21 01:01:20', 0),
(20191021045813, 'CreateStudioFitnessTable', '2019-10-21 01:01:20', '2019-10-21 01:01:20', 0),
(20191021050546, 'CreateBookingClass', '2019-10-21 01:01:20', '2019-10-21 01:01:20', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `studio_fitness`
--

CREATE TABLE `studio_fitness` (
  `studio_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `duration` varchar(100) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `studio_fitness`
--

INSERT INTO `studio_fitness` (`studio_id`, `name`, `address`, `price`, `duration`, `created`, `updated`) VALUES
(1, 'Dr. Wellington Funk', '7341 Christa Mount Suite 773\nSchneidertown, TX 68093', '40', '9', '2019-10-21 08:01:29', '2019-10-21 08:01:29'),
(2, 'Prof. Dovie Reilly I', '30911 Josue Summit Suite 283\nEast Luzfurt, CO 45518-7849', '27', '9', '2019-10-21 08:01:29', '2019-10-21 08:01:29'),
(3, 'Prof. Brendan Reichel', '449 Willms Tunnel\nAntoneside, NY 20322', '83', '7', '2019-10-21 08:01:29', '2019-10-21 08:01:29'),
(4, 'Mrs. Anya Hintz', '2315 Roger Neck Apt. 652\nCarterhaven, CT 18632', '9', '2', '2019-10-21 08:01:29', '2019-10-21 08:01:29'),
(5, 'Kobe Collins', '33225 Lizzie Centers\nNorth Camilla, RI 24669', '5', '1', '2019-10-21 08:01:29', '2019-10-21 08:01:29'),
(6, 'Edward Nader', '90491 Runte Greens Apt. 340\nRueckerport, AR 91133', '9', '4', '2019-10-21 08:01:29', '2019-10-21 08:01:29'),
(7, 'Prof. Sedrick Gottlieb DDS', '7047 Oral Dale\nNew Marjory, CO 79380-7081', '74', '5', '2019-10-21 08:01:29', '2019-10-21 08:01:29'),
(8, 'Myles Reynolds', '101 Gilberto Way Suite 592\nJarredview, TX 04297', '86', '4', '2019-10-21 08:01:29', '2019-10-21 08:01:29'),
(9, 'Melany Harber', '853 Kris Field Suite 811\nTrantowmouth, MD 51910-6308', '14', '6', '2019-10-21 08:01:29', '2019-10-21 08:01:29'),
(10, 'Price Dickinson', '351 Reynolds Springs Apt. 084\nKozeyside, KY 46201', '94', '4', '2019-10-21 08:01:29', '2019-10-21 08:01:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `password`, `created`, `updated`) VALUES
(1, 'Mortimer Auer', 'josefa.gorczany@durgan.biz', 'd46dc953c3b79117bc60030592b80ebd6064a77e', '2019-10-21 08:01:29', '2019-10-21 08:01:29'),
(2, 'River VonRueden Sr.', 'arvilla.bogan@hotmail.com', '7b3e9d56ac49e63a97bbb3e57a189680e4e8d3ce', '2019-10-21 08:01:29', '2019-10-21 08:01:29'),
(3, 'Marcel Wilderman', 'stracke.abdullah@ohara.info', 'b4fad159822ae0010ce91988970179b75de947d9', '2019-10-21 08:01:29', '2019-10-21 08:01:29'),
(4, 'Ms. Rachelle Feil I', 'william75@gmail.com', 'abf43b40dec65640e8b387599e335cb398c06f67', '2019-10-21 08:01:29', '2019-10-21 08:01:29'),
(5, 'Theresia Altenwerth', 'billy77@gmail.com', 'dd19cfb261d69e3e41486b916561ad537edee767', '2019-10-21 08:01:29', '2019-10-21 08:01:29'),
(6, 'Kennedi Weissnat', 'maci.emmerich@yahoo.com', 'c783d516455ddb58bd217cb032ee21c7ebcc8118', '2019-10-21 08:01:29', '2019-10-21 08:01:29'),
(7, 'Camryn Runte', 'wilderman.osvaldo@yahoo.com', '35998c73d8762cf5e480b2f73ccdfc5e3b0c9075', '2019-10-21 08:01:29', '2019-10-21 08:01:29'),
(8, 'Juanita Murphy V', 'joany77@pfannerstill.org', '57facc929ba5430d77228ca069b93ba1de043275', '2019-10-21 08:01:29', '2019-10-21 08:01:29'),
(9, 'Dr. Monroe Bode PhD', 'dimitri.ledner@yahoo.com', '6b54209c3eb35434454df58c4545900276e5f335', '2019-10-21 08:01:29', '2019-10-21 08:01:29'),
(10, 'Dorian Maggio DVM', 'erdman.caitlyn@kassulke.net', 'a706c896093311ad4130661707167f2c6c7f29f5', '2019-10-21 08:01:29', '2019-10-21 08:01:29');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `booking_class`
--
ALTER TABLE `booking_class`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indeks untuk tabel `phinxlog`
--
ALTER TABLE `phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indeks untuk tabel `studio_fitness`
--
ALTER TABLE `studio_fitness`
  ADD PRIMARY KEY (`studio_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `booking_class`
--
ALTER TABLE `booking_class`
  MODIFY `booking_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `studio_fitness`
--
ALTER TABLE `studio_fitness`
  MODIFY `studio_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
