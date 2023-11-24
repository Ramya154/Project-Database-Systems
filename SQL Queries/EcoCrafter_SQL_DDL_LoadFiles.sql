Create DATABASE EcoCrafter;


create table Product (
ProductID int PRIMARY key ,
ProductName varchar(50),
Description varchar (100),
Price int,
MaterialUsed varchar (50)
)

create table Craftsman (
CraftsmanID int PRIMARY key ,
Name varchar(50),
Skill varchar (100),
Contact varchar (50),
Location varchar (50)
)

create table Customer (
CustomerID int PRIMARY key ,
Name varchar(50),
Contact varchar (50),
City varchar (50)
)


create table CraftOrder(
OrderID int PRIMARY key ,
CustomerID int,
ProductID int,
OrderDate date,
OrderStatus varchar (50),
FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID) ,
FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
)


create table Supplier(
SupplierID int PRIMARY key ,
CompanyName varchar (50),
TypeMaterial varchar(50),
Contact varchar(50),
Sustainable varchar(10)
)




select * from product;
select * from supplier;
select * from craftsman;
select * from customer;
select * from craftorder;





LOAD DATA INFILE 'E:\product.csv' 
INTO TABLE product
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS;

LOAD DATA INFILE 'E:\supplier.csv' 
INTO TABLE supplier  
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS;

LOAD DATA INFILE 'E:\craftsman.csv' 
INTO TABLE craftsman  
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS;

LOAD DATA INFILE 'E:\customer.csv' 
INTO TABLE customer  
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS;

LOAD DATA INFILE 'E:\craftorder.csv' 
INTO TABLE craftorder  
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS;