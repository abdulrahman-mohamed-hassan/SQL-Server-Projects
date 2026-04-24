-- Hotel Database Schema
-- Created by Abdulrahman Noaman

-- 1. EMPLOYEE Table
CREATE TABLE EMPLOYEE (
    EmployeeNumber INT PRIMARY KEY,
    EmployeeName VARCHAR(100),
    Title VARCHAR(50),
    HiredDate DATE,
    Salary DECIMAL(10,2)
);

-- 2. VISITOR Table
CREATE TABLE VISITOR (
    VisitorNumber INT PRIMARY KEY,
    VisitorName VARCHAR(100),
    Age INT,
    Gender VARCHAR(10),
    Nationalty VARCHAR(50)
);

-- 3. RESERVATION Table
CREATE TABLE RESERVATION (
    ReservationNumber INT PRIMARY KEY,
    EmployeeNumber INT,
    VisitorNumber INT,
    Status VARCHAR(20),
    Cost DECIMAL(10,2),
    FOREIGN KEY (EmployeeNumber) REFERENCES EMPLOYEE(EmployeeNumber),
    FOREIGN KEY (VisitorNumber) REFERENCES VISITOR(VisitorNumber)
);

-- 4. ROOM Table
CREATE TABLE ROOM (
    RoomNumber INT PRIMARY KEY,
    RoomName VARCHAR(50),
    Floor VARCHAR(10),
    CheckIn DATE,
    CheckOut DATE
);

-- 5. FOOD Table
CREATE TABLE FOOD (
    FoodNumber INT PRIMARY KEY,
    FoodName VARCHAR(50),
    Category VARCHAR(30),
    Size VARCHAR(20),
    Price DECIMAL(10,2)
);

-- 6. Junction Table: RESERVATION_ROOM (Many-to-Many)
CREATE TABLE RESERVATION_ROOM (
    ReservationNumber INT,
    RoomNumber INT,
    PRIMARY KEY (ReservationNumber, RoomNumber),
    FOREIGN KEY (ReservationNumber) REFERENCES RESERVATION(ReservationNumber),
    FOREIGN KEY (RoomNumber) REFERENCES ROOM(RoomNumber)
);

-- 7. Junction Table: VISITOR_FOOD (Many-to-Many)
CREATE TABLE VISITOR_FOOD (
    VisitorNumber INT,
    FoodNumber INT,
    PRIMARY KEY (VisitorNumber, FoodNumber),
    FOREIGN KEY (VisitorNumber) REFERENCES VISITOR(VisitorNumber),
    FOREIGN KEY (FoodNumber) REFERENCES FOOD(FoodNumber)
);