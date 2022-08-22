-- In the orders.sql file, write out the code for the following problems:

-- Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
CREATE TABLE orders (
    order_id int,
    person_id int,
    product_name varchar(255),
    product_price float,
    quantity int
);


-- Add 5 orders to the orders table.
-- Make orders for at least two different people.
-- person_id should be different for different people.
INSERT INTO orders (order_id ,person_id, product_name, product_price, quantity)
VALUES (1, 2345, 'toilet papers', 99.99, 100),
        (2, 3456, 'hand sanitizers', 59.99, 200),
        (3, 6789, 'NY steaks', 29.99, 300),
        (4, 2345, 'frozen mixed berries', 10.99, 50),
        (5, 4567, 'gaming laptops', 2099.99, 5),
    

-- Select all the records from the orders table.
SELECT * FROM orders;

-- Calculate the total number of products ordered.
SELECT sum(quantity) FROM orders;

-- Calculate the total order price.
SELECT sum(product_price*quantity) FROM orders ;

-- Calculate the total order price by a single person_id.
SELECT sum(product_price*quantity) FROM orders 
WHERE person_id = 2345;
