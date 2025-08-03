# Logistics_Management_System_using_MySQL
This MySQL-based logistics management system models real-world shipping operations. It includes tables for ships, cargo, ports, routes, employees, and maintenance logs, enabling efficient tracking and analysis of maritime logistics data.


# 🚢 Logistics Management System – MySQL Project

This project implements a relational database model for managing the logistics of cargo shipping. It includes detailed records for ships, cargo, ports, ship routes, employees, and maintenance activities.

---

## 🧱 Database Overview

The project consists of the following key tables:

- **`ships`** – Stores information about ships and their operational status.
- **`cargo`** – Tracks cargo details, weight, destination port, and shipping status.
- **`ports`** – Contains port names and their geographical locations.
- **`shiproutes`** – Records shipping routes including departure and arrival dates and ports.
- **`employees`** – Maintains employee assignments, roles, and salaries per ship.
- **`maintenancelog`** – Logs ship maintenance history and status.

---

## 🗂️ Schema Diagram

*(ER diagram not included, but can be generated using tools like dbdiagram.io or MySQL Workbench.)*

---

## ⚙️ Getting Started

### 🏁 Prerequisites

- MySQL Server (or any MySQL-compatible client like XAMPP, WAMP)
- MySQL Workbench (optional for visual design)

### 📥 Setup Instructions

1. **Create the database and tables:**

   Run the script below in your MySQL environment:

   ```sql
   SOURCE Logistics_Management_Project.sql;
2. **Verify with Data**

       USE logistics_management;
       SHOW TABLES;
       SELECT * FROM ships;

3. **Sample SQL Queries**

       -- View all ships currently operational
       SELECT * FROM ships WHERE Ship_Status = 'Operational';

       -- Get cargo details destined for a specific port
       SELECT * FROM cargo WHERE Destination_Port = 'Port of Shanghai';

       -- Check ship maintenance records
       SELECT * FROM maintenancelog WHERE Maintenance_Status = 'Pending';

       -- See all scheduled ship routes
       SELECT * FROM shiproutes WHERE STATUS = 'Scheduled';

## 📊 Example Data

The project includes sample data for:

- ✅ 10 ships  
- ✅ 10 cargo shipments  
- ✅ 10 ports  
- ✅ Placeholders for ship routes and employees  

---

## 🛠️ Future Improvements

- ⚙️ Add triggers and stored procedures (e.g., to auto-update ship statuses)
- 📝 Normalize port spelling errors (e.g., `'Port of Singapor'` → `'Port of Singapore'`)
- 🔐 Add user roles and security constraints
- 🖥️ Build a GUI or dashboard using Python (Tkinter) or PHP for interaction

---


## 🙋‍♂️ Author

**Rithik** – feel free to fork, use, and contribute to this project!

---

> 💡 _Need help with an ER diagram, insert query templates, or integrating MySQL with Python?_ Just ask!

