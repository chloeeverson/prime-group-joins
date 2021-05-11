--1. Get all customers and their addresses.
SELECT c.first_name, c.last_name, a.street, a.city, a.state, a.zip FROM customers c
JOIN addresses a ON a.customer_id = c.id;

--2. Get all orders and their line items (orders, quantity and product).
SELECT * FROM orders o
JOIN line_items l ON l.order_id = o.id
JOIN products p ON p.id = l.product_id;

