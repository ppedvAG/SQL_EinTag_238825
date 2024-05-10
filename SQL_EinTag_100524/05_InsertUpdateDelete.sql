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

-- Alter => Ich m�chte was an der Struktur von meiner Tabelle was ver�ndern
ALTER TABLE PurchasingOrders
ADD TestDaten INT


-- Spalte aus der bestehenden Tabelle l�schen
ALTER TABLE PurchasingOrders
DROP COLUMN NeueSpalte

-- �bung
/*
	Erstelle mir eine Tabelle Namens "Test"
	diese soll folgende Spalten beeinhalten:

	ID, automatische Inkrementierung, prim�rschl�ssel
	Vorname, VARCHAR(255), nicht NULL
	Nachname, VARCHAR(255), nicht NULL

	Neue Spalte hinzuf�gen -> OrderDate DATE
*/

SELECT * FROM PurchasingOrders

-- INSERT - Hinzuf�gen von Datens�tzen in bestehender Tabelle

-- Alle Spalten befuellen:
INSERT INTO PurchasingOrders
VALUES('20240510', 5, 10)

-- Explizit einzelne Spalten befuellen:
INSERT INTO PurchasingOrders (OrderDate, ProductID, TestDaten)
VALUES ('20240510', 10, 5)

INSERT INTO PurchasingOrders (ProductID, TestDaten, OrderDate)
VALUES (10, 5, '20240510')

-- Ergebnis einer Select-Abfrage k�nnen direkt Inserted werden
INSERT INTO PurchasingOrders
SELECT '20240510', 6, 14

-- DELETE - L�schen von Datens�tzen in einer Tabelle

SELECT * FROM PurchasingOrders

-- Aufpassen! Ohne WHERE Filter werden alle DATENS�TZE gel�scht!
DELETE FROM PurchasingOrders
WHERE ID = 3


-- Prim�r-/Fremdschl�sselbeziehung verhindern das Loeschen von Datens�tze
DELETE FROM Customers
WHERE CustomerID = 'ALFKI'

SELECT * FROM Customers
SELECT * FROM Orders

-- UPDATE - �ndern von Spaltenwerten in einem vorhandenen Datensatz

UPDATE PurchasingOrders
SET TestDaten = 20
WHERE ID = 5

-- �bung
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
