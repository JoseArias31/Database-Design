SELECT * FROM my_project.Customer;

DELETE FROM Customer;

INSERT INTO Customer (First_Name, Last_Name, Phone_number, Email_Address, created_at, Updated_at, Website_Online_Business_Name_ID, City) VALUES 
("Jose", "Arias", 6474252986, "gojosearias@gmail.com", now(), now(), 1, 'Toronto'),
("Andrew", "Smith", 6477894561, "test1@gmail.com", now(), now(), 1, 'Vancouver'),
 ('John', 'Doe', '555-1234', 'johndoe@example.com', NOW(), NOW(), 1, 'Toronto'),
       ('Jane', 'Smith', '555-5678', 'janesmith@example.com', NOW(), NOW(), 1, 'Montreal'),
       ('Alice', 'Johnson', '555-9876', 'alicejohnson@example.com', NOW(), NOW(), 1, 'Vancouver'),
       ('Bob', 'Brown', '555-4321', 'bobbrown@example.com', NOW(), NOW(), 1, 'Toronto'),
       ('Alex', 'Williams', '555-5555', 'alexwilliams@example.com', NOW(), NOW(), 1, 'Toronto'),
       ('Samantha', 'Taylor', '555-8888', 'samanthataylor@example.com', NOW(), NOW(), 1, 'Montreal'),
       ('Sophia', 'Taylor', '2025551234', 'sophia.taylor@example.com', NOW(), NOW(), 1, 'Vancouver'),
       ('Liam', 'Johnson', '2025555678', 'liam.johnson@example.com', NOW(), NOW(), 1, 'Ottawa'),
       ('Olivia', 'Smith', '2025559876', 'olivia.smith@example.com', NOW(), NOW(), 1, 'Vancouver'),
       ('Noah', 'Brown', '2025556543', 'noah.brown@example.com', NOW(), NOW(), 1, 'Montreal'),
       ('Emma', 'Lee', '2025558901', 'emma.lee@example.com', NOW(), NOW(), 1, 'Calgary'),
       ('Jackson', 'Davis', '2025554321', 'jackson.davis@example.com', NOW(), NOW(), 1, 'Edmonton'),
       ('Sophia', 'Wilson', '2025555678', 'sophia.wilson@example.com', NOW(), NOW(), 1, 'Quebec City'),
       ('Liam', 'Lee', '2025557890', 'liam.lee@example.com', NOW(), NOW(), 1, 'Toronto'),
       ('Olivia', 'Anderson', '2025551234', 'olivia.anderson@example.com', NOW(), NOW(), 1, 'Toronto'),
       ('Noah', 'Clark', '2025556789', 'noah.clark@example.com', NOW(), NOW(), 1, 'Montreal'),
       ('Emma', 'Brown', '202555678', 'emma.brown@example.com', NOW(), NOW(), 1, 'Vancouver'),
       ('Jackson', 'Miller', '2025559876', 'jackson.miller@example.com', NOW(), NOW(), 1, 'Ottawa'),
       ('Sophia', 'Garcia', '2025552345', 'sophia.garcia@example.com', NOW(), NOW(), 1, 'Montreal'),
       ('Liam', 'Wilson', '2025556789', 'liam.wilson@example.com', NOW(), NOW(), 1, 'Toronto'),
       ('Olivia', 'Anderson', '2025558901', 'olivia.anderson@example.com', NOW(), NOW(), 1, 'Quebec City'),
       ('Noah', 'Thompson', '2025551234', 'noah.thompson@example.com', NOW(), NOW(), 1, 'Edmonton'),
       ('Emma', 'Johnson', '2025555678', 'emma.johnson@example.com', NOW(), NOW(), 1, 'Toronto'),
       ('Jackson', 'Davis', '2025559876', 'jackson.davis@example.com', NOW(), NOW(), 1, 'Calgary'),
       ('Sophia', 'Lee', '2025554321', 'sophia.lee@example.com', NOW(), NOW(), 1, 'Ottawa'),
       ('Liam', 'Wilson', '2025555678', 'liam.wilson@example.com', NOW(), NOW(), 1, 'Toronto'),
       ('Olivia', 'Brown', '2025551234', 'olivia.brown@example.com', NOW(), NOW(), 1, 'Montreal');
       
       SHOW CREATE TABLE Customer;
  SELECT COUNT(Customer_id) from Customer;    
  
  -- Adding a Column after an existing Column
  
 ALTER TABLE Customer ADD COLUMN My_Password VARCHAR(255) DEFAULT 'Thisisapasswordforeveryone123' AFTER Email_Address;
 
 DELETE FROM Customer;
     
  DESCRIBE Customer;