# Creditos
## Proyecto
Implementación del analisis de creditos del año 2019 al 2023 el cuál tiene las siguientes funcionalidades:
- Crédito (Global)
- Tendencia Global
- Año 2019 por trimestre
- Año 2020 por trimestre
- Año 2021 por trimestre
- Año 2022 por trimestre
- Año 2023 por trimestre
- limpieza de datos
- Gráficas: Medidor, gráfico circular, matriz, gráfico de columnas ampliadas, promedio anual (2019,2020,2021,2022,2023), treemap.
- Vista de modelo relacional.
- DAX MoM, YoY
- Script en Microsoft SQL Server para la extracción de datos

The following scripts are provided for the Microsoft SQL Server database/collections creation:

- SQLQuery_Create_Creditos.sql
- SQLQuery_Select_Fechas.sql
- SQL Server Scripts1.ssmssqlproj
- DAX script power bi

## Deploy
## Creating Model
The following model is created in  [Microsoft SQL Server](https://www.microsoft.com/es-mx/sql-server/sql-server-downloads) using [Power BI](https://www.microsoft.com/es-es/power-platform/products/power-bi) for Windows.

The complete specification of the image that contains the application is in the [Dockerfile](Dockerfile)
## Building the model.
Build the model using `Microsoft SQL Server` or `MySQL`, below the commands for using MySQL. More information on how to use it [here](https://dev.mysql.com/doc/). The first version for a standard is frequently used `SQL Server 2022.`


> [!Warning]
>  Don't forget that the commands must be tested before approving any changes; the incorrect use of a statement can delete sensitive data in the table..

`CREATE DATABASE Creditos;
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
GO`

The result should look like this:



  
  ```bash
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
```
`-- Inserta 277 filas de datos de ejemplo
DECLARE @Counter INT = 1;
WHILE @Counter <= 277
BEGIN
    INSERT INTO CreditosTable (ID, Col1, Col2, Col3,Col4,Col5,Col6,Col7,Col8,Col9,Col10,Col11,
	Col12,Col13,Col14,Col15,Col16,Col48)
    VALUES (@Counter);
    SET @Counter = @Counter + 1;
END;
GO`

The result should look like this:



  
  ```bash
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
```


## Running the DB.

Create DB in `Microsoft SQL Server`

`-- Crea la base de datos
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
GO`

Run the DB into `Microsoft SQL Server`, using the following command to insert the data into the table:

`-- Inserta 277 filas de datos de ejemplo
DECLARE @Counter INT = 1;
WHILE @Counter <= 277
BEGIN
    INSERT INTO CreditosTable (ID, Col1, Col2, Col3,Col4,Col5,Col6,Col7,Col8,Col9,Col10,Col11,
	Col12,Col13,Col14,Col15,Col16,Col48)
    VALUES (@Counter);
    SET @Counter = @Counter + 1;
END;
GO`

The expected output after the previous command looks like this:

![image](https://github.com/ecno20/Creditos/assets/144557398/7ac84e91-f3cc-425d-af1d-997a07519cfb)

![image](https://github.com/ecno20/Creditos/assets/144557398/d7b9bf74-0671-4089-9209-df8098ac5e4f)



## Publishing

Publish the Power Bi using the next steep.
>[!Important]
>  If you are not logged in to the hub, use the login command:
> ```docker login {myuser}```
>  then type the password.
 
 Run POWER BI, select Get Data, use the SQL SERVER option.
In the connection window, enter the data you saved, click on Advanced options,
and paste the following SQL query in the text box:

`SELECT * FROM creditos;
SELECT * FROM creditos WHERE ene_19 > 1000;
DELETE FROM creditos WHERE _1 =1;
DELETE FROM creditos WHERE _1 =16;`

The expected output after the previous command looks like this:

![image](https://github.com/ecno20/Creditos/assets/144557398/ef80f9aa-9c37-45a7-aada-fca8172b1713)


Close Power Query, and accept to apply the changes.
Establish the following modeling relationships

The expected output after the previous command looks like this:

![image](https://github.com/ecno20/Creditos/assets/144557398/3e40fbda-1402-489c-9888-2097aeb4dafc)

## Charts & tables

This project use [Power Bi](https://www.microsoft.com/es-es/power-platform/products/power-bi).
![image](https://github.com/ecno20/Creditos/assets/144557398/2daba551-98a7-495f-a3a6-2d5fdc231f0f)

![image](https://github.com/ecno20/Creditos/assets/144557398/4b11439b-fc25-4fea-ac9f-3e68f3b44abf)

## Power DAX MoM

```bash
MoM 19 = 
VAR MesActual = MAX('Año 2019'[Dic-19])
VAR MesAnterior = CALCULATE(MAX('Año 2019'[Ene-19]), DATEADD('Año 2019'[Dic-19], -1, MONTH))
RETURN
[Suma 2019] - MesAnterior
```

```bash
MoM 20 = 
VAR MesActual = MAX('Año 2020'[Dic-20])
VAR MesAnterior = CALCULATE(MAX('Año 2020'[Ene-20]), DATEADD('Año 2020'[Dic-20], -1, MONTH))
RETURN
[Suma 2020] - MesAnterior
```

```bash
MoM 21 = 
VAR MesActual = MAX('Año 2021'[Dic-21])
VAR MesAnterior = CALCULATE(MAX('Año 2021'[Ene-21]), DATEADD('Año 2021'[Dic-21], -1, MONTH))
RETURN
[Suma 2021] - MesAnterior
```

```bash
MoM 22 = 
VAR MesActual = MAX('Año 2022'[Dic-22])
VAR MesAnterior = CALCULATE(MAX('Año 2022'[Ene-22]), DATEADD('Año 2022'[Dic-22], -1, MONTH))
RETURN
[Suma 2022] - MesAnterior
```

```bash
MoM 23 = 
VAR MesActual = MAX('Año 2023'[Sep-23])
VAR MesAnterior = CALCULATE(MAX('Año 2023'[Ene-23]), DATEADD('Año 2023'[Sep-23], -1, MONTH))
RETURN
[Suma 2023] - MesAnterior
```
## Average total
```bash
PromedioAnual2019 = AVERAGE('Año 2019'[Promedio])
```

```bash
PromedioAnual2020 = AVERAGE('Año 2020'[Promedio])
```

```bash
PromedioAnual2021 = AVERAGE('Año 2021'[Promedio]) 
```

```bash
PromedioAnual2022 = AVERAGE('Año 2022'[Promedio]) 
```

```bash
PromedioAnual2023 = AVERAGE('Año 2023'[Promedio])
```
## SUMX
```bash
Suma 2019 = SUMX('Año 2019', [Ene-19] +'Año 2019'[Feb-19]+ 'Año 2019'[Mar-19]+'Año 2019'[Abr-19]+'Año 2019'[May-19]+'Año 2019'[Jun-19]+'Año 2019'[Jul-19]+'Año 2019'[Ago-19]+'Año 2019'[Sep-19]+'Año 2019'[Oct-19]+'Año 2019'[Nov-19]+'Año 2019'[Dic-19])
```

```bash
Suma 2020 = SUMX('Año 2020', [Ene-20] +'Año 2020'[Feb-20]+ 'Año 2020'[Mar-20]+'Año 2020'[Abr-20]+'Año 2020'[May-20]+'Año 2020'[Jun-20]+'Año 2020'[Jul-20]+'Año 2020'[Ago-20]+'Año 2020'[Sep-20]+'Año 2020'[Oct-20]+'Año 2020'[Nov-20]+'Año 2020'[Dic-20])
```
```bash
Suma 2021 = SUMX('Año 2021', [Ene-21] +'Año 2021'[Feb-21]+ 'Año 2021'[Mar-21]+'Año 2021'[Abr-21]+'Año 2021'[May-21]+'Año 2021'[Jun-21]+'Año 2021'[Jul-21]+'Año 2021'[Ago-21]+'Año 2021'[Sep-21]+'Año 2021'[Oct-21]+'Año 2021'[Nov-21]+'Año 2021'[Dic-21])
```

```bash
Suma 2022 = SUMX('Año 2022', 'Año 2022'[Ene-22]+'Año 2022'[Feb-22]+ 'Año 2022'[Mar-22]+'Año 2022'[Abr-22]+'Año 2022'[May-22]+'Año 2022'[Jun-22]+'Año 2022'[Jul-22]+'Año 2022'[Ago-22]+'Año 2022'[Sep-22]+'Año 2022'[Oct-22]+'Año 2022'[Nov-22]+'Año 2022'[Dic-22])
```

```bash
Suma 2023 = SUMX('Año 2023','Año 2023'[Ene-23]+'Año 2023'[Feb-23]+'Año 2023'[Mar-23]+'Año 2023'[Abr-23]+'Año 2023'[May-23]+'Año 2023'[Jun-23]+'Año 2023'[Jul-23]+'Año 2023'[Ago-23]+'Año 2023'[Sep-23])
```

><i class="fas fa-exclamation-triangle"></i></i>
>Es importante aclarar, que para agregar las mismas funciones avanzadas, se puede inicias sesión en Power Bi o incluir funciones avanzadas instalando [Python](https://www.python.org/downloads/)
### Reference Documentation
For further reference, please consider the following sections:

* [Power BI documentation](https://learn.microsoft.com/en-us/power-bi/)
* [SQL Server technical documentation](https://learn.microsoft.com/en-us/sql/sql-server/?view=sql-server-ver16)
* [Ways to install Windows 11](https://support.microsoft.com/en-us/windows/ways-to-install-windows-11-e0edbbfb-cfc5-4011-868b-2ce77ac7c70e)
* [Python 3.12.3 documentation](https://docs.python.org/3/)
* [MySQL HeatWave](https://dev.mysql.com/doc/)
* [Online Help](https://notepad-plus-plus.org/online-help/)
### Guides
The following guides illustrate how to use some features concretely:

* [Get started with Power BI Desktop](https://learn.microsoft.com/en-us/power-bi/fundamentals/desktop-getting-started)
* [SQL Server Guides](https://learn.microsoft.com/en-us/sql/relational-databases/sql-server-guides?view=sql-server-ver16)
* [Windows 11 Clean Installation Process](https://www.microsoft.com/en-us/windowsinsider/cleaninstall)
* [The Python Tutorial](https://docs.python.org/3/tutorial/index.html)
* [MySQL 8.0 Reference Manual](https://dev.mysql.com/doc/refman/8.0/en/tutorial.html)
* [Notepad++ User Manual](https://npp-user-manual.org/)
