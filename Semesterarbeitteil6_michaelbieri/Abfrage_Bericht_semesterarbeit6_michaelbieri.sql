-- 1. Anzahl Kunden je Ortschaft, Liste zeitgt die Ortschaft + Anzahl Kunden --
SELECT Wohnort, COUNT(*) AS AnzahlKunden
FROM Kunde
GROUP BY Wohnort;

-- 2. Gesamtumsatz je Monat, Monat/Jahr + Gesamtumsatz
SELECT 
    DATE_FORMAT(b.Datum, '%Y-%m') AS Monat,
    SUM(bd.Menge * a.Preis) AS Gesamtumsatz
FROM 
    Bestellung b -- Zuweisung b --
JOIN -- Zuweisung von bd an Bestelldetails und Verknuepfung Bestelldetails/Bestellung --
    Bestelldetails bd ON b.idBestellung = bd.Bestellung_idBestellung
JOIN -- Zuweisung von a an Bestelldetails von Artikel --
    Artikel a ON bd.Artikel_idArtikel = a.idArtikel
GROUP BY
    DATE_FORMAT(b.Datum, '%Y-%m')
ORDER BY 
    Monat;

-- Gesamtumsatz --
SELECT
    SUM(bd.Menge * a.Preis) AS Gesamtsumme
FROM -- Für die Menge --
    Bestelldetails bd
JOIN -- Für den Preis --
    Artikel a ON bd.Artikel_idArtikel = a.idArtikel;

-- 3. Kunde mit höchstem Umsatz, Kundennamen + Umsatz --
-- Tabelle kunde k und selektoren --
SELECT 
    k.idKunde,
    k.Name,
    k.Vorname,
    SUM(bd.Menge * a.Preis) AS Umsatz
FROM 
    Kunde k
JOIN -- Für Kunde --
    Bestellung b ON k.idKunde = b.Kunde_idKunde
JOIN -- Für Menge --
    Bestelldetails bd ON b.idBestellung = bd.Bestellung_idBestellung
JOIN -- Für Preis--
    Artikel a ON bd.Artikel_idArtikel = a.idArtikel
GROUP BY 
    k.idKunde, k.Name, k.Vorname
ORDER BY 
    Umsatz;

-- 4.Lagerbestand zu einem bestimmten Artikel --
-- Lagerbestand am Anfang --
SELECT 
    Lagerbestand.Artikel_idArtikel,
    Lagerbestand.Lagermenge
FROM 
    Lagerbestand
ORDER BY 
    Lagerbestand.Artikel_idArtikel;
    
-- Lagerbestand am Ende --
SELECT 
    a.idArtikel,
    a.Bezeichnung,
    IFNULL(lager.Lagermenge, 0) + COALESCE(lieferungen.summe_lieferung, 0) - COALESCE(bestellungen.summe_bestellung, 0) AS aktueller_Lagerbestand
FROM 
    Artikel a
LEFT JOIN (
    SELECT 
        Artikel_idArtikel,
        SUM(Menge) AS summe_lieferung
    FROM 
        Lieferdetails
    GROUP BY 
        Artikel_idArtikel
) lieferungen ON a.idArtikel = lieferungen.Artikel_idArtikel
LEFT JOIN (
    SELECT 
        Artikel_idArtikel,
        SUM(Menge) AS summe_bestellung
    FROM 
        Bestelldetails
    GROUP BY 
        Artikel_idArtikel
) bestellungen ON a.idArtikel = bestellungen.Artikel_idArtikel
LEFT JOIN Lagerbestand lager ON a.idArtikel = lager.Artikel_idArtikel;
