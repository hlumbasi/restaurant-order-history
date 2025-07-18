USE restaurant_db;
-- Total orders per city
SELECT City, COUNT(*) AS total_orders 
FROM order_history
GROUP BY City;

-- Average distance
SELECT AVG(Distance) FROM order_history;

-- Orders by hour
SELECT `Order Hour`, COUNT(*) 
FROM order_history
GROUP BY `Order Hour`
ORDER BY `Order Hour`;

-- Top restaurants by revenue
SELECT `Restaurant name`, SUM(`Bill subtotal`) AS total_revenue
FROM order_history
GROUP BY `Restaurant name`
ORDER BY total_revenue DESC
LIMIT 10;