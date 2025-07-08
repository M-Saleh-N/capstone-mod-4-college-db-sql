# 🎓 Capstone Project 2: College Database Design and Queries (SQL)

This project simulates a real-world college database system using PostgreSQL.  
It demonstrates proper relational schema design, normalization (3NF), and complex SQL querying techniques.

---

## 💡 Features

- Normalized relational schema (3NF)
- Five main tables: students, instructors, departments, courses, enrollments
- Inserted sample data (10+ entries per table)
- Includes complex SQL queries:
  - Joins
  - Aggregation and grouping
  - Filtering with WHERE, IN, EXISTS
  - Subqueries and ranking

---

## 📁 Folder Structure

capstone-mod-4-college-db-sql/
├── schema.sql # PostgreSQL-compatible CREATE TABLE statements
├── data.sql # Sample data inserts for all tables
├── queries.sql # At least 10 SQL queries with JOINs, filters, GROUP BY, etc.
├── report.txt # Schema design explanation and query summary
└── README.md # This file — project overview and instructions


---

## ⚙️ How to Run

### 🐘 PostgreSQL Setup (via `psql` CLI)

1️⃣ Open your terminal and log into PostgreSQL:
```bash
psql -U postgres

CREATE DATABASE college;
\c college

\i 'C:/path/to/schema.sql'
\i 'C:/path/to/data.sql'
\i 'C:/path/to/queries.sql'

📊 Schema Summary
students: student_id, name, email, dob

instructors: instructor_id, name, dept_id

departments: dept_id, name

courses: course_id, title, dept_id, instructor_id

enrollments: enrollment_id, student_id, course_id, grade

✅ Deliverables
✅ schema.sql — PostgreSQL-compatible table definitions using SERIAL

✅ data.sql — Mock data with at least 10 entries per table

✅ queries.sql — 10+ complex queries (JOIN, subqueries, filtering, etc.)

✅ report.txt — Explanation of schema design + query logic

✅ README.md — Full setup and project overview (this file)

👤 Author
Saleh Mohamed
Capstone Project 2 — SQL