USE Northwind

-- WHERE: filtert Ergebniszeilen
SELECT * FROM Customers
WHERE Country = 'Germany'

-- = filtert nach exakten Treffern
SELECT * FROM Orders
WHERE Freight = 100

-- alle boolschen Vergleichsoperatoren
-- (>, <, >=, <=, != bzw. <>)

-- alle Frachkosten die größer sind als 500
SELECT * FROM Orders
WHERE Freight > 500

SELECT * FROM Orders
WHERE Freight < 500

-- Alle Länder haben außer germany
SELECT * FROM Customers
WHERE Country != 'Germany'

-- Kombinieren mit AND oder OR
-- AND = Beide Bedingungen müssen "wahr" sein
-- OR = Ein Ausdruck muss wahr sein
-- Kann beliebig kombiniert werden

SELECT * FROM Customers
WHERE Country = 'Germany' AND City = 'Berlin'

SELECT * FROM Customers
WHERE Country = 'Germany' OR City = 'Berlin'

-- "Vorsicht" bei kombination aus AND und OR
SELECT * FROM Customers
WHERE (City = 'Paris' OR City = 'Berlin') AND Country = 'Germany'
-- AND "ist stärker bindent" als OR, Notfalls klammern setzen!

SELECT * FROM Orders
WHERE Freight > 100 AND Freight < 500

-- Alternativ mit BETWEEN, Randwerte mit dabei
SELECT * FROM Orders
WHERE Freight BETWEEN 100 AND 500

SELECT * FROM Customers
WHERE Country = 'Brazil' OR Country = 'Germany' OR Country = 'France'

-- Alternativ IN (Wert1, Wert2, Wert3, ...)
SELECT * FROM Customers
WHERE Country IN ('Brazil', 'Germany', 'France')

-- Übung:
-- 1. Alle ContactNames die als Title "Owner" haben
SELECT * FROM Customers
WHERE ContactTitle = 'Owner'

-- 2. Alle [Order Details] die die ProductID 43 bestellt haben
SELECT * FROM [Order Details]
WHERE ProductID = 43

-- 3. Alle Kunden aus Paris, Berlin, Madrid oder Brasilien
SELECT * FROM Customers
WHERE City IN ('Paris', 'Berlin', 'Madrid') OR Country = 'Brazil'

-- 4. Filtern mit/nach NULL Werten
-- NULL bedeutet KEIN Wert eingetragen, nicht dasselbe wie " " Leerzeichen

-- Filtern nach NULL
SELECT * FROM Customers
WHERE Fax IS NULL

-- NULL rausfiltern
SELECT * FROM Customers
WHERE Fax IS NOT NULL
