CREATE TABLE customers (
    customer_id INT,
    name VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT,
    customer_id INT,
    amount INT
);


INSERT INTO customers (customer_id, name) VALUES
(101, 'Ravi'),
(102, 'Asha'),
(103, 'Kiran'),
(104, 'Meena');

INSERT INTO orders (order_id, customer_id, amount) VALUES
(1, 101, 500),
(2, 102, 300),
(3, 101, 700),
(4, 103, 200),
(5, 102, 400);
