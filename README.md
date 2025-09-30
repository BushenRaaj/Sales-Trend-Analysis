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
- [SQL-Sales-Trend-Analysis.sqlSQL-Sales-Trend-Analysis.sql) → SQL script with queries
- [README.md](README.md) → Project documentation 
