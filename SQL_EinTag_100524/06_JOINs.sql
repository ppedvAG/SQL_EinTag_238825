USE Northwind

-- Problem: Die Customers Tabelle und die Orders Tabelle in einem Ergebnisfenster ausgeben
SELECT * FROM Customers
SELECT * FROM Orders

/*
	JOIN Syntax:
	SELECT * FROM Tabelle A 
	JOIN Tabelle B ON A.Spalte1 = B.Spalte1
*/

SELECT * FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
--WHERE Customers.CustomerID = 'ALFKI'

-- Aliase
SELECT * FROM Customers as cus
JOIN Orders as Ord ON cus.CustomerID = Ord.CustomerID

-- Order Details mit Orders Tabelle joinen
SELECT * FROM [Order Details]
JOIN Orders ON  Orders.OrderID = [Order Details].OrderID

-------------------------------------------------
-- OUTER Joins: LEFT/RIGHT und FULL OUTER

-- LEFT: Z: 189 & 502
SELECT * FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID

-- RIGHT:
SELECT * FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID

--JOIN "invertieren", d.h keine Schnittmenge anzeigen, durch filtern nach NULL:
SELECT * FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE Customers.CustomerID IS NULL -- => Bestellungen mit keinem Kunden?

SELECT * FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.OrderID IS NULL -- => Kunden aber ohne Bestellung?

-- FULL OUTER:
SELECT * FROM Customers
FULL OUTER JOIN Orders ON Orders.CustomerID = Customers.CustomerID

-- Übung:
-- 1. Alle Produkte (ProductNames) aus den Kategorien "Beverages" und "Produce"
-- (CategoryName in Categories)
--> Products - Categories Tables
SELECT * FROM Categories
JOIN Products ON Categories.CategoryID = Products.CategoryID
WHERE CategoryName IN('Produce', 'Beverages')

-- 2. Wieviele Bestellungen haben Kunden aus Argentinien aufgegeben? (Anzahl OrderIDs bzw.
-- Anzahl Ergebniszeilen)
-- Tabellen: Customers - Orders
SELECT * FROM Orders
JOIN Customers ON Customers.CustomerID = Orders.CustomerID
WHERE Country = 'Argentina'

-- 3. Was war die größte Bestellmenge (Quantity) von Chai Tee (ProductName = 'Chai')?
-- Tabellen: [Order Details] - Products
SELECT TOP 1 * FROM Products
JOIN [Order Details] ON Products.ProductID = [Order Details].ProductID
WHERE ProductName = 'Chai'
ORDER BY Quantity DESC