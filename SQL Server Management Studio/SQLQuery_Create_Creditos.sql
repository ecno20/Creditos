-- Crea la base de datos
CREATE DATABASE Creditos;
GO
USE creditos;
GO
CREATE TABLE CreditosTable
(
    ID INT PRIMARY KEY,
    Col1 INT, Col2 INT, Col3 INT, Col4 INT, Col5 INT, 
    Col6 INT, Col7 INT, Col8 INT, Col9 INT, Col10 INT,
	  Col11 INT, Col12 INT, Col13 INT, Col14 INT, Col15 INT, 
    Col16 INT, Col17 INT, Col18 INT, Col19 INT, Col20 INT,
	    Col21 INT, Col22 INT, Col23 INT, Col24 INT, Col25 INT, 
    Col26 INT, Col27 INT, Col28 INT, Col29 INT, Col30 INT,
	  Col31 INT, Col32 INT, Col33 INT, Col34 INT, Col35 INT, 
    Col36 INT, Col37 INT, Col38 INT, Col39 INT, Col40 INT,
	Col41 INT,Col42 INT,Col43 INT,Col44 INT,Col45 
	INT,Col46 INT,Col47 INT,Col48 INT,
);
GO

-- Inserta 277 filas de datos de ejemplo
DECLARE @Counter INT = 1;
WHILE @Counter <= 277
BEGIN
    INSERT INTO CreditosTable (ID, Col1, Col2, Col3,Col4,Col5,Col6,Col7,Col8,Col9,Col10,Col11,
	Col12,Col13,Col14,Col15,Col16,Col48)
    VALUES (@Counter);
    SET @Counter = @Counter + 1;
END;
GO
