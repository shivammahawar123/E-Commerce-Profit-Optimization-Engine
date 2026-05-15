-- Top Customers by Revenue

SELECT
    c.customer_name,
    ROUND(SUM(o.total_amount), 2) AS total_spent

FROM orders o

JOIN customers c
ON o.customer_id = c.customer_id

GROUP BY c.customer_name

ORDER BY total_spent DESC

LIMIT 10;


-- Revenue by Customer Segment

SELECT
    c.customer_segment,
    ROUND(SUM(o.total_amount), 2) AS total_revenue

FROM orders o

JOIN customers c
ON o.customer_id = c.customer_id

GROUP BY c.customer_segment

ORDER BY total_revenue DESC;


-- Revenue by State

SELECT
    c.state,
    ROUND(SUM(o.total_amount), 2) AS total_revenue

FROM orders o

JOIN customers c
ON o.customer_id = c.customer_id

GROUP BY c.state

ORDER BY total_revenue DESC;