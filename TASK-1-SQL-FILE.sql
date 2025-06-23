create database Railway_Reservation_System;
use Railway_Reservation_System;

-- Passenger Table
CREATE TABLE Passenger (
    Passenger_Id INT PRIMARY KEY,
    Name VARCHAR(100),
    Address VARCHAR(255),
    Phone_No VARCHAR(15),
    Email VARCHAR(100) UNIQUE,
    Password VARCHAR(100)
);

-- Train Table
CREATE TABLE Train (
    Train_Id INT PRIMARY KEY,
    Train_No VARCHAR(20) UNIQUE,
    Train_Name VARCHAR(100)
);

-- Schedule Table
CREATE TABLE Schedule (
    Schedule_Id INT PRIMARY KEY,
    Train_Id INT,
    Arrival_Time TIME,
    Source_Station VARCHAR(100),
    Final_Station VARCHAR(100),
    FOREIGN KEY (Train_Id) REFERENCES Train(Train_Id)
);

-- Booking Table
CREATE TABLE Booking (
    Booking_Id INT PRIMARY KEY,
    Fare DECIMAL(10, 2),
    Booking_Date DATE,
    Passenger_Id INT,
    Train_Id INT,
    Schedule_Id INT,
    FOREIGN KEY (Passenger_Id) REFERENCES Passenger(Passenger_Id),
    FOREIGN KEY (Train_Id) REFERENCES Train(Train_Id),
    FOREIGN KEY (Schedule_Id) REFERENCES Schedule(Schedule_Id)
);
