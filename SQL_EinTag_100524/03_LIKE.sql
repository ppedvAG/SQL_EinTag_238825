USE Northwind

-- LIKE: F�r ungenaue Filterung/Suche k�nnen wir LIKE verwenden
-- (statt Vergleichsoperatoren)


-- Wildcards
-- "%"-Zeichen: Beliebige Symbol, beliebig viele davon
SELECT * FROM Customers
WHERE ContactTitle LIKE '%Manager%'

-- "_"-Zeichen: EIN beliebiges Symbol
SELECT CompanyName FROM Customers
WHERE CompanyName LIKE '_l%'

-- "[]"-Zeichen: Alles in den Klammern ist ein g�ltiges Symbol
SELECT PostalCode FROM Customers
WHERE PostalCode LIKE '[012345]%'

-- "[a-z] oder gegenteil mit ^ [^a-z]"
SELECT PostalCode FROM Customers
WHERE PostalCode LIKE '[0-5]%'

SELECT PostalCode FROM Customers
WHERE PostalCode LIKE '[^0-5]%'

-- Sonderf�lle: % '
SELECT * FROM Customers
WHERE CompanyName LIKE '%['']%'

SELECT * FROM Customers
WHERE CompanyName LIKE '%[%]%'