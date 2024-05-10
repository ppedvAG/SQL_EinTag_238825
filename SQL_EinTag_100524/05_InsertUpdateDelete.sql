USE Northwind

/*
	
	CREATE / ALTER / DROP

*/

-- IMMER wenn wir Datenbankobjekte "bearbeiten" gelten diese Befehle

CREATE TABLE PurchasingOrders
(

	ID INT IDENTITY(1, 1) PRIMARY KEY,
	OrderDate DATE NOT NULL,
	ProductID INT NOT NULL
)

SELECT * FROM PurchasingOrders

-- Alter => Ich möchte was an der Struktur von meiner Tabelle was verändern
ALTER TABLE PurchasingOrders
ADD TestDaten INT


-- Spalte aus der bestehenden Tabelle löschen
ALTER TABLE PurchasingOrders
DROP COLUMN NeueSpalte

-- Übung
/*
	Erstelle mir eine Tabelle Namens "Test"
	diese soll folgende Spalten beeinhalten:

	ID, automatische Inkrementierung, primärschlüssel
	Vorname, VARCHAR(255), nicht NULL
	Nachname, VARCHAR(255), nicht NULL

	Neue Spalte hinzufügen -> OrderDate DATE
*/

SELECT * FROM PurchasingOrders

-- INSERT - Hinzufügen von Datensätzen in bestehender Tabelle

-- Alle Spalten befuellen:
INSERT INTO PurchasingOrders
VALUES('20240510', 5, 10)

-- Explizit einzelne Spalten befuellen:
INSERT INTO PurchasingOrders (OrderDate, ProductID, TestDaten)
VALUES ('20240510', 10, 5)

INSERT INTO PurchasingOrders (ProductID, TestDaten, OrderDate)
VALUES (10, 5, '20240510')

-- Ergebnis einer Select-Abfrage können direkt Inserted werden
INSERT INTO PurchasingOrders
SELECT '20240510', 6, 14

-- DELETE - Löschen von Datensätzen in einer Tabelle

SELECT * FROM PurchasingOrders

-- Aufpassen! Ohne WHERE Filter werden alle DATENSÄTZE gelöscht!
DELETE FROM PurchasingOrders
WHERE ID = 3


-- Primär-/Fremdschlüsselbeziehung verhindern das Loeschen von Datensätze
DELETE FROM Customers
WHERE CustomerID = 'ALFKI'

SELECT * FROM Customers
SELECT * FROM Orders

-- UPDATE - Ändern von Spaltenwerten in einem vorhandenen Datensatz

UPDATE PurchasingOrders
SET TestDaten = 20
WHERE ID = 5

-- Übung
/*
	Trage dich selber in deine Tabelle ein! 

	Danach aktualisierst du deinen Nachnamen in "Mustermann" um
*/


-- Transactions

BEGIN TRANSACTION

UPDATE PurchasingOrders
SET TestDaten = 10
WHERE ID = 5

COMMIT 
ROLLBACK

SELECT * FROM PurchasingOrders
