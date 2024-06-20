-- List the top 5 most ordered pizza types 
-- along with their quantities.

SELECT 
    pizza_types.name, SUM(order_Details.quntity) AS quntity
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    order_Details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.name
ORDER BY quntity DESC
LIMIT 5;