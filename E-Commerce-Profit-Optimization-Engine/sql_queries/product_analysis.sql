-- Top Selling Products

SELECT
    p.product_name,
    SUM(o.quantity) AS total_quantity_sold

FROM orders o

JOIN products p
ON o.product_id = p.product_id

GROUP BY p.product_name

ORDER BY total_quantity_sold DESC

LIMIT 10;


-- Most Profitable Products

SELECT
    p.product_name,
    ROUND(SUM(o.profit), 2) AS total_profit

FROM orders o

JOIN products p
ON o.product_id = p.product_id

GROUP BY p.product_name

ORDER BY total_profit DESC

LIMIT 10;


-- Revenue by Category

SELECT
    p.main_category,
    ROUND(SUM(o.total_amount), 2) AS total_revenue

FROM orders o

JOIN products p
ON o.product_id = p.product_id

GROUP BY p.main_category

ORDER BY total_revenue DESC;


-- Profit by Category

SELECT
    p.main_category,
    ROUND(SUM(o.profit), 2) AS total_profit

FROM orders o

JOIN products p
ON o.product_id = p.product_id

GROUP BY p.main_category

ORDER BY total_profit DESC;