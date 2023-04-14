SELECT * FROM my_project.Delivery_Service;

ALTER TABLE Delivery_Service ADD COLUMN Carrier VARCHAR(255) NOT NULL;
ALTER TABLE Delivery_Service DROP COLUMN Print_Day;
ALTER TABLE Delivery_Service RENAME COLUMN Delivery_Service TO Delivery_Date;

DELETE FROM Delivery_Service; -- I use it to delete all the data from this table

INSERT INTO Delivery_Service (Order_Date, Delivery_Date, Created_at, Updated_at, Tracking_Number_Tracking_Number_ID, Carrier)
VALUES 
(NOW(), NOW(), NOW(), NOW(), 5, "UPS"),
(NOW(), NOW(), NOW(), NOW(), 6, "DHL"),
(NOW(), NOW(), NOW(), NOW(), 7, "Purolator"),
(NOW(), NOW(), NOW(), NOW(), 8, "Canada Post"),
(NOW(), NOW(), NOW(), NOW(), 9, "FedEx"),
(NOW(), NOW(), NOW(), NOW(), 10, "Purolator"),
(NOW(), NOW(), NOW(), NOW(), 11, "UPS"),
(NOW(), NOW(), NOW(), NOW(), 12, "DHL"),
(NOW(), NOW(), NOW(), NOW(), 13, "FedEx"),
(NOW(), NOW(), NOW(), NOW(), 14, "Canada Post"),
(NOW(), NOW(), NOW(), NOW(), 15, "UPS"),
(NOW(), NOW(), NOW(), NOW(), 16, "Purolator"),
(NOW(), NOW(), NOW(), NOW(), 17, "DHL"),
(NOW(), NOW(), NOW(), NOW(), 18, "Canada Post"),
(NOW(), NOW(), NOW(), NOW(), 19, "FedEx"),
(NOW(), NOW(), NOW(), NOW(), 20, "Purolator"),
(NOW(), NOW(), NOW(), NOW(), 21, "DHL"),
(NOW(), NOW(), NOW(), NOW(), 22, "FedEx"),
(NOW(), NOW(), NOW(), NOW(), 23, "Canada Post"),
(NOW(), NOW(), NOW(), NOW(), 24, "UPS"),
(NOW(), NOW(), NOW(), NOW(), 25, "Purolator"),
(NOW(), NOW(), NOW(), NOW(), 26, "DHL"),
(NOW(), NOW(), NOW(), NOW(), 27, "Canada Post"),
(NOW(), NOW(), NOW(), NOW(), 28, "FedEx"),
(NOW(), NOW(), NOW(), NOW(), 29, "Purolator"),
(NOW(), NOW(), NOW(), NOW(), 30, "DHL"),
(NOW(), NOW(), NOW(), NOW(), 31, "Canada Post"),
(NOW(), NOW(), NOW(), NOW(), 32, "FedEx");