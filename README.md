SQL-Sales-Trend-Analysis
# 📊 SQL Sales Trend Analysis (Online Sales Dataset)

This project is part of the **Data Analyst Internship (Task 6: SQL Sales Trend Analysis)**.  
The goal is to practice **SQL aggregations, grouping, filtering, and views** using an **Online Sales Dataset**.

---

## 📌 Project Overview

This project focuses on performing **SQL-based sales trend analysis** on a simulated **Ecommerce Orders Dataset**.  
The primary objective is to apply SQL techniques to **calculate monthly revenue and order volume** and derive actionable insights on sales performance.

The dataset models a simplified online sales system with the following key attributes:

- **order_id** → unique order reference  
- **order_date** → timestamp of order  
- **amount** → order value (used to calculate revenue)  
- **product_id** → item identifier  
- **customer_id** → customer reference  

---

### 🎯 Key Objectives
- Apply SQL skills to **aggregate sales data by month**.  
- Demonstrate the use of **EXTRACT()**, **GROUP BY**, and **aggregate functions** (`SUM`, `COUNT`).  
- Analyze **monthly revenue** and **unique order volume**.  
- Filter and limit results to **specific time periods**.  
- Showcase the use of **views** for reusable queries.  

---

### 🛠️ Techniques Applied
- **Date functions** → `EXTRACT(YEAR FROM ...)`, `EXTRACT(MONTH FROM ...)`  
- **Grouping & Sorting** → `GROUP BY year, month`, `ORDER BY`  
- **Aggregations** → `SUM(amount)` for revenue, `COUNT(DISTINCT order_id)` for volume  
- **Filtering** → `WHERE order_date BETWEEN ...`  
- **Limiting Results** → `LIMIT` for top-N analysis  
- **Views** → reusable monthly aggregation  

---

## 📜 Queries Implemented With Output

<img width="1242" height="781" alt="6 1" src="https://github.com/user-attachments/assets/2a204bfc-df6f-438d-ba93-8767464e169c" />

---


## 📂 Repository Structure

- [online_sales_orders.csv](online_sales_orders.csv) → Dataset  
- [SQL-Sales-Trend-Analysis.sql](SQL-Sales-Trend-Analysis.sql) → SQL script with queries  
- [README.md](README.md) → Project documentation

## ❓ Interview Questions Related to This Task

### 1. How do you group data by month and year?
You can group data by extracting the year and month from a date column and using `GROUP BY`.

```sql
SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS monthly_revenue
FROM online_sales_orders
GROUP BY year, month
ORDER BY year, month;

```

<img width="1228" height="781" alt="6 2" src="https://github.com/user-attachments/assets/07767c66-db6f-4c8c-8229-9e1f7fecf66e" />

---

### 2. What's the difference between COUNT(*) and COUNT(DISTINCT col)?

- COUNT(*) → Counts all rows, including duplicates and NULLs.

- COUNT(DISTINCT col) → Counts unique non-NULL values in the specified column.

---

### 3. How do you calculate monthly revenue?

Use the SUM() aggregate function on the revenue column, grouped by month and year.

```sql
SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS monthly_revenue
FROM online_sales_orders
GROUP BY year, month
ORDER BY year, month;
```

<img width="1224" height="774" alt="6 3" src="https://github.com/user-attachments/assets/659c422d-a91a-4b74-a1f5-a0670999013c" />

---

### 4. What are aggregate functions in SQL?

Aggregate functions summarize multiple rows into a single value. Examples:

- SUM() → Total of numeric values

- COUNT() → Number of rows

- AVG() → Average value

- MAX() → Maximum value

- MIN() → Minimum value

---

### 5. How to handle NULLs in aggregates?

- Most aggregate functions ignore NULLs by default.

- To handle explicitly, use COALESCE() or IFNULL():

```sql
SELECT SUM(COALESCE(amount, 0)) AS total_revenue
FROM online_sales_orders;
```

<img width="1231" height="752" alt="6 4" src="https://github.com/user-attachments/assets/55a70b9c-3391-49c3-b85f-9ac95cc25ee3" />

---

### 6. What’s the role of ORDER BY and GROUP BY?

- GROUP BY → Aggregates rows based on specified columns.

- ORDER BY → Sorts the result set by one or more columns (ascending/descending).

---

### 7. How do you get the top 3 months by sales?

Use ORDER BY with LIMIT (or TOP in SQL Server) to rank results:

```sql
SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS monthly_revenue
FROM online_sales_orders
GROUP BY year, month
ORDER BY monthly_revenue DESC
LIMIT 3;
```

<img width="1229" height="757" alt="6 5" src="https://github.com/user-attachments/assets/4532798c-cded-451d-9c46-5f2a783915b2" />
