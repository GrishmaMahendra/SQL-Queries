-- Assignment

--Select all the records in which the state is null
Select * from [Laptop Sales (1)] Where [State] is null    --9 Records

--Select all records for transactions that took place in United States and have the Mastercard payment type
Select * from [Laptop Sales (1)] Where Country = 'United States' And Payment_Type = 'Mastercard'   --131 records

--Select all records in which the price is greater than 1200 but less than 1300
Select * from [Laptop Sales (1)] Where Price > 1200 And Price < 1300     --1 record 

--Select the transactions that took place in United Kingdom
Select * from [Laptop Sales (1)] Where Country = 'United Kingdom'  --100 transactions

--Select all the records that took place in France or Canada 
Select * from [Laptop Sales (1)] Where Country = 'France' or Country = 'Canada'   --103 records 

--Select all records in which State is not null in the Product, Price, Country, Latitude and Longtitude
Select Product, Price, Country, Latitude, Longitude from [Laptop Sales (1)] Where State is not null     --989 records 

--Retrive the records in which the last login was after 1/4/2009 22:10
Select * from [Laptop Sales (1)] Where Last_Login > '2009-01-04 22:10:00.0000000'    --989 records 

--Retrive all records in which either Aaron or Zoe was involved 
Select * from [Laptop Sales (1)] where Name Like 'Aaron%' or Name Like 'Zoe%'     --3 records 

--Select all the records for Silver Laptop alone
Select * from [Laptop Sales (1)] Where Product = 'Silver Laptop'     --847 records 

--Get all the records in which the transaction date was after 1/8/2009 16:24
Select * from [Laptop Sales (1)] Where Transaction_date > '2009-01-08 16:24:00.0000000'   --697 records

----Find the number of transactions that have taken place for each product, then group by the product and order it by the product in ascending order 
Select Product from [Laptop Sales (1)] group by Product order by Product Asc    --3 transactions

--Find the number of transactions that have taken place for each Payment type
Select Payment_Type from [Laptop Sales (1)] Order by Payment_Type  --998 transactions

--Select the Count of transactions and the country in which they took place and group them by Country
Select Country COUNT from [Laptop Sales (1)] group by Country    --56 transactions

--Create a database called Housing, Create two tables: Buildings and Rooms in the database 
Create Database Housing

--Create three Columns: Building no, Building name and address in the Buildings table
Create Table Buildings (
       BuildingNum int,
	   BuildingName text,
	   Building_Address ntext )

--Create three Columns: Room no, Room name and Building no in the Rooms table 
Create Table Rooms (
       RoomNum nchar,	   
	   RoomName text,
	   BuildingNum int)

--Insert atleast three records each in both tables 
Insert Into Buildings 
Values (1, 'Aaron Arcade', '342 Rosewood St')
Insert Into Buildings 
Values (2, 'Mazoron Avenue', '231 Mercury St') 
Insert Into Buildings
Values (3, 'Staty Hall', '11 Raven St') 


Alter Table Buildings
Alter Column BuildingNum int Not Null 

Alter Table Buildings 
Add Primary Key (BuildingNum)

Alter Table Rooms
Add Foreign Key (BuildingNum) References
Buildings(BuildingNum)

Insert Into Rooms 
Values (2, 'Safron Clue',1)
Insert Into Rooms 
Values (1, 'Soniyo Tres', 2)
Insert Into Rooms 
Values (3, 'Gray Stay', 3)

--Select all records from the Buildings table and order it by building no in ascending order
Select BuildingNum from Buildings order by BuildingNum Asc     --3 records 


