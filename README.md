# 🏥 Clinic Booking System – MySQL Database Project

## 📋 Overview
This project implements a **Clinic Booking System** using a fully normalized **MySQL relational database**. It is designed to manage appointments, doctors, patients, treatments, and payments in a small-to-medium healthcare facility.

## 🎯 Objectives
- Design and implement a real-world database using only SQL
- Ensure proper normalization (up to 3NF)
- Apply relationships (1-to-1, 1-to-many, many-to-many where applicable)
- Use proper constraints and data integrity rules

---

## 🗃️ Database Entities and Relationships

### ✅ Tables:
- **Departments**: Stores department info (e.g., Cardiology, Dermatology)
- **Doctors**: Associated with a department
- **Patients**: Stores patient data
- **Appointments**: Booked by patients with doctors
- **Treatments**: Linked to appointments
- **Payments**: Linked to both patients and appointments

### 🔗 Relationships:
- One department has many doctors
- One doctor can have many appointments
- One patient can have many appointments and payments
- Each appointment can have one or more treatments

---

## 🧱 Schema Diagram (ERD)
You can view the ERD visually via [dbdiagram.io](https://dbdiagram.io) or import the included `clinic_booking_system.dbml` file into the platform.

---

## 📂 Files Included
| File Name | Description |
|-----------|-------------|
| `clinic_booking_system.sql` | MySQL SQL file to create all database tables |
| `clinic_booking_system.dbml` | DBML format for visualizing the ERD |
| `README.md` | Project documentation |

---

## ⚙️ How to Use

1. Clone or download this repository
2. Open your MySQL client (e.g., MySQL Workbench)
3. Run the script:
   ```sql
   SOURCE path_to_file/clinic_booking_system.sql;
