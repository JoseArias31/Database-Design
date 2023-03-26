# Database-Design 1st and 2nd Assignment 

By **Jose Arias**
**SenDo**: Online Business, print and send documents

**Figma Design**: 
https://www.figma.com/file/nhFOQlLviLvpCT6KmrNie9/SenDo?node-id=0%3A1&t=fBi9iL9HGuuHPCZ0-1

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

* A Website **must** have one or more Customers. Customers **must** have one and more Orders.
* Orders **must** have one or more Customers. An Order **must** have one or more Files.
* Files **must** have one and only Delivery Service. A Delivery Service **must** work with one or more Tracking numbers.
* Customer **may** have one or more Tracking numbers. Tracking Number **must** be validated by a website.

**Entity Relationship Diagram**:

https://drive.google.com/file/d/16uR0z3qfUE6EU3TEifA8RkrK55HqHUgj/view?usp=sharing

![image](https://user-images.githubusercontent.com/115059715/227781661-4d93f2d9-b644-4da0-9467-519523841272.png)

**Relational Mode**:

Website (Online Business Name_ID)

Customer (Customer_ID, Order_ID(FK), First Name, Last Name, Phone Number, Email Address)

Order (Order_ID, Files_ID(FK), Delivery Service_ID) (FK))

Files (Files_ID, Size Paper, Number of pages)

Delivery Service (Delivery Service_ ID, Order Date, Delivery Date, Print Date)

Delivery Service_Tracking Number (Tracking Number_ID(FK), Delivery Service_ID(FK))

Website_Customer (Online Business Name_ID(FK), Customer_ID(FK))

**DATABASE CREATION (MySQL)**

![image](https://user-images.githubusercontent.com/115059715/227784922-37244699-f474-4c14-8d4a-f444fb87e478.png)

