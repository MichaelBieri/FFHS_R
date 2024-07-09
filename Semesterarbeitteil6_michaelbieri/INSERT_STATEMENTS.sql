USE `eTrottis`;

-- Kunden 2 aus der gleichen Ortschaft --
INSERT INTO `Kunde` (`idKunde`,`Name`, `Vorname`, `Wohnort`) VALUES
(1,'Hans','Zimmermann','Gleichdorf'), -- Kommen aus selben dorf wie Kunde 2 --
(2,'Rudi','Rübel','Gleichdorf'), -- Kommt aus selben dorf wie Kunde 1 --
(3,'Eugen','Elch','Eugendorf'), 
(4,'Peter','Maffai','Peterdorf'); -- Kunde kauft nichts --

-- 8 Verkaeufe --
INSERT INTO `Bestellung` (`idBestellung`,`Datum`, `Kunde_idKunde`) VALUES
(5,'2024-07-01','1'), -- 8 Verkäufe --
(6,'2024-07-02','2'),
(7,'2024-07-03','3'),
(8,'2024-07-04','1'),
(9,'2024-07-05','2'),
(10,'2024-07-06','3'),
(11,'2024-07-07','1'),
(12,'2024-07-08','2');

-- Details zur Bestellung --
INSERT INTO `Bestelldetails` (`Bestellung_idBestellung`, `idBestelldetails`, `Menge`, `Artikel_idArtikel`) VALUES
(5, 13, 100, 21),
(6, 14, 150, 22),
(7, 15, 200, 23),
(8, 16, 170, 21),
(9, 17, 270, 22),
(10, 18, 300, 23),
(11, 19, 220, 21),
(12, 20, 190, 22);

-- 4 Artikel --
INSERT INTO `Artikel` (`idArtikel`, `Bezeichnung`, `Preis`) VALUES
(21, 'E-Scooter A', 299.99),
(22, 'E-Scooter B', 399.99),
(23, 'E-Scooter C', 499.99),
(24, 'E-Scooter D', 599.99); -- Hat im table Lagerbestand den Bestand 0--

-- NEU: Zu jedem Artikel gibt es ein Lagerbestand, 4 Lagerbestände --
INSERT INTO `Lagerbestand` (`idLagerbestand`, `Lagermenge`, `Artikel_idArtikel`) VALUES
(46, '1000', '21'),
(47, '2000', '22'),
(48, '3000', '23'),
(49, '0', '24'); -- Bestand 0 --

-- 3 Lieferanten --
INSERT INTO `Lieferant` (`idLieferant`, `Name`, `Adresse`, `Telefonnummer`) VALUES
(30, 'Lieferant A', 'Adresse A', '123456789'),
(31, 'Lieferant B', 'Adresse B', '987654321'),
(32, 'Lieferant C', 'Adresse C', '555555555');

-- Zu jeder der 6 Lieferungen gibt es ein Lieferscheinkopf --
INSERT INTO `Lieferscheinkopf` (`idLieferscheinkopf`, `Lieferdatum`, `Lieferant_idLieferant`) VALUES
(40, '2024-06-01', 30), -- Lieferung id 40 --
(41, '2024-06-02', 31),
(42, '2024-06-03', 32),
(43, '2024-06-04', 30),
(44, '2024-06-05', 31),
(45, '2024-06-05', 32);

-- Zu jeder Lieferung gibt es Lieferdetails --
INSERT INTO `Lieferdetails` (`Lieferscheinkopf_idLieferscheinkopf`, `idLieferdetails`, `Menge`, `Artikel_idArtikel`) VALUES
(40, 50, 100, 21),
(41, 51, 150, 22),
(42, 52, 200, 23),
(43, 53, 170, 21),
(44, 54, 270, 22),
(45, 55, 300, 23);