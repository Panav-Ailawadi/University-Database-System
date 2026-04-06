# University-Database-System
Overview

This project is a simple university management database that I built using SQL. The main idea was to create a system that can store and manage information about students, courses, and instructors in an organized way.

Instead of keeping everything in one place, the data is divided into different tables, which are connected to each other. This makes the system easier to manage and avoids repeating the same information.

Project Description

In this project, I designed a relational database that reflects how a real university system works. I created separate tables for students, courses, and instructors, and then connected them using additional tables to handle relationships.

For example, a student can enroll in multiple courses, and each course can have multiple students. To manage this, I used an Enrollments table. Similarly, I used another table to link instructors with the courses they teach.

After creating the database structure, I added sample data and tested it using different SQL queries. These queries allow the system to perform basic operations like adding, updating, and deleting records, as well as more advanced tasks like combining data from multiple tables and calculating results.

Key Features
Stores and manages student, course, and instructor information
Handles relationships between tables using foreign keys
Supports basic operations like insert, update, delete, and select
Uses JOIN queries to show connected data
Performs calculations such as counting students and averaging course credits
Allows sorting and filtering of data

Technologies Used
SQL (MySQL)
