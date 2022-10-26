CREATE TABLE orders
(
    id      SERIAL PRIMARY KEY,
    status  VARCHAR(100),
    user_id bigint REFERENCES users(id)
);
INSERT INTO orders (status,user_id) VALUES ('ordered',1);
INSERT INTO orders (status,user_id) VALUES ('shipped',2);
INSERT INTO orders (status,user_id) VALUES ('delivered',3);
INSERT INTO orders(status,user_id) VALUES ('delivered',4);