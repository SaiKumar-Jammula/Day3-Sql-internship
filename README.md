# Day3-Sql-internship

# Task 3 – SQL SELECT Queries

This repository contains solutions for Task 3 of the SQL Developer Internship. The goal of this task is to practice and demonstrate the ability to retrieve and filter data using basic SQL `SELECT` queries.

## ✅ Objectives Covered

- Retrieve all and specific columns using `SELECT`
- Apply filtering using `WHERE`, `AND`, `OR`, `LIKE`, `BETWEEN`
- Sort results using `ORDER BY`
- Limit results using `LIMIT`
- Use aliases with `AS`
- Remove duplicates using `DISTINCT`
- Compare values using `=` and `IN`

## 🗃️ Database Schema

The database includes the following tables:

- `categories`
- `products`
- `customers`
- `orders`
- `order_items`
- `payments`


## 📌 Sample Query Example

```sql
-- Get all products under Electronics, Fashion, or Home categories
SELECT * FROM products 
WHERE category_id IN (
    SELECT category_id FROM categories 
    WHERE category_name IN ('Electronics', 'Fashion', 'Home')
);
