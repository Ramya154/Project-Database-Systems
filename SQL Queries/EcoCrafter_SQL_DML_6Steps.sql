INSERT INTO product
VALUES (104,'Couch','Furniture Item',60,'for sitting purpose');

INSERT INTO customer
VALUES (4,'Jack','23125434','Illinois');

update  supplier
set CompanyName='MyLLC'
where SupplierID=302;

update  customer
set Name='Leo'
where CustomerID=2;

Delete from customer
where CustomerID=4;

Select * from customer where City = 'New York';

SELECT A.*, B.* FROM craftorder A left join customer B
ON A.CustomerID=B.CustomerID

SELECT A.*, B.* FROM craftorder A left join product B
ON A.ProductID=B.ProductID

SELECT ProductID,sum(Price) FROM product group by ProductID


ALTER TABLE product add column prodcuttype ENUM ('consumeable','Non-consumeable') not null ;

Alter table product modify ProductName varchar(50) not null;
update product set prodcuttype = 'consumeable' where ProductID = 106;


Delete from product where ProductID = 106;


add column CustomerNumber int AUTO_INCREMENT not null unique key;

ALTER TABLE craftorder  MODIFY OrderDate DATE DEFAULT CURRENT_DATE;