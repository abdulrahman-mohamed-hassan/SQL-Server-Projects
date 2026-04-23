# SQL Server Projects

## Project Overview
A collection of SQL Server database projects demonstrating advanced T-SQL skills including stored procedures, user-defined functions, and database schema design. All queries and procedures are applied to the **BikeStores sample database**.

---

## What's Inside?

### 1. Stored Procedures (6 Procedures) – Applied to BikeStores Database

| Procedure | Description |
|-----------|-------------|
| `productSales` | Calculates total sales for a specific product from BikeStores |
| `staffOrderInfo` | Retrieves staff information for orders containing product #50 |
| `productDetails` | Returns product name, price, and model year from products table |
| `cheapestProduct` | Identifies and displays the cheapest product in BikeStores |
| `brandProducts` | Lists all products for a specific brand from brands table |
| `listperod` | Filters products by price range and name pattern |

**BikeStores Tables Used:** `production.products`, `production.brands`, `sales.orders`, `sales.order_items`, `sales.staffs`, `sales.customers`

### 2. User-Defined Functions (4 Functions)

| Function | Description |
|----------|-------------|
| `GetProductSales` | Returns product name, total sales, and first order date |
| `ProductInfo` | Returns product name, release year, and price |
| `CheapestProduct` | Returns the name of the cheapest product |
| `StaffOrder50` | Returns staff name and order status for product #50 |

### 3. Cinema Database Schema (Separate Database – Not BikeStores)

**Tables (7):**
- `customers` – Customer information (name, email)
- `films` – Movie details (name, length)
- `rooms` – Cinema rooms (name, number of seats)
- `screenings` – Movie showtimes (film, room, start time)
- `seats` – Seat tracking (row, number)
- `bookings` – Ticket bookings (customer, screening)
- `reserved_seat` – Reserved seats mapping (booking, seat)

**Features:**
- Primary Keys
- Foreign Key constraints
- Referential integrity

---

## Technologies Used
- SQL Server
- T-SQL (Transact-SQL)
- BikeStores Sample Database

---

## Author
**Abdulrahman Noaman**
Business Information Systems Student | AASTMT


---

## 📅 Date
Spring 2025
