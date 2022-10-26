CREATE TABLE order_products
(
    id         SERIAL PRIMARY KEY,
    quantity   integer,
    order_id   bigint REFERENCES orders(id),
    product_id bigint REFERENCES products(id)
);
 
INSERT INTO order_products(quantity,order_id,product_id) VALUES (14,1,1); 

INSERT INTO order_products (quantity,order_id,product_id) VALUES (12,2,2); 
INSERT INTO order_products (quantity,order_id,product_id) VALUES (14,3,3); 
INSERT INTO order_products(quantity,order_id,product_id) VALUES (2,4,4); 