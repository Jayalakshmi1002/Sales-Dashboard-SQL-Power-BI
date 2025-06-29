
-- Total Revenue
SELECT SUM(total_price) AS total_revenue FROM OrderItems;

-- Total Orders by Region
SELECT c.region, COUNT(DISTINCT o.order_id) AS total_orders
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
GROUP BY c.region;

-- Top 5 Products by Quantity Sold
SELECT p.name, SUM(oi.quantity) AS total_quantity
FROM OrderItems oi
JOIN Products p ON oi.product_id = p.product_id
GROUP BY p.name
ORDER BY total_quantity DESC
LIMIT 5;

-- Monthly Revenue
SELECT DATE_TRUNC('month', o.order_date) AS month, SUM(oi.total_price) AS revenue
FROM Orders o
JOIN OrderItems oi ON o.order_id = oi.order_id
GROUP BY month
ORDER BY month;

-- Profit per Product
SELECT p.name, SUM(oi.quantity * (p.price - p.cost_price)) AS total_profit
FROM OrderItems oi
JOIN Products p ON oi.product_id = p.product_id
GROUP BY p.name
ORDER BY total_profit DESC;
