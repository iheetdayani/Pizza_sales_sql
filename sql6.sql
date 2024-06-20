-- Calculate the total revenue generated from pizza sales.
select 
round(sum(order_details.quntity*pizzas.price),2) as total_sales
from order_details join pizzas
on pizzas.pizza_id =order_details.pizza_id