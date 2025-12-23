# 🚗 vehicle rental system - Database Design & SQL Queries

## 📌 project overview

This project is simplified **Vehicle Rental System** design to demonstrate core concept of **relational database design** an **SQl querying**

The system management:
- Users (Admins and Customers)
- Vehicles (Cars, Bikes and Trucks)
- Bookings (vehicle rental records)

The main goal og this project is to show how table are related using **primary keys** and **foreign keys**, and how real world problems can be solved using queries like **JOIN**, **NOT EXISTS**, **WHERE** and **GROUP BY HAVING**

---

## 🧱 Database Design

The database consists of **three tables**:

### 1️⃣ Users
Stores user_related information such as:
- Name
- Email(unique)
- Role(Admin or Customer)
- Phone number

### 2️⃣ Vehicles
Stored vehicle-related information such as:
- vehicle name and type
- Model
- Registration number(unique)
- Rental price per day
- Availability status

### 3️⃣ Bookings
Stored rental transaction details such as:
- which user booked the vehicle
- which vehicle are booked
- rental start and end dates
- bookings status
- total costs 