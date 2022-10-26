# End points
 # Products
Index
Show (args: product name)
Create (args: product name, product price) [token required]
Delete (args: product id) [token required]
 # Users
Index [token required]
Show (args: username) [token required]
Create (args: first name, last name, username, password)
Delete (args: username)
# Orders
-Index
-Show (args: user id)
-Create order (args: status, user id) [token required]
-Delete (args: order id) [token required]
-Create order with product quantity and product id (args: quantity, order id, product id) [token required]
-Delete order product (args: order product id) [token required]
# for root use
 $ http://localhost/3000/

#  to read all products use
 $ http://localhost/3000/products

# to read specific product use
 $ http://localhost/3000/products/show

  $ before send request you shoud put your json  in   body of postman such a: 
    # { "productName":"rice"  }

# to post product use:
$ http://localhost/3000/products/ 
    $ before send request you shoud put your json  in   body of postman such a: 
  #  {
     "name":"milkaaaa",
     "price":"2"
  # }
  $note that  token required above

# to delete specifiec product use:
$ http://localhost/3000/products/ 
  $ before send request you shoud put your json  in   body of postman such a: 
  #  {
     "productName":"milk",
      
  # }
    $note that  token required above

# ######################################
# to get all users use:
  $http://localhost:3000/users
   $note that  token required above
# to read specifiec user use:
  $http://localhost:3000/users/show 
   $ before send request you shoud put your json  in   body of postman such a: 
   # { "username":"joe"} 
     $note that  token required above

# to create user use:
 $http://localhost:3000/users/register   
  $ before send request you shoud put your json  in   body of postman such a:
   # {     
      "firstname": "mostafa",
        "lastname": "fathi",
        "username": "mo",
        "password": "joud"
   # }  


# to delete user  use :
 $ http://localhost:3000/users/
  $ $ before send request you shoud put your json  in   body of postman such a:
  # {      "username":"leo"  } 
    $note that  token required above

# to login with user:
 $ http://localhost:3000/users/login
   $ before send request you shoud put your json  in   body of postman such a:
  # {      "username":"leo", "passsword":"***"  } 

   ### note that will genarate a token for you to use it #######


# #################################3
#  to read all orders use
 $ http://localhost/3000/orders

# to read specific orders use
 $ http://localhost/3000/orders/show

  $ before send request you shoud put your json  in   body of postman such a: 
   # { "userId":1  }

# to post order use:
$ http://localhost/3000/orders/ 
    $ before send request you shoud put your json  in   body of postman such a: 
  #  {
   "status":"ordered",
   "userId":2
  # }
  $note that  token required above

# to delete specifiec order use:
$ http://localhost/3000/orders/
  $ before send request you shoud put your json  in   body of postman such a: 
  #  {
     "orderId":21,
      
  # }
    $note that  token required above


# ############################

# to CREATE order with product quantity and product id:
$ http://localhost/3000/orders/products 
    $ before send request you shoud put your json  in   body of postman such a: 
  #  {
  "quantity":12 ,
   "orderId":1,
   "productId":4
  # }
  $note that  token required above

# to delete specifiec order use:
$ http://localhost/3000/orders/products
  $ before send request you shoud put your json  in   body of postman such a: 
  #  {
     "orderProductId":5,
      
  # }
    $note that  token required above


###########################################################################
 # Data structure
# Products
    id
    name
   price

# users
id
firstname
lastname
username
password

# Orders
id
status of order (ordered / shipped / delivered)
user_id

# Order Products
id
quantity of each product in the order
id of each order that products belong to
id of each product in the order
  
   


 # data Schema  

Table "public.products"
 Column |          Type          | Collation | Nullable |               Default                
--------+------------------------+-----------+----------+--------------------------------------
 id     | integer                |           | not null | nextval('products_id_seq'::regclass)
 name   | character varying(100) |           | not null | 
 price  | integer                |           | not null | 
Indexes:
    "products_pkey" PRIMARY KEY, btree (id)

  # #############


# Table "public.users"
Column    |          Type           | Collation | Nullable |              Default              
----------+-------------------------+-----------+----------+-----------------------------------
id        | integer                 |           | not null | nextval('users_id_seq'::regclass)
firstname | character varying(255)  |           |          |
lastname  | character varying(255)  |           |          |
username  | character varying(255)  |           |          |
password  | character varying(1024) |           |          |
Indexes:
"users_pkey" PRIMARY KEY, btree (id)
Referenced by:
TABLE "orders" CONSTRAINT "orders_user_id_fkey" FOREIGN KEY (user_id) REFERENCES users(id)


# Table "public.orders"
Column  |          Type          | Collation | Nullable |              Default               
--------+------------------------+-----------+----------+--------------------------------------
id      | integer                |           | not null | nextval('orders_id_seq'::regclass)
status  | character varying(100) |           |          |
user_id | bigint                 |           |          |
Indexes:
"orders_pkey" PRIMARY KEY, btree (id)
Foreign-key constraints:
"orders_user_id_fkey" FOREIGN KEY (user_id) REFERENCES users(id)


# Table "public.order_products"
Column     |  Type   | Collation | Nullable |                  Default                   
-----------+---------+-----------+----------+--------------------------------------------------
id         | integer |           | not null | nextval('order_products_id_seq'::regclass)
quantity   | integer |           |          |
order_id   | bigint  |           |          |
product_id | bigint  |           |          |
Indexes:
"order_products_pkey" PRIMARY KEY, btree (id)
Foreign-key constraints:
"order_products_order_id_fkey" FOREIGN KEY (order_id) REFERENCES orders(id)
"order_products_product_id_fkey" FOREIGN KEY (product_id) REFERENCES products(id)
