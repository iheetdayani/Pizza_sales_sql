-- Identify the most common pizza size ordered.
SELECT 
    quntity, COUNT(order_details_id)
FROM
    orders_details
GROUP BY quntity;