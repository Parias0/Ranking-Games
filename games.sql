-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 29 Cze 2023, 18:40
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `ranking`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `games`
--

CREATE TABLE `games` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `platform` varchar(255) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `developer` varchar(255) NOT NULL,
  `release_date` date NOT NULL,
  `rating` decimal(4,2) NOT NULL,
  `image_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `games`
--

INSERT INTO `games` (`id`, `title`, `platform`, `genre`, `developer`, `release_date`, `rating`, `image_url`) VALUES
(4, 'Hollow Knight', 'PC / Nintendo Switch / PS4 / XboxOne', 'Metroidvania', 'Team Cherry', '2017-02-24', '10.00', 'https://upload.wikimedia.org/wikipedia/en/thumb/0/04/Hollow_Knight_first_cover_art.webp/220px-Hollow_Knight_first_cover_art.webp.png'),
(5, 'Hades', 'PC / Nintendo Switch / PS4 / PS5 / Xbox One / Xbox S', 'Roguelike', 'SuperGiant Games', '2021-08-13', '9.50', 'https://upload.wikimedia.org/wikipedia/en/thumb/c/cc/Hades_cover_art.jpg/220px-Hades_cover_art.jpg'),
(6, 'Call of Duty: Modern Warfare 2', 'PC / PS3 / Xbox360 / PS4 / XboxOne', 'First-person shooter', 'Infinity Ward', '2009-11-10', '8.20', 'https://upload.wikimedia.org/wikipedia/en/thumb/5/52/Call_of_Duty_Modern_Warfare_2_%282009%29_cover.png/220px-Call_of_Duty_Modern_Warfare_2_%282009%29_cover.png'),
(7, 'Counter-Strike: Global Offensive', 'PC / PS3 / Xbox360', 'Tactical first-person shooter', 'Valve', '2012-08-21', '6.50', 'https://upload.wikimedia.org/wikipedia/en/thumb/6/6e/CSGOcoverMarch2020.jpg/220px-CSGOcoverMarch2020.jpg'),
(8, 'The Binding of Isaac', 'PC', 'Roguelike', 'Edmund McMillen', '2011-09-28', '8.80', 'https://upload.wikimedia.org/wikipedia/en/thumb/f/fa/Binding_of_isaac_header.jpg/220px-Binding_of_isaac_header.jpg'),
(9, 'League of Legends', 'PC', 'MOBA', 'Riot Games', '2009-10-27', '8.50', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d8/League_of_Legends_2019_vector.svg/220px-League_of_Legends_2019_vector.svg.png'),
(10, 'The Witcher 3: Wild Hunt', 'PC / Nintendo Switch / PS4 / PS5 / Xbox One / Xbox S', 'Action role-playing', 'CD Projekt Red', '2015-05-19', '9.80', 'https://upload.wikimedia.org/wikipedia/en/thumb/0/0c/Witcher_3_cover_art.jpg/220px-Witcher_3_cover_art.jpg'),
(11, 'Rocket League', 'PC / Nintendo Switch / PS4 / XboxOne', 'Sports', 'Psyonix', '2015-07-07', '6.90', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/Rocket_League_coverart.jpg/220px-Rocket_League_coverart.jpg'),
(12, 'Dead by Daylight', 'PC / Nintendo Switch / PS4 / PS5 / Xbox One / Xbox S', 'Survival horror', 'Behaviour Interactive', '2016-06-14', '7.00', 'https://upload.wikimedia.org/wikipedia/en/thumb/b/b7/Dead_by_Daylight_Steam_header.jpg/220px-Dead_by_Daylight_Steam_header.jpg'),
(13, 'Skul: The hero Slayer', 'PC / Nintendo Switch / PS4 / XboxOne', 'Roguelike', 'SouthPAW Games', '2021-01-21', '7.60', 'https://upload.wikimedia.org/wikipedia/en/thumb/c/cd/SkulTheHeroSlayer_cover.png/220px-SkulTheHeroSlayer_cover.png'),
(14, 'Mass Effect 3', 'PC / PS3 / Xbox360 / WII U', 'Action role-playing', 'BioWare', '2012-03-06', '7.30', 'https://upload.wikimedia.org/wikipedia/en/thumb/b/b0/Mass_Effect_3_Game_Cover.jpg/220px-Mass_Effect_3_Game_Cover.jpg');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `games`
--
ALTER TABLE `games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
