create database Sales;
use Sales;
show tables;
SELECT
  YEAR(order_date) AS year,
  MONTH(order_date) AS month,
  SUM(amount) AS revenue,
  COUNT(DISTINCT order_id) AS volume
FROM online_sales_orders
WHERE order_date BETWEEN '2023-01-01' AND '2023-06-30'
GROUP BY year, month
ORDER BY year, month;

-- [ Group Data by Month and Year ]

SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS monthly_revenue
FROM online_sales_orders
GROUP BY year, month
ORDER BY year, month;

-- [ calculate monthly revenue ]

SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS monthly_revenue
FROM online_sales_orders
GROUP BY year, month
ORDER BY year, month;

-- [ NULLs in aggregates ]

SELECT SUM(COALESCE(amount, 0)) AS total_revenue
FROM online_sales_orders;

-- [  Top 3 Months by Sales ]

SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS monthly_revenue
FROM online_sales_orders
GROUP BY year, month
ORDER BY monthly_revenue DESC
LIMIT 3;
