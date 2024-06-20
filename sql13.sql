select order_date,
sum(revenue) over (order by order_Date) as cum_revenue
from
(select orders.order_date,
sum(order_Details.quntity*pizzas.price) as revenue
from order_details join pizzas
on order_Details.pizza_id = pizzas.pizza_id
join orders
on orders.order_id=order_Details.order_id
group by orders.order_date ) As sales;