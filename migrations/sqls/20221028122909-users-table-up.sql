CREATE TABLE users
(
    id        SERIAL PRIMARY KEY,
    firstname VARCHAR(255),
    lastname  VARCHAR(255),
    username  VARCHAR(255),
    password  VARCHAR(1024)
);

INSERT INTO users (firstname,lastname,username,password) VALUES ('mostafa','fathi','aboalazm','joud');
 INSERT INTO users (firstname,lastname,username,password) VALUES ('mostafa','fathi','joe','joud');
    INSERT INTO users (firstname,lastname,username,password) VALUES ('mostafa','fathi','joud','joud');
INSERT INTO users (firstname,lastname,username,password) VALUES ('mostafa','fathi','gogo','joud');
