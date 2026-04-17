drop database ShopManager;
create database ShopManager;
use ShopManager;
create table Categories(
	category_id int primary key auto_increment,
    category_name varchar(100) not null
);

create table Products(
	produduct_id int primary key auto_increment,
    produduct_name varchar(100) not null ,
    price decimal(10,2),
    stock int,
    category_id int,
    foreign key (category_id) references categories (category_id)
);
insert into Categories (category_id,category_name)
values
	(1,'Điện tử'),
    (2,'Thời trang');
insert into Products (produduct_id,produduct_name,price,stock,category_id)
values
	(1,'iPhone 15',25000000,10,1),
    (2,'Samsung S23',20000000,5,1),
    (3,'Áo sơ mi nam',500000,50,2),
    (4,'Giày thể thao',1200000,20,2);
set SQL_SAFE_UPDATES = 0;  
update products
set  price = 26000000
where produduct_name = 'iPhone 15';
update products
set stock = stock + 10
where category_id = 1;
delete from products
where produduct_id = 4;
delete from products
where price < 1000000;
select p.produduct_id,p.produduct_name,p.price,stock,p.category_id
from products p;  
select stock > 15
	from Products;
select price >= 1000000
	and price <= 25000000
	from Products;
select produduct_name !='iPhone 15'
	and stock > 0
	from Products;
select category_id != 1
	and price > 500000
    from Products;