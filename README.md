# Task---1-
# 🚆 Railway Reservation System Database

This project models a Railway Reservation System using SQL and relational database design principles. It includes entities such as Passengers, Bookings, Trains, and Schedules with clear relationships to simulate a functional booking system.

---

## 📌 Domain Overview

The domain of this project is **Railway Reservation**, where users (Passengers) can book train tickets based on train schedules. This system helps organize and manage booking data efficiently.

---

## 🧱 Entities and Attributes

### 1. **Passenger**
- `Passenger_Id` (Primary Key)
- `Name`
- `Address`
- `Phone_No`
- `Email`
- `Password`

### 2. **Train**
- `Train_Id` (Primary Key)
- `Train_No`
- `Train_Name`

### 3. **Schedule**
- `Schedule_Id` (Primary Key)
- `Train_Id` (Foreign Key → Train)
- `Arrival_Time`
- `Source_Station`
- `Final_Station`

### 4. **Booking**
- `Booking_Id` (Primary Key)
- `Fare`
- `Booking_Date`
- `Passenger_Id` (Foreign Key → Passenger)
- `Train_Id` (Foreign Key → Train)
- `Schedule_Id` (Foreign Key → Schedule)

---

## 🔗 Relationships

| Relationship           | Type      | Description                                      |
|------------------------|-----------|--------------------------------------------------|
| Passenger – Booking    | 1:M       | One passenger can make many bookings             |
| Booking – Train        | M:1       | Many bookings can refer to one train             |
| Booking – Schedule     | 1:1       | One booking reserves one schedule                |
| Train – Schedule       | 1:M       | One train can have multiple schedules            |

---

## 🛠️ SQL Table Creation Scripts

The SQL scripts for creating these tables are available in [`schema.sql`](#) (you can link this to your actual script file).

Each table is created with appropriate primary and foreign keys to enforce referential integrity.

---

## 📁 File Structure

```plaintext
📦 railway-reservation-db/
├── README.md
├── schema.sql
└── er-diagram.jpg

