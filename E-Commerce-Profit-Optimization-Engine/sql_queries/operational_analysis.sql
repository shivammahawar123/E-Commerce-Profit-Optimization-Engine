-- Order Status Distribution

SELECT
    order_status,
    COUNT(*) AS total_orders

FROM orders

GROUP BY order_status

ORDER BY total_orders DESC;


-- Payment Method Distribution

SELECT
    payment_method,
    COUNT(*) AS total_transactions

FROM payments

GROUP BY payment_method

ORDER BY total_transactions DESC;


-- Average Delivery Time by Shipping Provider

SELECT
    shipping_provider,
    ROUND(AVG(delivery_days), 2) AS avg_delivery_days

FROM shipping

GROUP BY shipping_provider

ORDER BY avg_delivery_days;


-- Average Delivery Time by Region

SELECT
    shipping_region,
    ROUND(AVG(delivery_days), 2) AS avg_delivery_days

FROM shipping

GROUP BY shipping_region;


-- Monthly Revenue Trend

SELECT
    DATE_TRUNC('month', order_date) AS month,
    ROUND(SUM(total_amount), 2) AS monthly_revenue

FROM orders

GROUP BY month

ORDER BY month;