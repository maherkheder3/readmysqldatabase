-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 18, 2020 at 02:50 PM
-- Server version: 5.7.29-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bn_Versicherung`
--

-- --------------------------------------------------------

--
-- Table structure for table `Abteilung`
--

CREATE TABLE `Abteilung` (
  `ID` int(11) NOT NULL,
  `Kuerzel` varchar(10) NOT NULL,
  `Bezeichnung` varchar(30) NOT NULL,
  `Ort` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Abteilung`
--

INSERT INTO `Abteilung` (`ID`, `Kuerzel`, `Bezeichnung`, `Ort`) VALUES
(1, 'Fibu', 'Finanzbuchhaltung', 'Dortmund'),
(2, 'Albu', 'Anlagenbuchhaltung', 'Dortmund'),
(3, 'Kore', 'Kostenrechnung', 'Dortmund'),
(4, 'Kopl', 'Kostenplanung', 'Dortmund'),
(5, 'Vert', 'Vertrieb', 'Essen'),
(6, 'Lagh', 'Lagerhaltung', 'Bochum'),
(7, 'Prod', 'Produktion', 'Bochum'),
(8, 'ScAb', 'Schadensabwicklung', 'Essen'),
(9, 'Pers', 'Personalverwaltung', 'Essen'),
(10, 'Soz', 'Sozialverwaltung', 'Essen'),
(11, 'Ausb', 'Ausbildung', 'Herne'),
(12, 'Fue', 'Forschung und Entwicklung', 'Bochum');

-- --------------------------------------------------------

--
-- Table structure for table `Dienstwagen`
--

