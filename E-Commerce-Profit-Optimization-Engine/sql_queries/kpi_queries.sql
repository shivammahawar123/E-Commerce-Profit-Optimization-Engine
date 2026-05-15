-- Total Revenue

SELECT
    ROUND(SUM(total_amount), 2) AS total_revenue
FROM orders;


-- Total Profit

SELECT
    ROUND(SUM(profit), 2) AS total_profit
FROM orders;


-- Profit Margin %

SELECT
    ROUND(
        (SUM(profit) / SUM(total_amount)) * 100,
        2
    ) AS profit_margin_pct
FROM orders;


-- Total Orders

SELECT
    COUNT(order_id) AS total_orders
FROM orders;


-- Average Order Value

SELECT
    ROUND(
        SUM(total_amount) / COUNT(order_id),
        2
    ) AS average_order_value
FROM orders;