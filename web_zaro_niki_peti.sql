-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Ápr 11. 12:55
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `web_zaro_niki_peti`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `autok`
--

CREATE TABLE `autok` (
  `auto_id` int(11) NOT NULL,
  `auto_marka` int(11) NOT NULL,
  `auto_modell` varchar(255) NOT NULL,
  `auto_evjarat` int(11) NOT NULL,
  `auto_hengerurt` int(11) NOT NULL,
  `auto_uzema` varchar(255) NOT NULL,
  `auto_kep` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `autok`
--

INSERT INTO `autok` (`auto_id`, `auto_marka`, `auto_modell`, `auto_evjarat`, `auto_hengerurt`, `auto_uzema`, `auto_kep`) VALUES
(1, 1, 'Civic', 2007, 1800, 'Benzin', 'Honda_civic.jpg'),
(2, 1, 'Accord', 2006, 1800, 'Benzin', 'Honda_accord.jpg'),
(3, 2, 'Ignis', 2006, 1300, 'Benzin', 'Suzuki_Ignis.jpg'),
(4, 2, 'Swift', 2006, 1200, 'Benzin', 'Suzuki_Swift.jpg'),
(5, 3, '350 Z', 2006, 3500, 'Benzin', 'Nissan_350Z.jpg'),
(6, 3, 'Navara', 2008, 2500, 'Dízel', 'Nissan_Navara.jpg'),
(7, 4, 'XC-5', 2013, 2100, 'Dízel', 'Mazda_CX-5.jpg'),
(8, 4, 'MX-5', 1995, 1800, 'Benzin', 'Mazda_MX-5.jpg'),
(9, 5, 'Legacy', 2004, 1500, 'Benzin', 'Subaru_Legacy.jpg'),
(10, 5, 'Baja', 2003, 2500, 'Benzin', 'Subaru_Baja.jpg'),
(11, 6, 'GT86', 2013, 2000, 'Benzin', 'Toyota_GT86.jpg'),
(12, 6, 'Celica', 1991, 1500, 'Benzin', 'Toyota_Celica.jpg'),
(13, 7, '3000 GT', 1994, 3000, 'Benzin', 'Mitsubishi_3000_GT.jpg'),
(14, 7, 'Galant', 1998, 2500, 'Benzin', 'Mitsubishi_Galant.jpg'),
(15, 1, 'JAZZ', 2004, 1400, 'Benzin', 'Honda_Jazz.jpg'),
(18, 1, 'LEGEND', 1996, 3500, 'Benzin', 'honda_legend.jpg'),
(21, 1, 'CR-V', 2009, 2000, 'Benzin', 'honda_cr_v.jpg'),
(24, 2, 'Baleno', 2016, 1200, 'Benzin', 'suzuki-baleno.jpg'),
(27, 2, 'Jimmy', 2007, 1500, 'Dízel', 'Suzuki-Jimmy.jpg'),
(30, 2, 'SX4', 2008, 1600, 'Dízel', 'Suzuki-sx4.jpg'),
(33, 3, 'QASHQAI', 2011, 1500, 'Dízel', 'nissan-qashqai.jpg'),
(36, 3, 'X-TRAIL', 2016, 1600, 'Dízel', 'nissan-x-trail.jpg'),
(39, 3, 'Micra', 2005, 1500, 'Dízel', 'nissan-micra.jpg'),
(42, 4, 'Mazda-6', 2011, 2200, 'Dízel', 'mazda-6.jpg'),
(45, 4, 'Mazda-3', 2014, 2000, 'Dízel', 'mazda-3.jpg'),
(48, 4, 'PREMACY', 2002, 2000, 'Dízel', 'mazda-premacy.jpg'),
(51, 5, 'Impreza', 1993, 1800, 'Dízel', 'subaru-impreza.jpg'),
(54, 5, 'OUTBACK', 2014, 2000, 'Dízel', 'subaru-outback.jpg'),
(57, 5, 'Justy', 1986, 1000, 'Dízel', 'subaru-justy.jpg'),
(60, 6, 'AYGO', 2007, 1000, 'Benzin', 'toyota-aygo.jpg'),
(63, 6, 'Auris', 2008, 1300, 'Dízel', 'toyota-auris.jpg'),
(66, 6, 'IQ', 2010, 1000, 'Benzin', 'Toyota-iQ.jpg'),
(69, 7, 'Outlander', 2003, 2000, 'Benzin', 'Mitsubishi-Outlander.jpg'),
(72, 7, 'asx', 2011, 1800, 'Dízel', 'mitsubishi-asx.jpg'),
(75, 7, 'ECLIPSE', 2001, 3000, 'Benzin', 'mitsubishi-eclipse.jpg'),
(78, 7, 'pelda1', 1, 1, 'pelda1', ''),
(79, 7, 'pelda2', 2, 2, 'pelda2', '');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `auto_kepek`
--

CREATE TABLE `auto_kepek` (
  `kepek_auto_id` int(11) NOT NULL,
  `auto_kepek` varchar(255) NOT NULL,
  `idegenkulcs_auto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `auto_kepek`
--

INSERT INTO `auto_kepek` (`kepek_auto_id`, `auto_kepek`, `idegenkulcs_auto`) VALUES
(1, '1.jpg', 1),
(2, '2.jpg', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `film`
--

CREATE TABLE `film` (
  `film_id` int(11) NOT NULL,
  `film_cim` varchar(50) NOT NULL,
  `film_datum` date NOT NULL,
  `film_hossz` int(11) NOT NULL,
  `film_kep` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `film`
--

INSERT INTO `film` (`film_id`, `film_cim`, `film_datum`, `film_hossz`, `film_kep`) VALUES
(1, 'Wandavision', '0000-00-00', 0, '1.png'),
(2, 'Loki', '0000-00-00', 0, '2.png'),
(3, 'Falcon and the winter soldier', '0000-00-00', 0, '3.png');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kepek_motor`
--

CREATE TABLE `kepek_motor` (
  `kepekmotor_id` int(11) NOT NULL,
  `motor_kep` varchar(255) NOT NULL,
  `idegenkulcs_motor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `kepek_motor`
--

INSERT INTO `kepek_motor` (`kepekmotor_id`, `motor_kep`, `idegenkulcs_motor`) VALUES
(1, '1.jpg', 1),
(2, '2.jpg', 1),
(79, 'photo_1707123092390_photo.jpg', 1),
(80, 'photo_1707123238818_photo.jpg', 1),
(81, 'photo_1707125179176_photo.jpg', 1),
(87, 'photo_1707297355894_photo.jpg', 3);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `marka`
--

CREATE TABLE `marka` (
  `marka_id` int(11) NOT NULL,
  `marka_nev` varchar(255) NOT NULL,
  `marka_kepek` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `marka`
--

INSERT INTO `marka` (`marka_id`, `marka_nev`, `marka_kepek`) VALUES
(1, 'Honda', 'Honda.jpg'),
(2, 'Suzuki', 'Suzuki.jpg'),
(3, 'Nissan', 'Nissan.jpg'),
(4, 'Mazda', 'Mazda.jpg'),
(5, 'Subaru', 'Subaru.jpg'),
(6, 'Toyota', 'Toyota.jpg'),
(7, 'Mitsubishi', 'Mitsubishi.jpg'),
(41, 'pelda1', ''),
(42, 'pelda2', '');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `marka_motorok`
--

CREATE TABLE `marka_motorok` (
  `marka_id` int(11) NOT NULL,
  `marka_nev` varchar(255) NOT NULL,
  `marka_kepek` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `marka_motorok`
--

INSERT INTO `marka_motorok` (`marka_id`, `marka_nev`, `marka_kepek`) VALUES
(1, 'Kawasaki', 'Kawasaki.jpg'),
(2, 'Honda', 'Honda.jpg'),
(3, 'Suzuki', 'Suzuki.jpg'),
(4, 'Yamaha', 'Yamaha.jpg'),
(5, 'hth', 'htah'),
(6, 'hta', 'htea'),
(7, 'gteah', 'hteah'),
(11, 'pelda', ''),
(12, 'pelda2', '');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `motorok`
--

CREATE TABLE `motorok` (
  `motor_id` int(11) NOT NULL,
  `motor_marka` int(255) NOT NULL,
  `motor_modell` varchar(255) NOT NULL,
  `motor_evjarat` int(11) NOT NULL,
  `motor_hengerurt` int(11) NOT NULL,
  `motor_uzema` varchar(255) NOT NULL,
  `motor_kep` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `motorok`
--

INSERT INTO `motorok` (`motor_id`, `motor_marka`, `motor_modell`, `motor_evjarat`, `motor_hengerurt`, `motor_uzema`, `motor_kep`) VALUES
(1, 1, 'Ninja 400', 2010, 400, 'Benzin', 'Ninja400.jpg'),
(3, 1, 'Ninja 300', 2010, 300, 'Benzin', 'Ninja650.jpg'),
(4, 2, 'CBR 600', 2016, 600, 'Benzin', 'Hondacbr600.jpg'),
(5, 3, 'GSXR 600', 2010, 600, 'Benzin', 'SuzukiR600.jpg'),
(6, 3, 'GSXR 1000', 2007, 1000, 'Benzin', 'Suzuki1000.jpg'),
(7, 4, 'R1', 2010, 700, 'Benzin', 'YamahaR1.jpg'),
(8, 4, 'R6', 2014, 600, 'Benzin', 'YamahaR6.jpg'),
(9, 1, 'Ninja H2', 2023, 1000, 'Benzin', 'KawasakiH2.jpg'),
(12, 1, 'XR-6R', 2017, 600, 'Benzin', 'KawasakiXR-6R.jpg'),
(15, 1, 'Z750R', 2018, 750, 'Benzin', 'KawasakiZ750R.jpg'),
(18, 2, 'CBR 500', 2018, 500, 'Benzin', 'HondaCBR500.jpg'),
(21, 2, 'CBR 650R', 2020, 650, 'Benzin', 'HondaCBR650R.jpg'),
(24, 2, 'CBR 900RR', 2023, 900, 'Benzin', 'HondaCBR900RR.jpg'),
(27, 2, 'CBR 1000RR-R', 2015, 1000, 'Benzin', 'HondaCBR1000RR-R.jpg'),
(30, 3, 'GSX-8R', 2016, 750, 'Benzin', 'GSX-8R.jpg'),
(33, 3, 'GSX-R125', 2019, 125, 'Benzin', 'GSX-R125.jpg'),
(36, 3, 'GSX-R 750', 2023, 750, 'Benzin', 'GSX-R-750.jpg'),
(39, 4, 'R3', 2019, 300, 'Benzin', 'Yamaha-R3.jpg'),
(42, 4, 'R7', 2022, 700, 'Benzin', 'Yamaha-R7.jpg'),
(45, 4, 'YZF-R125', 2023, 125, 'Benzin', 'Yamaha-YZF-R125.jpg'),
(48, 4, 'pelda1', 1, 1, 'pelda1', ''),
(49, 4, 'pelda2', 2, 2, 'pelda2', '');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `roles`
--

INSERT INTO `roles` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'user', '2020-08-02 14:57:31', '2020-08-02 14:57:31'),
(2, 'moderator', '2020-08-02 14:57:31', '2020-08-02 14:57:31'),
(3, 'admin', '2020-08-02 14:57:31', '2020-08-02 14:57:31');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szavazat_auto`
--

CREATE TABLE `szavazat_auto` (
  `szavazat_id` int(11) NOT NULL,
  `szavazat_a` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `szavazat_auto`
--

INSERT INTO `szavazat_auto` (`szavazat_id`, `szavazat_a`) VALUES
(1, 1),
(2, 2),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 2),
(8, 1),
(9, 1),
(10, 3),
(11, 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szavazat_motor`
--

CREATE TABLE `szavazat_motor` (
  `szavazat_id` int(11) NOT NULL,
  `szavazat_m` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `szavazat_motor`
--

INSERT INTO `szavazat_motor` (`szavazat_id`, `szavazat_m`) VALUES
(1, 1),
(2, 2),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 2),
(8, 1),
(9, 1),
(10, 3),
(11, 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'user', 'user', '$2a$08$gXM4pyuhZFlC72PeAwxrUOR0uA31/d2PdgnHP35JGV.0bQNiZBatS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'mod', 'mod', '$2a$08$gXM4pyuhZFlC72PeAwxrUOR0uA31/d2PdgnHP35JGV.0bQNiZBatS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'admin', 'admin', '$2a$08$97Ze1/hXfOX44WdC62Rq8uRkog9HYC1HukRX8eld2ZEKPyenM5v.G', '2020-08-02 15:03:59', '2020-08-02 15:03:59'),
(14, 'valaki', 'valaki@gmail.com', '$2a$08$2I9RHv7Yt6ljopICRKZq9.c/PzU.jDQU2zqtSD16A3kjQjbBuhw1a', '2024-02-06 17:37:10', '2024-02-06 17:37:10');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `user_roles`
--

CREATE TABLE `user_roles` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `roleId` int(11) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `user_roles`
--

INSERT INTO `user_roles` (`createdAt`, `updatedAt`, `roleId`, `userId`) VALUES
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
('2020-08-02 15:04:00', '2020-08-02 15:04:00', 1, 3),
('2024-02-06 17:37:10', '2024-02-06 17:37:10', 1, 14),
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 2),
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 3),
('2020-08-02 15:04:00', '2020-08-02 15:04:00', 3, 3);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `autok`
--
ALTER TABLE `autok`
  ADD PRIMARY KEY (`auto_id`);

--
-- A tábla indexei `auto_kepek`
--
ALTER TABLE `auto_kepek`
  ADD PRIMARY KEY (`kepek_auto_id`);

--
-- A tábla indexei `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`film_id`);

--
-- A tábla indexei `kepek_motor`
--
ALTER TABLE `kepek_motor`
  ADD PRIMARY KEY (`kepekmotor_id`);

--
-- A tábla indexei `marka`
--
ALTER TABLE `marka`
  ADD PRIMARY KEY (`marka_id`);

--
-- A tábla indexei `marka_motorok`
--
ALTER TABLE `marka_motorok`
  ADD PRIMARY KEY (`marka_id`);

--
-- A tábla indexei `motorok`
--
ALTER TABLE `motorok`
  ADD PRIMARY KEY (`motor_id`);

--
-- A tábla indexei `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `szavazat_auto`
--
ALTER TABLE `szavazat_auto`
  ADD PRIMARY KEY (`szavazat_id`);

--
-- A tábla indexei `szavazat_motor`
--
ALTER TABLE `szavazat_motor`
  ADD PRIMARY KEY (`szavazat_id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`roleId`,`userId`),
  ADD KEY `userId` (`userId`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `autok`
--
ALTER TABLE `autok`
  MODIFY `auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT a táblához `auto_kepek`
--
ALTER TABLE `auto_kepek`
  MODIFY `kepek_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT a táblához `film`
--
ALTER TABLE `film`
  MODIFY `film_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT a táblához `kepek_motor`
--
ALTER TABLE `kepek_motor`
  MODIFY `kepekmotor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT a táblához `marka`
--
ALTER TABLE `marka`
  MODIFY `marka_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT a táblához `marka_motorok`
--
ALTER TABLE `marka_motorok`
  MODIFY `marka_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT a táblához `motorok`
--
ALTER TABLE `motorok`
  MODIFY `motor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT a táblához `szavazat_auto`
--
ALTER TABLE `szavazat_auto`
  MODIFY `szavazat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT a táblához `szavazat_motor`
--
ALTER TABLE `szavazat_motor`
  MODIFY `szavazat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
