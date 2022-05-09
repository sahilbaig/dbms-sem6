insert into brands values(2,'Samsung');
insert into brands values(3,'Nike');
insert into brands values(4,'Fortune');
-- brands

insert into inv_user values('prashant@gmail.com','Prashant','0011','29-oct-18
10:20','Accountant');
insert into inv_user values('harsh@gmail.com','Harsh Khanelwal','1111','30-oct18 10:20','Manager');
-- inventory users

insert into categories values(2,'Clothing');
insert into categories values(3,'Grocey');
-- categories


insert into stores values(2,'Rakesh kumar','chennai',8888555541);
insert into stores values(3,'Suraj','Haryana',7777555541);
--stores;
 
 insert into product values(4,2,3,2,'Air Max',6,7000,'27-oct-18'); 
 insert into product values(5,3,4,3,'REFINED OIL',6,750,'25-oct-18');

 --product

insert into provides values(3,3,15);
insert into provides values(4,2,19);
insert into provides values(4,3,20);

 --provides

insert into customer_cart values(2,'Shyam',7777777777);
insert into customer_cart values(3,'Mohan',7777777775);
 --customer cart

insert into select_product values(2,4,3);
insert into select_product values(3,3,3);

--select-product

insert into transaction values(3,19000,17000,2000,190,190,'cash',3);
--transaction