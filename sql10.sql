-- Group the orders by date and calculate the average 
-- number of pizzas ordered per day.
SELECT 
    ROUND(AVG(quntity), 0)
FROM
    (SELECT 
        orders.order_date, SUM(order_details.quntity) AS quntity
    FROM
        orders
    JOIN order_Details ON orders.order_id = order_details.order_id
    GROUP BY orders.order_Date) AS order_quntity;

