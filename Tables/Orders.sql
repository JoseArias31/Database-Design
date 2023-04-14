SELECT * FROM my_project.Orders;

ALTER TABLE Orders ADD COLUMN Total_Purchase DECIMAL(10, 2) NOT NULL; -- Here I added a table with decimals to enter prices for the purchase.

DELETE FROM Orders;

INSERT INTO Orders (Created_at, Updated_at, Print_Day_ID, Delivery_Service_ID, Customer_ID, Total_Purchase) 
VALUES 
(NOW(), NOW(), NOW(), 2, 197, 20.00), 
(NOW(), NOW(), NOW(), 3, 198, 34.50), 
(NOW(), NOW(), NOW(), 4, 199, 43.25), 
(NOW(), NOW(), NOW(), 5, 200, 52.80), 
(NOW(), NOW(), NOW(), 6, 201, 61.75), 
(NOW(), NOW(), NOW(), 7, 202, 78.90), 
(NOW(), NOW(), NOW(), 8, 203, 85.50), 
(NOW(), NOW(), NOW(), 9, 204, 22.60), 
(NOW(), NOW(), NOW(), 10, 205, 47.30), 
(NOW(), NOW(), NOW(), 11, 206, 68.75), 
(NOW(), NOW(), NOW(), 12, 207, 75.90), 
(NOW(), NOW(), NOW(), 13, 208, 29.40), 
(NOW(), NOW(), NOW(), 14, 209, 55.20), 
(NOW(), NOW(), NOW(), 15, 210, 64.25), 
(NOW(), NOW(), NOW(), 16, 211, 76.80), 
(NOW(), NOW(), NOW(), 17, 212, 87.00), 
(NOW(), NOW(), NOW(), 18, 213, 23.50), 
(NOW(), NOW(), NOW(), 19, 214, 35.70), 
(NOW(), NOW(), NOW(), 20, 215, 48.90), 
(NOW(), NOW(), NOW(), 21, 216, 57.50), 
(NOW(), NOW(), NOW(), 22, 217, 67.25), 
(NOW(), NOW(), NOW(), 23, 218, 73.80), 
(NOW(), NOW(), NOW(), 24, 219, 83.50), 
(NOW(), NOW(), NOW(), 25, 220, 27.00), 
(NOW(), NOW(), NOW(), 26, 221, 44.75), 
(NOW(), NOW(), NOW(), 27, 222, 56.20), 
(NOW(), NOW(), NOW(), 28, 223, 66.40), 
(NOW(), NOW(), NOW(), 29, 224, 78.90), 
(NOW(), NOW(), NOW(), 30, 225, 85.00);