# Personalized Health Tracker Database System

## Overview
The **Personalized Health Tracker** is a relational database system designed to store, manage, and analyze user health data such as activity, nutrition, mood, and physiological parameters. It supports secure, structured storage of health information, enabling longitudinal analysis and personalized insights.

---

## Objectives
- Design a normalized Entity-Relationship Diagram (ERD) capturing key health metrics.  
- Implement schema and constraints in **MySQL**.  
- Populate database with realistic sample data.  
- Demonstrate analytical operations using tested SQL queries.  
- Document schema, relationships, and implementation workflow.

---

## Schema Design
The database contains six main entities:

- `User` – basic profile and demographic details  
- `DailyMetric` – daily steps, heart rate, and sleep  
- `MoodLog` – time-stamped mood tracking  
- `NutritionLog` – meals and calorie data  
- `ActivityLog` – exercises and energy expenditure  
- `HealthAssessment` – periodic health checks (BP, BMI, flagging)

Each table maintains referential integrity through foreign key constraints, ensuring all logs map correctly to their corresponding user.

---

## Files Included
| File | Description |
|------|--------------|
| **schema.sql** | Database definition (DDL): `CREATE TABLE`, constraints, relationships |
| **data.sql** | Data insertion (DML): Sample user and health data |
| **queries.sql** | Analytical queries demonstrating joins, grouping, and subqueries |

---


