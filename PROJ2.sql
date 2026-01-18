SELECT COUNT(*)FROM sales;
USE retail_db;
INSERT INTO sales (order_id, order_date, region, category, sales) VALUES
(1, '2023-01-15', 'North', 'Technology', 12000),
(2, '2023-01-18', 'South', 'Furniture', 9000),
(3, '2023-02-02', 'East', 'Office Supplies', 5000),
(4, '2023-02-10', 'West', 'Technology', 15000),
(5, '2023-02-22', 'Central', 'Furniture', 8000),
(6, '2023-03-05', 'North', 'Office Supplies', 4000),
(7, '2023-03-18', 'South', 'Technology', 20000),
(8, '2023-04-01', 'East', 'Furniture', 7000),
(9, '2023-04-12', 'West', 'Office Supplies', 3000),
(10,'2023-04-25', 'Central', 'Technology', 18000);
SELECT COUNT(*) FROM sales;
SELECT * FROM sales;
SELECT * FROM sales;
SELECT * FROM sales;
SELECT region, SUM(sales) AS total_sales
FROM sales
GROUP BY region
ORDER BY total_sales DESC;
SELECT category, SUM(sales) AS total_sales
FROM sales
GROUP BY category
ORDER BY total_sales DESC;
SELECT 
  DATE_FORMAT(order_date, '%Y-%m') AS month,
  SUM(sales) AS monthly_sales
FROM sales
GROUP BY month
ORDER BY month;
SELECT region, category, SUM(sales) AS total_sales
FROM sales
GROUP BY region, category
ORDER BY total_sales DESC;
SELECT region, SUM(sales) AS total_sales
FROM sales
GROUP BY region
ORDER BY total_sales DESC;
SELECT region, category, SUM(sales) AS total_sales
FROM sales
GROUP BY region, category
ORDER BY region, total_sales DESC;
SELECT category, SUM(sales) AS total_sales
FROM sales
GROUP BY category
ORDER BY total_sales DESC;
SELECT 
  MONTH(order_date) AS month,
  SUM(sales) AS monthly_sales
FROM sales
GROUP BY month
ORDER BY month;
