-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Feb 19. 09:57
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
-- Adatbázis: `web_zarodoga`
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
(1, 1, 'Honda Civic', 2007, 1800, 'Benzin', 'Honda_civic.jpg'),
(2, 1, 'Honda Accord', 2006, 1800, 'Benzin', 'Honda_accord.jpg'),
(3, 2, 'Suzuki Ignis', 2006, 1300, 'Benzin', 'Suzuki_Ignis.jpg'),
(4, 2, 'Suzuki Swift', 2006, 1200, 'Benzin', 'Suzuki_Swift.jpg'),
(5, 3, 'Nissan 350 Z', 2006, 3500, 'Benzin', 'Nissan_350Z.jpg'),
(6, 3, 'Nissan Navara', 2008, 2500, 'Dízel', 'Nissan_Navara.jpg'),
(7, 4, 'Mazda XC-5', 2013, 2100, 'Dízel', 'Mazda_CX-5.jpg'),
(8, 4, 'Mazda_MX-5', 1995, 1800, 'Benzin', 'Mazda_MX-5.jpg'),
(9, 5, 'Subaru Legacy', 2004, 1500, 'Benzin', 'Subaru_Legacy.jpg'),
(10, 5, 'Subaru Baja', 2003, 2500, 'Benzin', 'Subaru_Baja.jpg'),
(11, 6, 'Toyota GT86', 2013, 2000, 'Benzin', 'Toyota_GT86.jpg'),
(12, 6, 'Toyota Celica', 1991, 1500, 'Benzin', 'Toyota_Celica.jpg'),
(13, 7, 'Mitsubishi 3000 GT', 1994, 3000, 'Benzin', 'Mitsubishi_3000_GT.jpg'),
(14, 7, 'Mitsubishi Galant', 1998, 2500, 'Benzin', 'Mitsubishi_Galant.jpg'),
(17, 40, '40', 40, 40, '40', '40'),
(18, 50, '50', 50, 50, '50', '50');

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
(78, 'photo_1707123074145_photo.jpg', 1),
(79, 'photo_1707123092390_photo.jpg', 1),
(84, 'photo_1707297332047_photo.jpg', 3),
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
(11, '10', '10'),
(12, '20', '20'),
(13, '30', '30'),
(14, '40', '40'),
(15, '50', '50'),
(17, '7000000000000000000000000000000000000000000000000000000000000', '70');

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
(4, 'Yamaha', 'Yamaha.jpg');

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
(1, 1, 'Ninja ', 2010, 400, 'Benzin', 'Ninja400.jpg'),
(2, 2, 'CBF 125M', 2009, 125, 'Benzin', 'Honda.jpg'),
(3, 1, 'Ninja', 2010, 300, 'Benzin', 'Ninja650.jpg'),
(4, 2, 'CBR 600', 2016, 600, 'Benzin', 'Hondacbr600.jpg'),
(5, 3, 'Suzuki-GSXR', 2010, 600, 'Benzin', 'SuzukiR600.jpg'),
(6, 3, 'Suzuki-GSXR', 2007, 1000, 'Benzin', 'Suzuki1000.jpg'),
(7, 4, 'Yamaha-R1', 2010, 700, 'Benzin', 'YamahaR1.jpg'),
(8, 4, 'Yamaha-R6', 2014, 600, 'Benzin', 'YamahaR6.jpg');

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
  MODIFY `auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

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
  MODIFY `marka_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT a táblához `marka_motorok`
--
ALTER TABLE `marka_motorok`
  MODIFY `marka_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT a táblához `motorok`
--
ALTER TABLE `motorok`
  MODIFY `motor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT a táblához `szavazat_auto`
--
ALTER TABLE `szavazat_auto`
  MODIFY `szavazat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
