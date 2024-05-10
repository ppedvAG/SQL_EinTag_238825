/*
	Datentypen in SQL: 3 große Gruppen


	1. Charakter/String Datentypen:
	char(10) = 'Hallo     ' = 10 Byte Speicherplatz
	nchar(10) = pro Charakter = 2 Byte = 20 Byte => Verwendet UTF-16

	varchar(10) = 'Hallo' = 5 Byte Speicherplatz
	nvarchar(10) = pro Charakter = 2 Byte = 20 Byte => Verwendet UTF-16


	2. Numerischen Datentypen:
	tinyint = 8 Bit = 255
	smallint = 16 Bit = 32k
	int = 32 Bit = 2,14 Mrd
	bigint = 64 Bit = 9,2 Trillion ca.

	bit = 1 oder 0 (True = 1, False = 0) => Es gibt kein Bool!

	decimal(x, y) = x Ziffern insgesamt, davon sind y Nachkommastellen
	decimal(10, 2) = 10 Zifferns insgesamt, davon sind 2 Nachkommastellen
	money = ca. 9,2 Trillion
	smallmoney = ca. 214 Tausend



	3. Datum/Zeit Datentypen:
	time = hh:mm:ss.nnnnnnn
	date = YYYY-MM-DD
	datetime = date + time in Millisekunden = YYYY-MM-DD hh:mm:ss.mmm
	datetime2 = YYYY-MM-DD hh:mm:ss.nnnnnnn
	smalldatetime = YYYY-MM-DD hh:mm:ss

*/