CREATE TABLE `Dienstwagen` (
  `ID` int(11) NOT NULL,
  `Kennzeichen` varchar(10) NOT NULL,
  `Farbe` varchar(30) DEFAULT NULL,
  `Fahrzeugtyp_ID` int(11) NOT NULL,
  `Mitarbeiter_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Dienstwagen`
--

INSERT INTO `Dienstwagen` (`ID`, `Kennzeichen`, `Farbe`, `Fahrzeugtyp_ID`, `Mitarbeiter_ID`) VALUES
(1, 'DO-WB 421', 'elfenbein', 14, 1),
(2, 'DO-WB 422', 'elfenbein', 14, 3),
(3, 'DO-WB 423', 'elfenbein', 14, 5),
(4, 'DO-WB 424', 'elfenbein', 14, 7),
(5, 'DO-WB 425', 'elfenbein', 14, 9),
(6, 'DO-WB 426', 'elfenbein', 14, 13),
(7, 'DO-WB 427', 'elfenbein', 14, 15),
(8, 'DO-WB 428', 'elfenbein', 14, 17),
(9, 'DO-WB 429', 'elfenbein', 14, 21),
(10, 'DO-WB 4210', 'elfenbein', 14, 23),
(11, 'DO-WB 4211', 'elfenbein', 14, 25),
(12, 'DO-WB 4212', 'elfenbein', 14, 27),
(16, 'DO-WB 111', 'elfenbein', 16, NULL),
(17, 'DO-WB 352', 'gelb', 2, 10),
(18, 'DO-WB 353', 'gelb', 3, 11),
(19, 'DO-WB 354', 'gelb', 4, 12),
(20, 'DO-WB 382', 'gelb', 2, 18),
(21, 'DO-WB 383', 'gelb', 3, 19),
(22, 'DO-WB 384', 'gelb', 4, 20);

-- --------------------------------------------------------

--
-- Table structure for table `Fahrzeug`
--

CREATE TABLE `Fahrzeug` (
  `ID` int(11) NOT NULL,
  `Kennzeichen` varchar(10) NOT NULL,
  `Farbe` varchar(30) DEFAULT NULL,
  `Fahrzeugtyp_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Fahrzeug`
--

INSERT INTO `Fahrzeug` (`ID`, `Kennzeichen`, `Farbe`, `Fahrzeugtyp_ID`) VALUES
(1, 'RE-LM 901', 'ocker', 5),
(2, 'RE-LM 902', 'ocker', 5),
(3, 'RE-LM 903', 'ocker', 5),
(4, 'GE-AB 123', 'schwarz', 22),
(5, 'RE-CD 456', 'ocker', 21),
(6, 'HER-EF 789', 'gelb', 20),
(7, 'BO-GH 102', 'rot', 19),
(8, 'E-IJ 345', 'bordeaux', 18),
(9, 'BO-KL 678', 'blau', 17),
(10, 'RE-MN 901', 'elfenbein', 16),
(11, 'RE-OP 234', 'ocker', 15),
(12, 'RE-QR 567', 'gelb', 14),
(13, 'RE-ST 890', 'rot', 13),
(14, 'RE-UV 135', 'bordeaux', 12),
(15, 'RE-WX 791', 'ocker', 11),
(16, 'RE-YZ 369', 'rot', 10),
(17, 'GE-AC 246', 'elfenbein', 9),
(18, 'GE-EG 892', 'blau', 8),
(19, 'OB-FH 470', 'elfenbein', 7),
(20, 'BOT-KI 357', 'rot', 6),
(21, 'BOR-NO 234', 'gelb', 4),
(22, 'BOR-PQ 567', 'elfenbein', 3),
(23, 'BOR-RS 890', 'gelb', 2),
(24, 'K-XR 147', NULL, 6),
(25, 'HH-MM 783', 'schwarz', 7);

-- --------------------------------------------------------

--
-- Table structure for table `Fahrzeughersteller`
--

CREATE TABLE `Fahrzeughersteller` (
  `ID` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Land` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Fahrzeughersteller`
--

INSERT INTO `Fahrzeughersteller` (`ID`, `Name`, `Land`) VALUES
(1, 'Volkswagen', 'Deutschland'),
(2, 'Opel', 'Deutschland'),
(3, 'Ford', 'Deutschland'),
(4, 'BMW', 'Deutschland'),
(5, 'Audi', 'Deutschland'),
(6, 'Mercedes-Benz', 'Deutschland'),
(7, 'Sachsenring', 'Deutschland'),
(8, 'Saab', 'Schweden'),
(9, 'Volvo', NULL),
(10, 'Renault', 'Frankreich'),
(11, 'Seat', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Fahrzeugtyp`
--

CREATE TABLE `Fahrzeugtyp` (
  `ID` int(11) NOT NULL,
  `Bezeichnung` varchar(30) NOT NULL,
  `Hersteller_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Fahrzeugtyp`
--

INSERT INTO `Fahrzeugtyp` (`ID`, `Bezeichnung`, `Hersteller_ID`) VALUES
(1, 'Polo', 1),
(2, 'Golf', 1),
(3, 'Passat', 1),
(4, 'Kadett', 2),
(5, 'Corsa', 2),
(6, 'Focus', 3),
(7, 'Trabant', 7),
(8, 'Fiesta', 3),
(9, '325', 4),
(10, '525', 4),
(11, 'Z3', 4),
(12, 'A3', 5),
(13, 'A4', 5),
(14, 'A160', 6),
(15, 'W204 (C-Klasse)', 6),
(16, 'W211 (E-Klasse)', 6),
(17, 'Saab 9-3', 8),
(18, 'S40', 9),
(19, 'C30', 9),
(20, 'Clio', 10),
(21, 'ZOE', 10),
(22, 'Twingo', 10),
(23, 'Ibiza', 11),
(24, 'Leon', 11);

-- --------------------------------------------------------

--
-- Table structure for table `Mitarbeiter`
--

CREATE TABLE `Mitarbeiter` (
  `ID` int(11) NOT NULL,
  `Personalnummer` varchar(10) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Vorname` varchar(30) NOT NULL,
  `Geburtsdatum` date NOT NULL,
  `Telefon` varchar(30) DEFAULT NULL,
  `Mobil` varchar(30) DEFAULT NULL,
  `E-Mail` varchar(50) DEFAULT NULL,
  `Raum` varchar(10) DEFAULT NULL,
  `Ist_Leiter` char(1) NOT NULL,
  `Abteilung_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Mitarbeiter`
--

INSERT INTO `Mitarbeiter` (`ID`, `Personalnummer`, `Name`, `Vorname`, `Geburtsdatum`, `Telefon`, `Mobil`, `E-Mail`, `Raum`, `Ist_Leiter`, `Abteilung_ID`) VALUES
(1, '10001', 'Müller', 'Kurt', '1977-01-05', '0231/5554987', '', 'kurt.mueller@unserefirma.de', '112', 'J', 1),
(2, '10002', 'Schneider', 'Daniela', '1980-02-16', '0231/5554988', NULL, 'daniela.schneider@unserefirma.de', '113', 'N', 1),
(3, '20001', 'Meyer', 'Walter', '1963-07-02', '0231/5553967', '', 'walter.meyer@unserefirma.de', '212', 'J', 2),
(4, '20002', 'Schmitz', 'Michael', '1959-08-25', '0231/5556187', NULL, 'michael.schmitz@unserefirma.de', '212', 'N', 2),
(5, '30001', 'Wagner', 'Gaby', '1970-01-18', '0231/5554787', '', 'gaby.wagner@unserefirma.de', '312', 'J', 3),
(6, '30002', 'Feyerabend', 'Werner', '1982-04-01', '0231/5554997', NULL, 'werner.feyerabend@unserefirma.de', '316', 'N', 3),
(7, '40001', 'Langmann', 'Matthias', '1976-03-28', '0231/5551927', '', 'matthias.langmann@unserefirma.de', '412', 'J', 4),
(8, '40002', 'Peters', 'Michael', '1973-11-15', '0231/5554237', NULL, 'michael.peters@unserefirma.de', '412', 'N', 4),
(9, '50001', 'Pohl', 'Helmut', '1980-10-27', '0201/4014186', '(0171) 4123456', 'helmut.pohl@unserefirma.de', '152', 'J', 5),
(10, '50002', 'Braun', 'Christian', '1966-09-05', '0201/4014726', '(0170) 8351647', 'christian.braun@unserefirma.de', '153', 'N', 5),
(11, '50003', 'Polovic', 'Frantisek', '1961-11-26', '0201/4014727', '(0161) 5124793', 'frantisek.polovic@unserefirma.de', '154', 'N', 5),
(12, '50004', 'Kalman', 'Aydin', '1976-12-17', '0201/4014728', '(0161) 4486319', 'aydin.kalman@unserefirma.de', '155', 'N', 5),
(13, '60001', 'Aagenau', 'Karolin', '1950-01-02', '0234/66006001', '', 'Karolin.Aagenau@unserefirma.de', '48', 'J', 6),
(14, '60002', 'Pinkart', 'Petra', '1953-03-04', '0234/66006002', NULL, 'Petra.Pinkart@unserefirma.de', '43', 'N', 6),
(15, '70001', 'Olschewski', 'Pjotr', '1956-05-06', '0234/66007001', '', 'Pjotr.Olschewski@unserefirma.de', '28', 'J', 7),
(16, '70002', 'Nordmann', 'Jörg', '1959-07-08', '0234/66007002', NULL, 'Joerg.Nordmann@unserefirma.de', '27', 'N', 7),
(17, '80001', 'Schindler', 'Christina', '1962-09-10', '0201/4012151', '(0173) 7513901', 'Christina.Schindler@unserefirma.de', '101', 'J', 8),
(18, '80002', 'Aliman', 'Zafer', '1965-11-12', '0201/4012161', '(0171) 9416755', 'Zafer.Aliman@unserefirma.de', '102', 'N', 8),
(19, '80003', 'Langer', 'Norbert', '1968-01-13', '0201/4012171', '(0162) 1357902', 'Norbert.Langer@unserefirma.de', '103', 'N', 8),
(20, '80004', 'Kolic', 'Ivana', '1971-02-14', '0201/4012181', '(0172) 4680135', 'Ivana.Kolic@unserefirma.de', '104', 'N', 8),
(21, '90001', 'Janssen', 'Bernhard', '1974-03-15', '0201/4013111', '', 'Bernhard.Janssen@unserefirma.de', '201', 'J', 9),
(22, '90002', 'Hinkel', 'Martina', '1977-04-16', '0201/4013110', NULL, 'Martina.Hinkel@unserefirma.de', '203', 'N', 9),
(23, '100001', 'Grosser', 'Horst', '1980-05-17', '0201/4013344', '', 'Horst.Grosser@unserefirma.de', '271', 'J', 10),
(24, '100002', 'Friedrichsen', 'Angelina', '1983-06-20', '0201/4013345', NULL, 'Angelina.Friedrichsen@unserefirma.de', '273', 'N', 10),
(25, '110001', 'Eggert', 'Louis', '1986-07-23', '02323/381456', '', 'Louis.Eggert@unserefirma.de', '14', 'J', 11),
(26, '110002', 'Deiters', 'Gisela', '1989-08-26', '02323/381457', NULL, 'Gisela.Deiters@unserefirma.de', '18', 'N', 11),
(27, '120001', 'Carlsen', 'Zacharias', '1965-09-29', '0234/66012001', '', 'Zacharias.Carlsen@unserefirma.de', '61', 'J', 12),
(28, '120002', 'Baber', 'Yvonne', '1957-10-02', '0234/66012002', NULL, 'Yvonne.Baber@unserefirma.de', '62', 'N', 12);

-- --------------------------------------------------------

--
-- Table structure for table `Schadensfall`
--

CREATE TABLE `Schadensfall` (
  `ID` int(11) NOT NULL,
  `Datum` date NOT NULL,
  `Ort` varchar(200) NOT NULL,
  `Beschreibung` varchar(1000) NOT NULL,
  `Schadenshoehe` decimal(16,2) DEFAULT NULL,
  `Verletzte` char(1) NOT NULL,
  `Mitarbeiter_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Schadensfall`
--

INSERT INTO `Schadensfall` (`ID`, `Datum`, `Ort`, `Beschreibung`, `Schadenshoehe`, `Verletzte`, `Mitarbeiter_ID`) VALUES
(1, '2007-02-03', 'Recklinghausen, Bergknappenstr. 144', 'Gartenzaun gestreift', '1234.50', 'N', 14),
(2, '2007-07-11', 'Haltern, Hauptstr. 46', 'beim Ausparken hat BO-GH 102 die Vorfahrt von RE-CD 456 missachtet', '2066.00', 'N', 15),
(3, '2007-12-19', 'Marl, Rathausstr./Halterner Allee', 'beim Abbiegen nach links hat ein fremder Wagen die Vorfahrt missachtet', '3715.60', 'J', 14),
(4, '2008-05-27', 'Recklinghausen, Südgrabenstr. 23', 'Fremdes parkendes Auto gestreift', '1438.75', 'N', 16),
(5, '2008-10-05', 'Dorsten, Oberhausener Str. 18', 'beim Ausparken hat ein fremder Wagen die Vorfahrt missachtet', '1983.00', 'N', 14),
(6, '2009-03-13', 'Marl, Rathausstr./Halterner Allee', 'beim Abbiegen nach links hat ein fremder Wagen die Vorfahrt missachtet', '4092.15', 'J', 15),
(7, '2009-08-21', 'Recklinghausen, Bergknappenstr. 144', 'Laternenpfahl umgefahren', '865.00', 'N', 14),
(8, '2009-08-01', 'L318 Hamm-Flaesheim', 'Wildunfall mit Reh; 10% Wertverlust', '2471.50', 'N', 16);

-- --------------------------------------------------------

--
-- Table structure for table `Tankvorgaenge`
--

CREATE TABLE `Tankvorgaenge` (
  `ID` int(11) NOT NULL,
  `Tankstellen_ID` int(11) NOT NULL,
  `Dienstwagen_ID` int(11) NOT NULL,
  `Datum` date NOT NULL,
  `Kraftstoffmenge` decimal(4,1) NOT NULL,
  `km-Stand` int(11) NOT NULL,
  `Gesamtkosten` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Tankvorgaenge`
--

INSERT INTO `Tankvorgaenge` (`ID`, `Tankstellen_ID`, `Dienstwagen_ID`, `Datum`, `Kraftstoffmenge`, `km-Stand`, `Gesamtkosten`) VALUES
(1, 6, 1, '2019-01-05', '39.9', 25210, '55.43'),
(2, 34, 1, '2019-01-26', '31.0', 25738, '43.12'),
(3, 39, 1, '2019-02-08', '22.6', 26128, '29.40'),
(4, 45, 1, '2019-02-17', '48.9', 26870, '65.76'),
(5, 42, 1, '2019-03-11', '38.4', 27569, '46.66'),
(6, 45, 1, '2019-03-21', '49.3', 28453, '65.92'),
(7, 16, 1, '2019-04-01', '31.9', 29024, '44.58'),
(8, 6, 1, '2019-04-19', '44.2', 29807, '56.50'),
(9, 30, 1, '2019-05-16', '45.7', 30586, '58.80'),
(10, 47, 1, '2019-05-22', '27.7', 31098, '39.65'),
(11, 27, 1, '2019-06-02', '25.5', 31522, '35.44'),
(12, 40, 1, '2019-06-30', '36.2', 32079, '49.00'),
(13, 32, 1, '2019-07-05', '45.8', 32762, '62.40'),
(14, 4, 1, '2019-07-20', '47.1', 33498, '55.10'),
(15, 23, 1, '2019-08-07', '29.5', 33960, '40.37'),
(16, 4, 1, '2019-08-20', '46.0', 34757, '57.22'),
(17, 21, 1, '2019-09-01', '25.6', 35196, '36.10'),
(18, 9, 1, '2019-09-21', '42.9', 36027, '53.26'),
(19, 24, 1, '2019-10-11', '35.1', 36643, '44.00'),
(20, 16, 1, '2019-10-18', '26.0', 37028, '34.54'),
(21, 9, 1, '2019-11-16', '48.5', 37824, '62.59'),
(22, 30, 1, '2019-11-22', '22.9', 38197, '27.59'),
(23, 2, 1, '2019-12-02', '29.6', 38723, '38.87'),
(24, 2, 1, '2019-12-29', '34.3', 39250, '41.86'),
(25, 8, 2, '2019-01-03', '32.3', 24946, '45.00'),
(26, 18, 2, '2019-01-26', '32.2', 25482, '40.82'),
(27, 20, 2, '2019-02-14', '37.3', 26083, '46.89'),
(28, 13, 2, '2019-02-27', '33.6', 26648, '47.08'),
(29, 5, 2, '2019-03-10', '23.9', 27038, '33.44'),
(30, 11, 2, '2019-03-25', '33.7', 27615, '44.86'),
(31, 5, 2, '2019-04-14', '25.8', 27994, '33.90'),
(32, 13, 2, '2019-04-26', '37.9', 28629, '47.91'),
(33, 19, 2, '2019-05-11', '39.4', 29329, '47.54'),
(34, 6, 2, '2019-05-30', '47.8', 30121, '68.46'),
(35, 36, 2, '2019-06-12', '38.2', 30766, '53.17'),
(36, 48, 2, '2019-06-17', '32.6', 31353, '38.80'),
(37, 14, 2, '2019-07-11', '30.0', 31802, '38.34'),
(38, 42, 2, '2019-07-19', '44.7', 32488, '60.80'),
(39, 36, 2, '2019-08-12', '48.2', 33211, '56.35'),
(40, 20, 2, '2019-08-31', '38.4', 33822, '52.40'),
(41, 8, 2, '2019-09-06', '28.9', 34354, '40.63'),
(42, 20, 2, '2019-09-21', '46.5', 35047, '63.26'),
(43, 10, 2, '2019-10-11', '22.9', 35493, '29.99'),
(44, 47, 2, '2019-10-27', '40.2', 36098, '56.57'),
(45, 42, 2, '2019-11-03', '45.1', 36869, '55.36'),
(46, 1, 2, '2019-11-24', '39.0', 37603, '55.26'),
(47, 38, 2, '2019-12-11', '40.0', 38350, '56.65'),
(48, 6, 2, '2019-12-29', '27.1', 38802, '32.21'),
(49, 23, 3, '2019-01-13', '42.0', 25197, '51.75'),
(50, 13, 3, '2019-01-20', '32.6', 25683, '46.61'),
(51, 40, 3, '2019-02-11', '45.7', 26404, '62.72'),
(52, 44, 3, '2019-02-21', '47.5', 27328, '65.51'),
(53, 11, 3, '2019-03-05', '35.8', 27906, '51.50'),
(54, 43, 3, '2019-03-28', '38.5', 28563, '45.21'),
(55, 9, 3, '2019-04-05', '39.1', 29180, '50.86'),
(56, 10, 3, '2019-04-24', '32.0', 29716, '38.22'),
(57, 39, 3, '2019-05-02', '33.9', 30246, '42.60'),
(58, 33, 3, '2019-05-20', '46.7', 31075, '64.90'),
(59, 25, 3, '2019-06-15', '41.7', 31830, '53.31'),
(60, 5, 3, '2019-06-28', '36.0', 32364, '46.35'),
(61, 33, 3, '2019-07-04', '43.5', 33083, '53.39'),
(62, 7, 3, '2019-07-18', '26.8', 33507, '35.86'),
(63, 15, 3, '2019-08-07', '22.6', 33874, '31.77'),
(64, 29, 3, '2019-08-18', '44.5', 34553, '55.07'),
(65, 3, 3, '2019-09-08', '36.5', 35235, '48.22'),
(66, 18, 3, '2019-09-29', '33.7', 35811, '40.03'),
(67, 2, 3, '2019-10-12', '26.7', 36300, '38.36'),
(68, 14, 3, '2019-10-17', '31.4', 36869, '45.02'),
(69, 36, 3, '2019-11-11', '38.2', 37583, '46.16'),
(70, 10, 3, '2019-11-25', '34.5', 38233, '48.39'),
(71, 22, 3, '2019-12-01', '35.9', 38908, '46.72'),
(72, 3, 3, '2019-12-21', '48.5', 39764, '62.21'),
(73, 39, 4, '2019-01-06', '43.8', 25290, '51.62'),
(74, 39, 4, '2019-01-23', '29.6', 25849, '35.31'),
(75, 31, 4, '2019-02-15', '34.1', 26426, '47.97'),
(76, 31, 4, '2019-02-19', '25.2', 26827, '31.97'),
(77, 9, 4, '2019-03-01', '28.9', 27317, '36.14'),
(78, 3, 4, '2019-03-24', '47.9', 28057, '64.79'),
(79, 23, 4, '2019-04-08', '45.0', 28791, '54.62'),
(80, 10, 4, '2019-04-24', '26.8', 29218, '36.79'),
(81, 39, 4, '2019-05-02', '39.2', 29966, '54.28'),
(82, 27, 4, '2019-05-19', '28.3', 30413, '37.20'),
(83, 37, 4, '2019-06-16', '33.9', 31019, '39.91'),
(84, 34, 4, '2019-06-18', '46.5', 31745, '54.82'),
(85, 1, 4, '2019-07-05', '34.7', 32279, '47.81'),
(86, 3, 4, '2019-07-27', '40.9', 32987, '51.24'),
(87, 4, 4, '2019-08-03', '36.3', 33552, '51.29'),
(88, 46, 4, '2019-08-19', '39.0', 34296, '46.29'),
(89, 15, 4, '2019-09-08', '28.0', 34736, '33.64'),
(90, 23, 4, '2019-09-21', '22.6', 35096, '29.05'),
(91, 29, 4, '2019-10-07', '26.7', 35519, '36.70'),
(92, 43, 4, '2019-10-17', '40.8', 36234, '48.67'),
(93, 44, 4, '2019-11-07', '32.0', 36802, '41.89'),
(94, 29, 4, '2019-11-19', '32.1', 37311, '40.31'),
(95, 46, 4, '2019-12-10', '37.8', 38008, '50.83'),
(96, 29, 4, '2019-12-30', '33.0', 38542, '45.20'),
(97, 43, 5, '2019-01-06', '37.2', 25050, '51.94'),
(98, 45, 5, '2019-01-20', '29.7', 25601, '42.36'),
(99, 44, 5, '2019-02-13', '46.8', 26365, '64.28'),
(100, 48, 5, '2019-02-26', '29.8', 26865, '35.47'),
(101, 38, 5, '2019-03-11', '48.5', 27716, '67.33'),
(102, 39, 5, '2019-03-22', '38.8', 28283, '52.95'),
(103, 27, 5, '2019-04-10', '28.1', 28811, '39.81'),
(104, 42, 5, '2019-04-24', '47.1', 29523, '59.82'),
(105, 18, 5, '2019-05-03', '28.9', 30052, '37.48'),
(106, 23, 5, '2019-05-25', '45.0', 30882, '61.97'),
(107, 7, 5, '2019-06-10', '25.1', 31325, '32.22'),
(108, 10, 5, '2019-06-25', '42.2', 31993, '59.57'),
(109, 8, 5, '2019-07-03', '41.2', 32608, '55.35'),
(110, 22, 5, '2019-07-19', '47.3', 33434, '66.76'),
(111, 19, 5, '2019-08-15', '41.0', 34152, '56.83'),
(112, 23, 5, '2019-08-20', '31.7', 34655, '37.09'),
(113, 42, 5, '2019-09-03', '29.6', 35187, '37.32'),
(114, 5, 5, '2019-09-22', '43.1', 35849, '60.71'),
(115, 11, 5, '2019-10-12', '23.9', 36209, '31.98'),
(116, 9, 5, '2019-10-27', '31.7', 36757, '42.92'),
(117, 27, 5, '2019-11-12', '44.8', 37433, '54.97'),
(118, 12, 5, '2019-11-23', '36.7', 37984, '48.50'),
(119, 18, 5, '2019-12-15', '43.7', 38801, '59.65'),
(120, 46, 5, '2019-12-17', '46.4', 39524, '56.27');

-- --------------------------------------------------------

--
-- Table structure for table `Versicherungsgesellschaft`
--

CREATE TABLE `Versicherungsgesellschaft` (
  `ID` int(11) NOT NULL,
  `Bezeichnung` varchar(30) NOT NULL,
  `Ort` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Versicherungsgesellschaft`
--

INSERT INTO `Versicherungsgesellschaft` (`ID`, `Bezeichnung`, `Ort`) VALUES
(1, 'Deutsches Kontor', 'Frankfurt a.M.'),
(2, 'Rheinischer Vers.-Verein', 'Oberhausen'),
(3, 'Knappschaftshilfe', 'Essen'),
(4, 'Hannoversche Gesellschaft', 'Lehrte'),
(5, 'Westfalen-Bruderhilfe', 'Recklinghausen');

-- --------------------------------------------------------

--
-- Table structure for table `Versicherungsnehmer`
--

CREATE TABLE `Versicherungsnehmer` (
  `ID` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Vorname` varchar(30) DEFAULT NULL,
  `Geburtsdatum` date DEFAULT NULL,
  `Fuehrerschein` date DEFAULT NULL,
  `Ort` varchar(30) NOT NULL,
  `PLZ` char(5) NOT NULL,
  `Strasse` varchar(30) NOT NULL,
  `Hausnummer` varchar(10) NOT NULL,
  `Eigener_Kunde` char(1) NOT NULL,
  `Versicherungsgesellschaft_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Versicherungsnehmer`
--

INSERT INTO `Versicherungsnehmer` (`ID`, `Name`, `Vorname`, `Geburtsdatum`, `Fuehrerschein`, `Ort`, `PLZ`, `Strasse`, `Hausnummer`, `Eigener_Kunde`, `Versicherungsgesellschaft_ID`) VALUES
(1, 'Heckel Obsthandel GmbH', '', NULL, NULL, 'Dorsten', '46282', 'Gahlener Str.', '40', 'J', NULL),
(2, 'Antonius', 'Bernhard', '1950-02-01', '1972-04-03', 'Gelsenkirchen', '45892', 'Coesfelder Str.', '23', 'J', NULL),
(3, 'Cornelsen', 'Dorothea', '1951-06-05', '1974-08-07', 'Castrop-Rauxel', '44577', 'Kiefernweg', '9', 'J', NULL),
(4, 'Elberfeld', 'Fritz', '1952-10-09', '1976-12-11', 'Herne', '44625', 'Haberstr.', '13', 'J', NULL),
(5, 'Geissler', 'Helga', '1953-01-13', '1978-02-14', 'Bochum', '44809', 'Steinbankstr.', '15', 'J', NULL),
(6, 'Westermann', 'Yvonne', '1961-08-07', '1994-10-09', 'Oer-Erkenschwick', '45739', 'Ackerstr.', '34', 'J', NULL),
(7, 'Karlovich', 'Liane', '1955-05-19', '1982-06-20', 'Hattingen', '45525', 'Raabestr.', '21', 'J', NULL),
(8, 'Meier', 'Norbert', '1956-07-22', '1984-08-23', 'Recklinghausen', '45665', 'Idastr.', '24', 'J', NULL),
(9, 'Ottensen', 'Petra', '1957-09-25', '1986-10-26', 'Herten', '45699', 'Gablonzer Weg', '27', 'J', NULL),
(10, 'Quantz', 'Reinhard', '1958-11-28', '1988-01-29', 'Datteln', '45711', 'Halterner Allee', '30', 'J', NULL),
(11, 'Schiller', 'Theresia', '1959-03-31', '1990-02-01', 'Haltern', '45721', 'Am Freibad', '32', 'J', NULL),
(12, 'Untermann', 'Volker', '1960-04-02', '1992-06-05', 'Waltrop', '45731', 'Goethestr.', '33', 'J', NULL),
(13, 'Westermann', 'Yvonne', '1961-08-07', '1994-10-09', 'Oer-Erkenschwick', '45739', 'Ackerstr.', '34', 'J', NULL),
(14, 'Xanh', 'Wu Dao', '1962-12-11', '1996-01-13', 'Marl', '45772', 'Bachackerweg', '35', 'J', NULL),
(15, 'Zenep', 'Altun', '1963-02-14', '1998-03-15', 'Gelsenkirchen', '45888', 'Cheruskerstr.', '36', 'J', NULL),
(16, 'Bronkovic', 'Cecilia', '1964-04-16', '2000-05-17', 'Gladbeck', '45966', 'Dechenstr.', '37', 'J', NULL),
(17, 'Deutschmann', 'Evelyn', '1965-06-18', '2002-07-19', 'Oberhausen', '46147', 'Ebereschenweg', '38', 'J', NULL),
(18, 'Friedrichsen', 'Gustav', '1966-08-20', '2004-09-21', 'Bottrop', '46244', 'Falkenweg', '39', 'J', NULL),
(19, 'Jaspers', 'Karol', '1968-12-24', '2008-01-25', 'Borken', '46325', 'Heimser Weg', '1', 'J', NULL),
(20, 'Liebermann', 'Maria', '1970-02-26', '1988-03-27', 'Velen', '46342', 'Inselstr.', '4', 'J', NULL),
(21, 'Grube', 'Claire', '1977-07-05', '1990-04-27', 'Velen', '46342', 'Inselstr.', '4', 'J', NULL),
(22, 'Netep', 'Osman', '1971-05-28', '1990-06-29', 'Raesfeld', '46348', 'Juister Str.', '7', 'J', NULL),
(23, 'Chwielorz', 'Kathrin', '1981-08-18', '2002-12-15', 'Köln', '50173', 'Gartenfelder Str.', '23', 'N', 3),
(24, 'Schwichting', 'Eberhard', '1985-06-27', '2003-08-08', 'Hamburg', '20444', 'Harvestehuder Weg', '23 a', 'N', 2);

-- --------------------------------------------------------

--
-- Table structure for table `Versicherungsvertrag`
--

CREATE TABLE `Versicherungsvertrag` (
  `ID` int(11) NOT NULL,
  `Vertragsnummer` varchar(20) NOT NULL,
  `Abschlussdatum` date NOT NULL,
  `Art` char(2) NOT NULL,
  `Mitarbeiter_ID` int(11) NOT NULL,
  `Fahrzeug_ID` int(11) NOT NULL,
  `Versicherungsnehmer_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Versicherungsvertrag`
--

INSERT INTO `Versicherungsvertrag` (`ID`, `Vertragsnummer`, `Abschlussdatum`, `Art`, `Mitarbeiter_ID`, `Fahrzeug_ID`, `Versicherungsnehmer_ID`) VALUES
(1, 'DG-01', '1974-05-03', 'TK', 9, 1, 1),
(2, 'DG-01', '1974-05-03', 'TK', 9, 2, 1),
(3, 'DG-01', '1974-05-03', 'TK', 9, 3, 1),
(4, 'DH-02', '1990-02-01', 'HP', 10, 12, 10),
(5, 'DO-03', '1994-10-09', 'HP', 9, 14, 12),
(6, 'DB-04', '2008-01-25', 'HP', 9, 21, 19),
(7, 'RH-01', '1976-12-11', 'VK', 10, 5, 3),
(8, 'RD-02', '1988-01-29', 'HP', 9, 11, 9),
(9, 'RM-03', '1996-01-13', 'HP', 9, 15, 13),
(10, 'RD-04', '2006-11-23', 'HP', 9, 20, 18),
(11, 'RR-05', '1990-06-29', 'TK', 9, 23, 21),
(12, 'KH-02', '1986-10-26', 'HP', 9, 10, 8),
(13, 'KG-03', '1998-03-15', 'HP', 9, 16, 14),
(14, 'KV-04', '1988-03-27', 'HP', 10, 22, 20),
(15, 'HE-01', '1980-04-17', 'HP', 10, 7, 5),
(16, 'HR-02', '1984-08-23', 'HP', 9, 9, 7),
(17, 'HG-03', '2000-05-17', 'HP', 9, 17, 15),
(18, 'HB-04', '2004-09-21', 'HP', 9, 19, 17),
(19, 'XC-01', '1974-08-07', 'HP', 10, 4, 2),
(20, 'XH-02', '1982-06-20', 'VK', 9, 8, 6),
(21, 'XW-03', '1992-06-05', 'VK', 10, 13, 11),
(22, 'XO-04', '2002-07-19', 'VK', 9, 18, 16),
(23, 'KNH-234', '2007-03-16', 'TK', 9, 24, 22),
(24, 'RVV-845', '2003-08-08', 'HP', 10, 25, 23),
(25, 'KB-01', '1978-02-14', 'TK', 10, 6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `Zuordnung_SF_FZ`
--

CREATE TABLE `Zuordnung_SF_FZ` (
  `ID` int(11) NOT NULL,
  `Schadensfall_ID` int(11) NOT NULL,
  `Fahrzeug_ID` int(11) NOT NULL,
  `Schadenshoehe` decimal(16,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Zuordnung_SF_FZ`
--

INSERT INTO `Zuordnung_SF_FZ` (`ID`, `Schadensfall_ID`, `Fahrzeug_ID`, `Schadenshoehe`) VALUES
(1, 1, 2, '1234.50'),
(2, 2, 7, '852.00'),
(3, 2, 5, '1214.00'),
(4, 3, 4, '1438.75'),
(5, 3, 24, '2276.85'),
(6, 4, 1, '1234.50'),
(7, 4, 5, '1983.00'),
(8, 5, 2, '1251.50'),
(9, 5, 25, '731.50'),
(10, 6, 3, '2653.40'),
(11, 6, 7, '1438.75'),
(12, 7, 6, '865.00'),
(13, 8, 7, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Abteilung`
--
ALTER TABLE `Abteilung`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Dienstwagen`
--
ALTER TABLE `Dienstwagen`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `DW-FT` (`Fahrzeugtyp_ID`),
  ADD KEY `DW-MI` (`Mitarbeiter_ID`);

--
-- Indexes for table `Fahrzeug`
--
ALTER TABLE `Fahrzeug`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FZ-FT` (`Fahrzeugtyp_ID`);

--
-- Indexes for table `Fahrzeughersteller`
--
ALTER TABLE `Fahrzeughersteller`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Fahrzeugtyp`
--
ALTER TABLE `Fahrzeugtyp`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ist_vom_Hersteller` (`Hersteller_ID`);

--
-- Indexes for table `Mitarbeiter`
--
ALTER TABLE `Mitarbeiter`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `MI-AB` (`Abteilung_ID`);

--
-- Indexes for table `Schadensfall`
--
ALTER TABLE `Schadensfall`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SF-MI` (`Mitarbeiter_ID`);

--
-- Indexes for table `Tankvorgaenge`
--
ALTER TABLE `Tankvorgaenge`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TV-DW` (`Dienstwagen_ID`);

--
-- Indexes for table `Versicherungsgesellschaft`
--
ALTER TABLE `Versicherungsgesellschaft`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Versicherungsnehmer`
--
ALTER TABLE `Versicherungsnehmer`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Versicherungsgesellschaft_ID` (`Versicherungsgesellschaft_ID`);

--
-- Indexes for table `Versicherungsvertrag`
--
ALTER TABLE `Versicherungsvertrag`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `VV-VN` (`Versicherungsnehmer_ID`),
  ADD KEY `VV-MI` (`Mitarbeiter_ID`),
  ADD KEY `VV-FZ` (`Fahrzeug_ID`);

--
-- Indexes for table `Zuordnung_SF_FZ`
--
ALTER TABLE `Zuordnung_SF_FZ`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ZU-SF` (`Schadensfall_ID`),
  ADD KEY `ZU-FZ` (`Fahrzeug_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Dienstwagen`
--
ALTER TABLE `Dienstwagen`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `Mitarbeiter`
--
ALTER TABLE `Mitarbeiter`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `Tankvorgaenge`
--
ALTER TABLE `Tankvorgaenge`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Dienstwagen`
--
ALTER TABLE `Dienstwagen`
  ADD CONSTRAINT `DW-FT` FOREIGN KEY (`Fahrzeugtyp_ID`) REFERENCES `Fahrzeugtyp` (`ID`),
  ADD CONSTRAINT `DW-MI` FOREIGN KEY (`Mitarbeiter_ID`) REFERENCES `Mitarbeiter` (`ID`);

--
-- Constraints for table `Fahrzeug`
--
ALTER TABLE `Fahrzeug`
  ADD CONSTRAINT `FZ-FT` FOREIGN KEY (`Fahrzeugtyp_ID`) REFERENCES `Fahrzeugtyp` (`ID`);

--
-- Constraints for table `Fahrzeugtyp`
--
ALTER TABLE `Fahrzeugtyp`
  ADD CONSTRAINT `ist_vom_Hersteller` FOREIGN KEY (`Hersteller_ID`) REFERENCES `Fahrzeughersteller` (`ID`);

--
-- Constraints for table `Mitarbeiter`
--
ALTER TABLE `Mitarbeiter`
  ADD CONSTRAINT `MI-AB` FOREIGN KEY (`Abteilung_ID`) REFERENCES `Abteilung` (`ID`);

--
-- Constraints for table `Schadensfall`
--
ALTER TABLE `Schadensfall`
  ADD CONSTRAINT `SF-MI` FOREIGN KEY (`Mitarbeiter_ID`) REFERENCES `Mitarbeiter` (`ID`);

--
-- Constraints for table `Tankvorgaenge`
--
ALTER TABLE `Tankvorgaenge`
  ADD CONSTRAINT `TV-DW` FOREIGN KEY (`Dienstwagen_ID`) REFERENCES `Dienstwagen` (`ID`);

--
-- Constraints for table `Versicherungsnehmer`
--
ALTER TABLE `Versicherungsnehmer`
  ADD CONSTRAINT `Versicherungsnehmer_ibfk_1` FOREIGN KEY (`Versicherungsgesellschaft_ID`) REFERENCES `Versicherungsgesellschaft` (`ID`);

--
-- Constraints for table `Versicherungsvertrag`
--
ALTER TABLE `Versicherungsvertrag`
  ADD CONSTRAINT `VV-FZ` FOREIGN KEY (`Fahrzeug_ID`) REFERENCES `Fahrzeug` (`ID`),
  ADD CONSTRAINT `VV-MI` FOREIGN KEY (`Mitarbeiter_ID`) REFERENCES `Mitarbeiter` (`ID`),
  ADD CONSTRAINT `VV-VN` FOREIGN KEY (`Versicherungsnehmer_ID`) REFERENCES `Versicherungsnehmer` (`ID`);

--
-- Constraints for table `Zuordnung_SF_FZ`
--
ALTER TABLE `Zuordnung_SF_FZ`
  ADD CONSTRAINT `ZU-FZ` FOREIGN KEY (`Fahrzeug_ID`) REFERENCES `Fahrzeug` (`ID`),
  ADD CONSTRAINT `ZU-SF` FOREIGN KEY (`Schadensfall_ID`) REFERENCES `Schadensfall` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
