--1. Get all customers and their addresses.
SELECT c.first_name, c.last_name, a.street, a.city, a.state, a.zip FROM customers c
JOIN addresses a ON a.customer_id = c.id;

--2. Get all orders and their line items (orders, quantity and product).
SELECT * FROM orders o
JOIN line_items l ON l.order_id = o.id
JOIN products p ON p.id = l.product_id;

--3. Which warehouses have cheetos?
delta

SELECT w.warehouse, p.description  FROM products p
JOIN warehouse_product wp ON wp.product_id = p.id
JOIN warehouse w ON w.id = wp.warehouse_id
WHERE p.description = 'cheetos';


--4. Which warehouses have diet pepsi?
alpha, delta, & gamma

SELECT w.warehouse, p.description  FROM products p
JOIN warehouse_product wp ON wp.product_id = p.id
JOIN warehouse w ON w.id = wp.warehouse_id
WHERE p.description = 'diet pepsi';



