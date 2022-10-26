# first open pro  in terminal and  install all packages for it:
   $npm install 

# to run server 
 $npm start     $ port : 3000
# then init postgres
# start PostgreSQL
 psql -h localhost -U postgres

# create database and connection:
 $ create user shopuser1 with password 1265;
 $ CREATE DATABASE storefront;
  $ CREATE DATABASE storefront_test;  // you don`t need to create it ,it will be auto.


connect to database
\c storefront
- 'GRANT ALL PREVILIEGES ON DATABASE storefront to shopuser1';
\q
 
# Migration script for test database && test jasmine:
npm run test

# Environment Variables
The environment variables are available in the .env file.

# port number
PORT=3000

# default env
ENV=dev

# PostgreSQL database for dev
POSTGRES_HOST=127.0.0.1
POSTGRES_DB=storefront
POSTGRES_USER=postgres
POSTGRES_PASSWORD=YouseF98M

# database for testing
POSTGRES_TEST_DB=storefront_test

# password encryption
BCRYPT_SALT_ROUNDS=10
BCRYPT_PEPPER=5Ffja@9spfaA#

# JWT
JWT_TOKEN_SECRET=Sog@*Fos2*7

# JWT_TEST_TOKEN  = eeyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImFib2FsYXptMSIsImlhdCI6MTY2NTA1NTg2M30.6MeY9aZKGGN8lKnDLs7iSnQ4zWkvc5SnPyG04dy5Y4o
  
