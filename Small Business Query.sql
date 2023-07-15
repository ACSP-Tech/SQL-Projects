SELECT * FROM chikel_store.customers;
SELECT * FROM chikel_store.employees;
SELECT * FROM chikel_store.order_items;
SELECT * FROM chikel_store.orders;
SELECT * FROM chikel_store.product;
SELECT * FROM chikel_store.product_category;
SELECT name, email_address, phone_number 
FROM chikel_store.customers;
SELECT product_name, unit_price, quantity_available
FROM chikel_store.product;
SELECT o.order_id, o.order_date, c.name AS customer_name
FROM chikel_store.customers c
LEFT JOIN chikel_store.orders o
USING (customer_id)
ORDER BY o.order_id
;
SELECT o.*
FROM chikel_store.customers c
LEFT JOIN chikel_store.orders o
USING (customer_id)
WHERE c.customer_id = 4
ORDER BY o.order_id
;
SELECT o.*
FROM chikel_store.orders o
WHERE o.order_date > '2020-01-01' AND o.order_date < '2023-01-01'
ORDER BY o.order_id
;