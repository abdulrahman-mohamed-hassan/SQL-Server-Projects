# Hotel Database Management System

## Project Overview
A fully normalized relational database designed for hotel operations management. This project demonstrates database design skills including ERD modeling, normalization, and relationship implementation.

---

## What's Inside?

### Entities (7 Tables)

| Entity | Attributes |
|--------|------------|
| **EMPLOYEE** | Employee Number, Name, Title, Hired Date, Salary |
| **VISITOR** | Visitor Number, Name, Age, Gender, Nationality |
| **RESERVATION** | Reservation Number, Status, Cost |
| **ROOM** | Room Number, Name, Floor, Check In, Check Out |
| **FOOD** | Food Number, Name, Category, Size, Price |

### Junction Tables (2 Tables)

| Junction Table | Connects | Relationship |
|----------------|----------|--------------|
| **RESERVATION-ROOM** | Reservations ↔ Rooms | Many-to-Many |
| **VISITOR-FOOD** | Visitors ↔ Food Orders | Many-to-Many |

---

## 🔗 Relationships

| Relationship | Type | Description |
|--------------|------|-------------|
| Visitor → Reservation | One-to-Many | One visitor can make many reservations |
| Employee → Reservation | One-to-Many | One employee can manage many reservations |
| Reservation ↔ Room | Many-to-Many | Many reservations can use many rooms |
| Visitor ↔ Food | Many-to-Many | Many visitors can order many food items |

---

## 🔧 Normalization

| Level | Applied | Description |
|-------|---------|-------------|
| **1NF** | Yes | No repeating groups, atomic values |
| **2NF** | Yes | No partial dependencies |
| **3NF** | Yes | No transitive dependencies |

**Benefits:**
- Eliminates data redundancy
- Prevents data anomalies
- Improves data integrity

---

## Data Types Used

| Data Type | Used For |
|-----------|----------|
| `AutoNumber` | Primary Keys |
| `Currency` | Salary, Cost, Price |
| `Date/Time` | Hired Date, Check In, Check Out |
| `Short Text` | Names, Status, Category |

---

## Technologies Used
- SQL Server / MySQL
- Microsoft Access
- ERD Modeling Tools

---

## Author
**Abdulrahman Noaman**
Business Information Systems Student | AASTMT

Fall 2024
