# Database-Design Final Project.

By **Jose Arias**
**SenDo**: Online Business, print and send documents

**Figma Design**: 
https://www.figma.com/file/nhFOQlLviLvpCT6KmrNie9/SenDo?node-id=0%3A1&t=fBi9iL9HGuuHPCZ0-1

![image](https://user-images.githubusercontent.com/115059715/230811893-52b84e4e-e1f0-477e-88ff-a6d15a9a251e.png)

![image](https://user-images.githubusercontent.com/115059715/230812047-32458c6d-85ee-47c3-b63f-de18af7e86cd.png)

![image](https://user-images.githubusercontent.com/115059715/230812101-f195d43c-fc6d-47b1-b858-35f7953bb703.png)

![image](https://user-images.githubusercontent.com/115059715/230812159-22af9598-bf01-4e4b-b211-71584cfcbbfe.png)


Mission Statement:
The primary objective of an online business that receives, prints, and sends documents is to establish a comprehensive database that collects all the information related to customer orders, tracking updates, and files stored on the platform. By doing this, the business can make its operations more straightforward and efficient, making it easier to handle both low and high levels of demand. This ensures that the business performs consistently well, regardless of the volume of orders it receives.

**Entities**:
* **Website (SenDo)**: Online platform for business purposes that received customer’s orders.
* **Web Developer**: Programmers that build the website, track and store information an operate the whole printing and sending documents process.
* **Customer**: The person who order the document(s)
* **Orders**: The record of a customer’s order for document printing and sending
* **Files**: Documents uploaded by customer(s)
* **Delivery service**: The company responsible for delivering orders made by customer(s). 
* **Tracking number**: The unique tracking number per order made by customer(s)

Relationships:

* A Website **must** have one or more Customers. Customer **must** have one or more Orders.
* Orders **must** have one or more Customers. An Order **must** have one or more Files.
* Files **must** have one and only Delivery Service. A Delivery Service **must** work with one or more Tracking numbers.
* Customer **may** have one or more Tracking numbers. Tracking Number **must** be validated by a website.

**Entity Relationship Diagram**:

https://drive.google.com/file/d/16uR0z3qfUE6EU3TEifA8RkrK55HqHUgj/view?usp=sharing

![image](https://user-images.githubusercontent.com/115059715/230811369-adcdcaab-44fc-469e-89a5-f98f111ed588.png)

**Relational Mode**:

Website (Online Business Name_ID, Website_Name, Created_at, Updated_at)

Customer (Customer_ID, Order_ID(FK), First Name, Last Name, Phone Number, Email Address, Created_at, Updated_at, Country, City)

Order (Order_ID, Created_at, Updated_at, Print_Day, Customer_ID(FK), Delivery Service_ID(FK), Total_Purchase)

Files (Document_ID, Size Paper, Number of pages, Created_at, Updated_at, Order_Order_ID(FK))

Delivery Service (Delivery Service_ ID, Order Date, Delivery Date, Created_at, Updated_at, Tracking_Number_Tracking_Number_ID(FK), Carrier)

Tracking_Number (Tracking_Number_ID, Created_at, Updated_at, Website_Online_Business_Name_ID)

Customer_has_Tracking_Number(Tracking Number_Tracking_ID(FK), Customer_Customer_ID(FK)

Customer_has_Orders(Customer_Customer_ID(FK), Orders_Order_ID(FK))

Website_Customer (ID, Online Business Name_ID(FK), Customer_ID(FK))

**DATABASE CREATION (MySQL)**

![image](https://user-images.githubusercontent.com/115059715/230814741-bb4a2531-1410-4e93-9676-cda475f5628e.png)




