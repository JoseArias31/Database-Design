show databases;
Use my_project;
show tables;
-- 1) I started by creating all the tables based on my Relational Mode: 

-- WEBSITE:

CREATE TABLE IF NOT EXISTS `my_project`.`Website` (
  `Online_Business_Name_ID` INT NOT NULL,
  `Website_Name` VARCHAR(10) NOT NULL,
  `Created_at` TIMESTAMP NULL DEFAULT NULL,
  `Updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`Online_Business_Name_ID`));
  
  -- TRACKING NUMBER:
  
  CREATE TABLE IF NOT EXISTS `my_project`.`Tracking_Number` (
  `Tracking_Number_ID` INT NOT NULL AUTO_INCREMENT,
  `Created_at` TIMESTAMP NULL DEFAULT NULL,
  `Updated_at` TIMESTAMP NULL DEFAULT NULL,
  `Website_Online_Business_Name_ID` INT NOT NULL,
  PRIMARY KEY (`Tracking_Number_ID`) ,
  CONSTRAINT `fk_Tracking_Number_Website1`
    FOREIGN KEY (`Website_Online_Business_Name_ID`)
    REFERENCES `my_project`.`Website` (`Online_Business_Name_ID`));
    
    -- DELIVERY SERVICE:
    
    CREATE TABLE IF NOT EXISTS `my_project`.`Delivery_Service` (
  `Delivery_Service_ID` INT NOT NULL AUTO_INCREMENT,
  `Order_Date` DATE NOT NULL,
  `Delivey_Date` TIMESTAMP NOT NULL,
  `Created_at` TIMESTAMP NULL DEFAULT NULL,
  `Updated_at` TIMESTAMP NULL DEFAULT NULL,
  `Print_Day` INT NOT NULL,
  `Tracking_Number_Tracking_Number_ID` INT NOT NULL,
  PRIMARY KEY (`Delivery_Service_ID`, `Tracking_Number_Tracking_Number_ID`),
  CONSTRAINT `fk_Delivery_Service_Tracking_Number1`
    FOREIGN KEY (`Tracking_Number_Tracking_Number_ID`)
    REFERENCES `my_project`.`Tracking_Number` (`Tracking_Number_ID`));
    
    
    
    
    -- ORDERS:
    
    CREATE TABLE IF NOT EXISTS `my_project`.`Orders` (
  `Order_ID` INT NOT NULL AUTO_INCREMENT,
  `Created_at` TIMESTAMP NULL DEFAULT NULL,
  `Updated_at` TIMESTAMP NULL DEFAULT NULL,
  `Print_Day_ID` INT NOT NULL,
  `Delivery_Service_ID` INT NOT NULL,
  PRIMARY KEY (`Order_ID`),
  CONSTRAINT `FK_Delivery_Service_ID`
  FOREIGN KEY (`Delivery_Service_ID`)
  REFERENCES `my_project`.`Delivery_Service` (`Delivery_Service_ID`));
    
    ALTER TABLE Orders RENAME COLUMN Print_Day_ID to Print_Day;
    -- 2) Now, I want to modify this table (Orders) by adding a new column called "Customer_ID" because each order placed must have a Client ID:
    
    SELECT * From Orders;
    
    ALTER TABLE Orders ADD COLUMN Customer_ID INT;
    
    -- CUSTOMER:
    
    CREATE TABLE IF NOT EXISTS `my_project`.`Customer` (
  `Customer_ID` INT NOT NULL AUTO_INCREMENT,
  `First_Name` VARCHAR(20) NOT NULL,
  `Last_Name` VARCHAR(20) NOT NULL,
  `Phone_number` CHAR(10) NOT NULL,
  `Email_Address` VARCHAR(255) NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `Updated_at` TIMESTAMP NULL DEFAULT NULL,
  `Order_ID` INT NOT NULL,
  `Website_Online_Business_Name_ID` INT NOT NULL,
  PRIMARY KEY (`Customer_ID`),
  CONSTRAINT `FK_Order_ID`
    FOREIGN KEY (`Order_ID`)
    REFERENCES `SenDo`.`Orders` (`Order_ID`),
  CONSTRAINT `fk_Customer_Website1`
    FOREIGN KEY (`Website_Online_Business_Name_ID`)
    REFERENCES `my_project`.`Website` (`Online_Business_Name_ID`));
    
    -- 3) At this point, I made a mistake by adding a column (`Order_ID`) that does not belong to this table so this is the syntax to delete it:
    Select * from Customer;
    ALTER TABLE Customer DROP foreign key FK_Order_ID;
    ALTER TABLE Customer DROP COLUMN Order_ID;
    
    -- I dropped the Foreign Key first because is needed in the foreing key then the column.
    
    ALTER TABLE Customer
    ADD COLUMN Country VARCHAR(255) default "Canada",
    ADD COLUMN City VARCHAR(255) NOT NULL;
    
    SELECT * FROM Customer;
    
    -- FILES:
    
    
CREATE TABLE IF NOT EXISTS `my_project`.`Files` (
  `Document_ID` INT NOT NULL AUTO_INCREMENT,
  `Size_Paper` CHAR(10) NOT NULL,
  `Number_of_Pages` INT NOT NULL,
  `Created_at` TIMESTAMP NULL DEFAULT NULL,
  `Updated_at` TIMESTAMP NULL DEFAULT NULL,
  `Orders_Order_ID` INT NOT NULL,
  PRIMARY KEY (`Document_ID`),
  CONSTRAINT `fk_Files_Orders1`
    FOREIGN KEY (`Orders_Order_ID`)
    REFERENCES `my_project`.`Orders` (`Order_ID`));
    
    -- WEBSITE CUSTOMER:
    
    
    CREATE TABLE IF NOT EXISTS `my_project`.`Website_Customer` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Online_Business_Name_ID` INT NOT NULL,
  `Customer_ID` INT NOT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `FK_Customer_ID_Website`
    FOREIGN KEY (`Customer_ID`)
    REFERENCES `SenDo`.`Customer` (`Customer_ID`),
  CONSTRAINT `FK_Online_Business_Name_ID_Customer`
    FOREIGN KEY (`Online_Business_Name_ID`)
    REFERENCES `my_project`.`Website` (`Online_Business_Name_ID`));
    
    -- CUSTOMER HAS TRACKING NUMBER:
    
    CREATE TABLE IF NOT EXISTS `my_project`.`Customer_has_Tracking_Number` (
    `Customer_Customer_ID` INT NOT NULL,
    `Tracking_Number_Tracking_Number_ID` INT NOT NULL,
    PRIMARY KEY (`Customer_Customer_ID`, `Tracking_Number_Tracking_Number_ID`),
    CONSTRAINT `fk_Customer_has_Tracking_Number_Customer1`
    FOREIGN KEY (`Customer_Customer_ID`)
    REFERENCES `SenDo`.`Customer` (`Customer_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    CONSTRAINT `fk_Customer_has_Tracking_Number_Tracking_Number1`
    FOREIGN KEY (`Tracking_Number_Tracking_Number_ID`)
    REFERENCES `my_project`.`Tracking_Number` (`Tracking_Number_ID`));
    
    
   -- CUSTOMER HAS ORDERS:
    
    CREATE TABLE IF NOT EXISTS `my_project`.`Customer_has_Orders` (
    `Customer_Customer_ID` INT NOT NULL,
    `Orders_Order_ID` INT NOT NULL,
    PRIMARY KEY (`Customer_Customer_ID` , `Orders_Order_ID`),
    CONSTRAINT `fk_Customer_has_Orders_Customer1` FOREIGN KEY (`Customer_Customer_ID`)
        REFERENCES `my_project`.`Customer` (`Customer_ID`)
        ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `fk_Customer_has_Orders_Orders1` FOREIGN KEY (`Orders_Order_ID`)
        REFERENCES `my_project`.`Orders` (`Order_ID`)
);

use SenDo;
    Show tables;
   SELECT * FROM Customer;
    
 -- 4) Alter tables by using commands:
    
 -- I dropped a existing foreign key to add a new FK to update my constraint with  ON UPDATE CASCADE:
    
  ALTER TABLE `my_project`.`Tracking_Number`
  DROP FOREIGN KEY `fk_Tracking_Number_Website1`, 
  ADD CONSTRAINT `fk_Tracking_Number_Website` 
  FOREIGN KEY (`Website_Online_Business_Name_ID`) 
  REFERENCES `my_project`.`Website` (`Online_Business_Name_ID`)
  ON UPDATE CASCADE;
  
  -- 5) By using the MODIFY comand, I can change the parameters of my columns:
  
ALTER TABLE `my_project`.`Tracking_Number` MODIFY COLUMN `Tracking_Number_ID` INT AUTO_INCREMENT;
ALTER TABLE `my_project`.`Tracking_Number` ALTER COLUMN `Website_Online_Business_Name_ID` SET DEFAULT 10;


SELECT * FROM Tracking_Number;

ALTER TABLE `my_project`.`Customer`
    DROP FOREIGN KEY `fk_Customer_Website1`;
    
ALTER TABLE `my_project`.`Customer`
    ADD CONSTRAINT `fk_Customer_Website`
        FOREIGN KEY (`Website_Online_Business_Name_ID`)
        REFERENCES `my_project`.`Website` (`Online_Business_Name_ID`)
        ON UPDATE CASCADE;
        
ALTER TABLE `my_project`.`Customer` MODIFY COLUMN `Website_Online_Business_Name_ID` INT AUTO_INCREMENT;
        
       ALTER TABLE `my_project`.`Customer_has_Orders` 
   DROP foreign key `fk_Customer_has_Orders_Customer1`,
   DROP foreign key `fk_Customer_has_Orders_Orders1`;
   
   ALTER TABLE `my_project`.`Customer_has_Orders` 
   
   ADD CONSTRAINT `fk_Customer_has_Orders_Customer1`
   FOREIGN KEY (`Customer_Customer_ID`)
   REFERENCES `my_project`.`Customer` (`Customer_ID`)
   ON DELETE NO ACTION ON UPDATE CASCADE,
   ADD  CONSTRAINT `fk_Customer_has_Orders_Orders1` FOREIGN KEY (`Orders_Order_ID`)
   REFERENCES `my_project`.`Orders` (`Order_ID`)
   ON DELETE NO ACTION ON UPDATE CASCADE;
   
    ALTER TABLE `my_project`.`Customer_has_Tracking_Number`
    DROP foreign key `fk_Customer_has_Tracking_Number_Customer1`,
    DROP foreign key `fk_Customer_has_Tracking_Number_Tracking_Number1`;
   
    ALTER TABLE    `my_project`.`Customer_has_Tracking_Number`
   
    ADD CONSTRAINT `fk_Customer_has_Tracking_Number_Customer1`
    FOREIGN KEY (`Customer_Customer_ID`)
    REFERENCES `SenDo`.`Customer` (`Customer_ID`)
    ON DELETE NO ACTION ON UPDATE CASCADE,
    ADD CONSTRAINT `fk_Customer_has_Tracking_Number_Tracking_Number1`
    FOREIGN KEY (`Tracking_Number_Tracking_Number_ID`)
    REFERENCES `my_project`.`Tracking_Number` (`Tracking_Number_ID`)
    ON DELETE NO ACTION ON UPDATE CASCADE;


ALTER TABLE `my_project`.`Delivery_Service` 
DROP FOREIGN KEY `fk_Delivery_Service_Tracking_Number1`;

ALTER TABLE `my_project`.`Delivery_Service` 
ADD CONSTRAINT `fk_Delivery_Service_Tracking_Number1`
FOREIGN KEY (`Tracking_Number_Tracking_Number_ID`)
REFERENCES `my_project`.`Tracking_Number` (`Tracking_Number_ID`)
ON UPDATE CASCADE;

ALTER TABLE `my_project`.`Delivery_Service` MODIFY COLUMN `Delivery_Service_ID` INT AUTO_INCREMENT;

ALTER TABLE  `my_project`.`Files` 
DROP FOREIGN KEY  `fk_Files_Orders1`;
  
ALTER TABLE `my_project`.`Files` 
ADD CONSTRAINT `fk_Files_Orders1`
FOREIGN KEY (`Orders_Order_ID`)
REFERENCES `my_project`.`Orders` (`Order_ID`)
ON UPDATE CASCADE;
 
 ALTER TABLE `my_project`.`Files` MODIFY COLUMN `Document_ID` INT AUTO_INCREMENT;
    
ALTER TABLE `my_project`.`Orders`
DROP FOREIGN KEY `FK_Delivery_Service_ID`;

ALTER TABLE `my_project`.`Orders`
ADD  CONSTRAINT `FK_Delivery_Service_ID`
FOREIGN KEY (`Delivery_Service_ID`)
REFERENCES `my_project`.`Delivery_Service` (`Delivery_Service_ID`)
ON UPDATE CASCADE;

ALTER TABLE `my_project`.`Orders` MODIFY COLUMN `Order_ID` INT AUTO_INCREMENT;
ALTER TABLE `my_project`.`Orders` MODIFY COLUMN `Print_Day_ID`  TIMESTAMP;
ALTER TABLE `my_project`.`Website` MODIFY COLUMN `Online_Business_Name_ID` INT NOT NULL DEFAULT 1;   -- Default feature
ALTER TABLE `my_project`.`Website` ALTER COLUMN `Website_Name` SET DEFAULT 'SenDo';

ALTER TABLE `my_project`.`Website_Customer`
DROP FOREIGN KEY `FK_Customer_ID_Website`,
DROP FOREIGN KEY `FK_Online_Business_Name_ID_Customer`;

ALTER TABLE `my_project`.`Website_Customer`
ADD CONSTRAINT `FK_Customer_ID_Website`
FOREIGN KEY (`Customer_ID`)
REFERENCES `SenDo`.`Customer` (`Customer_ID`)
ON UPDATE CASCADE,
ADD  CONSTRAINT `FK_Online_Business_Name_ID_Customer`
FOREIGN KEY (`Online_Business_Name_ID`)
REFERENCES `my_project`.`Website` (`Online_Business_Name_ID`)
ON UPDATE CASCADE;


-- It finishes the updating constraing by adding ON UPDATE CASCADE to every Foreing Key and also, I modified some columns with the INT AUTO-INCREMENT feauture.

-- 6) SCRIPTS


SELECT MIN(Total_Purchase) from Orders;

SELECT MAX(Number_Of_Pages), Size_Paper from Files GROUP BY Size_Paper;

SELECT COUNT(Customer_ID) FROM Customer;

SELECT AVG(Total_Purchase) from Orders;

SELECT Size_Paper From Files;  ---  SELECT DISTINCT Size_Paper from Files;

SELECT First_Name, Last_Name, Country FROM Customer GROUP BY Customer_ID;

-- JOIN * FROM many TABLES

SELECT * FROM Orders JOIN Files ON Orders.Order_ID = Files.Orders_Order_ID JOIN Customer ON Orders.Customer_ID = Customer.Customer_ID;

-- JOIN Tables with Specifit Columns:
-- 

SELECT Customer.First_Name as "First Name", Customer.Last_Name as "Last Name", Customer.City, Orders.Total_Purchase as "Total Purchase"
FROM Customer
JOIN Orders 
ON Customer.Customer_ID = Orders.Customer_ID;

-- I want to see in my table: First Name, Last Name, Number of pages printed, Print Day and total Purchase within 3 cities (Toronto, Quebec, Ottawa)

Select First_Name, Last_Name, o.Print_Day_ID, o.Total_Purchase, f.Number_of_Pages, c.City
FROM Customer AS c
JOIN Orders AS o
ON c.Customer_ID = o.Customer_ID
JOIN Files AS f
ON o.Order_ID = f.Orders_Order_ID 
WHERE c.City IN ("Toronto", "Quebec", "Ottawa");

-- I want to see a table with First Name, Last Name, Total Purchase with orders for more than $50.00 and Group by customer ID between 200 - 210 and make it ascendant. 


SELECT First_Name, Last_Name, City, o.Total_Purchase
FROM Customer as c
JOIN Orders as o
ON c.Customer_ID = o.Customer_ID 
WHERE c.Customer_ID between 200 and 210 HAVING (o.Total_Purchase) > 50
ORDER BY  o.Total_Purchase ASC;


