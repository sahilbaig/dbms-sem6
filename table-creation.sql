create table brands(
 bid numeric(5),
 bname varchar(20)
);

alter table brands
add primary key(bid);


create table inv_user(
 user_id varchar(20),
 name varchar(20),
 password varchar(20),
 last_login timestamp,
 user_type varchar(10)
 );

 create table categories(
 cid numeric(5),
 category_name varchar(20)
 );

alter table categories
add primary key(cid);


alter table inv_user
add primary key(user_id);


create table product(
 pid numeric(5) primary key,
 cid numeric(5) references categories(cid),
 bid numeric(5) references brands(bid),
 sid numeric(5),
 pname varchar(20),
 p_stock numeric(5),
 price numeric(5),
 added_date date);

create table stores(
 sid numeric(5),
 sname varchar(20),
 address varchar(20),
 mobno numeric(10)
 );

 alter table stores add primary key(sid); 
 alter table product add foreign key(sid)references stores(sid); 


 create table provides(
 bid numeric(5)references brands(bid),
 sid numeric(5)references stores(sid),
 discount numeric(5));


 create table customer_cart(
 cust_id numeric(5) primary key,
 name varchar(20),
 mobno numeric(10)
 );


 create table select_product(
 cust_id numeric(5) references customer_cart(cust_id),
 pid numeric(5)references product(pid),
 quantity numeric(4)
 );


 create table transaction(
 id numeric(5) primary key,
 total_amount numeric(5),
 paid numeric(5),
 due numeric(5),
 gst numeric(3),
 discount numeric(5),
 payment_method varchar(10),
cart_id numeric(5) references customer_cart(cust_id) );


create table invoice(
 item_no numeric(5),
 product_name varchar(20),
 quantity numeric(5),
 net_price numeric(5),
 transaction_id numeric(5)references transaction(id)
 );
