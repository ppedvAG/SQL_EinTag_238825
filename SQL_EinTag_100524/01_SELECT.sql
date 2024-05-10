-- USE Datenbanknamen -> wechselt unsere angesprochene Datenbank
-- Alternativ "oben link" im Drop-Down Men�
USE Northwind -- -> STRG + E => Ausf�hren

-- einzeiliger Kommentar
/*
	Mehrzeiliger
	Kommentar
*/

-- SELECT
/*
	SELECT: w�hlt Spalten aus, die im
	Ergebnisfenster angezeigt werden sollen
*/
SELECT * FROM Customers -- * = alle Spalten der angesprochenen Tabelle

-- "Custom"-Werte und mathematische Operationen ebenfalls nutzen

SELECT 100

SELECT 'Hallo' --> Charakter/String immer in Hochkomma

SELECT 'Hallo', 100

-- Mathematische Operation
SELECT 100+5, 7*8

-- SQL ist nicht case-sensitive, Formatierung spielt keine Rolle, keine Semikolons n�tig
sElEcT			cOunTry,

	cOmPanYNamE
	FrOm cUstOmErs

SELECT ContactName, City, Phone FROM Customers

-- ORDER BY => Aufsteigende Sortierung
SELECT * FROM Customers 
ORDER BY City ASC -- => Ascending = Aufsteigend

-- Absteigende Sortierung
SELECT * FROM Customers 
ORDER BY City  DESC -- => Descending = Absteigend
-- ORDER BY ist Syntaktisch immer am Ende
-- DESC => DESCENDING => Absteigend
-- ASC => ASCENDING => Aufsteigend

-- Auch mehrere Spalten sortieren
SELECT City, CompanyName FROM Customers
ORDER BY City DESC, CompanyName ASC		-- 2 Spalten	1. Spalte Z-A | 2. Spalte A-Z
-------------------------------------------------------

-- TOP X gibt nur die ersten X Zeilen aus
SELECT TOP 10 * FROM Customers
SELECT TOP 100 * FROM Customers -- => Zeigt nur 91 Zeilen an, mehr geht nicht

-- Geht auch mit %-Angaben
-- TOP X Percent
SELECT TOP 10 Percent * FROM Customers

SELECT * FROM Orders

-- Die 10 gr��ten Frachkosten in der
-- Orders Tabelle
SELECT TOP 10 * FROM Orders
ORDER BY Freight DESC

-- Die 10 kleinsten Frachkosten in der
-- Orders Tabelle
SELECT TOP 10 * FROM Orders
ORDER BY Freight

/*
	WICHTIG!: "BOTTOM" X existiert garnicht, Ergebnis einfach "umdrehen" mit ORDER BY
*/
----------------------------------------------------

-- Duplikate "filtern" mit SELECT DISTINCT
-- Filtert alle Ergebnisse/Datens�tze deren Werte exakt gleich sind

SELECT DISTINCT Country FROM Customers

SELECT DISTINCT City, Country FROM Customers
--------------------------------------------------------------

-- UNION f�hrt mehrere Ergebnistabellen vertikal in eine Tabelle zusammen
-- UNION macht automatisch ein DISTINCT mit
-- Spaltenanzahl muss gleich sein, sowie die Datentypen miteinander kompatibel sein m�ssen

SELECT * FROM Customers -- 91 Zeilen
UNION
SELECT * FROM Customers -- 91 Zeilen

-- mit UNION ALL wird KEIN DISTINCT ausgef�hrt
SELECT * FROM Customers
UNION ALL
SELECT * FROM Customers

SELECT 100, 'Hallo'
UNION
SELECT 5, 'Tsch�ss'

SELECT 'Hallo', 100, 'Hallo'
UNION
SELECT 5, 'Tsch�ss'

----------------------------------
-- Spalten "umbennen" �ber Aliase bzw "as"
SELECT 100 as Zahl, 'Hallo' as Begr��ung 

SELECT City as Stadt FROM Customers

-- Aliase k�nnen auch f�r Tabellennamen vergeben werden
SELECT * FROM Customers as cus


-- �bung
-- 1. Selektiere mir die Spalten: OrderDate, ShippedDate von der Tabelle "Orders"
SELECT OrderDate, ShippedDate FROM Orders

-- 2. Selektiere mir die 10 gr��ten Produkte mit dem gr��ten UnitPrice in der Tabelle "Products"
SELECT TOP 10 * FROM Products
ORDER BY UnitPrice DESC

-- 3. Selektiere mir die 10 kleinsten Produkte mit dem kleinsten UnitPrice in der Tabelle "Products"
SELECT TOP 10 * FROM Products
ORDER BY UnitPrice 
