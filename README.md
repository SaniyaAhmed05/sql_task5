# Role-Based Access Control (RBAC) in SQL

This project implements SQL-level access control using roles (`admin`, `editor`, `viewer`) and grants appropriate privileges per table and user.
The goal is to manage database access securely and efficiently using `CREATE ROLE`, `GRANT`, and `REVOKE` statements.

---

## 📘 Overview

The script creates a sample database `company_db` with three tables:

* **users** – stores user information and assigned roles.
* **products** – maintains product details, prices, and stock levels.
* **sales** – records product sales linked to the `products` table.

Three roles are defined to enforce different levels of access:

1. **Admin** – Full control of the database.
2. **Editor** – Can read, insert, and update data.
3. **Viewer** – Can only view (read-only access).

---

