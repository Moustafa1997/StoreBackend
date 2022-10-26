
CREATE TABLE products
(
    id    SERIAL PRIMARY KEY,
    name  VARCHAR(100) NOT NULL,
    price integer      NOT NULL
);
INSERT INTO products (name,price) VALUES ('rice',7);
INSERT INTO products (name,price) VALUES ('milk',8);
INSERT INTO products (name,price) VALUES ('chips',4);
INSERT INTO products (name,price) VALUES ('meat',45);
INSERT INTO products (name,price) VALUES ('potatos',5);
 