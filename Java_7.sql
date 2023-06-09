drop database my_app;

create database my_app;
use my_app;

create table users_tbl(
user_id INT auto_increment,
user_firstname VARCHAR(40) not null,
user_lastname VARCHAR(40) not null,
user_email VARCHAR(60) not null,
user_password VARCHAR(256),
primary key(user_id)
);

create table categories_tbl(
category_id int auto_increment,
category_name varchar(50),
primary key(category_id)
);

create table products_tbl(
product_id int auto_increment,
product_name varchar(50),
product_value float,
category_id int,
primary key(product_id),
foreign key (category_id) references categories_tbl(category_id)
);

alter table users_tbl modify user_password varbinary(255);
insert into my_app.users_tbl (user_firstname, user_lastname, user_email, user_password) VALUES (UPPER('nombres'), UPPER('apellidos'), 'buzon@correo.com',
AES_ENCRYPT('The standard chunk of Lorem Ipsum used since the 1500s','$2a$12$2UfthxglYA88oprOV8X22uuHtYAyi7Y4mH2sT9Aad0rnJl1w3sMcO'));
SELECT *,CAST(AES_DECRYPT(user_password,
'$2a$12$2UfthxglYA88oprOV8X22uuHtYAyi7Y4mH2sT9Aad0rnJl1w3sMcO') AS CHAR(50)) end_data FROM users_tbl WHERE user_id = 1;

select * from users_tbl;
select * from categories_tbl;
select * from products_tbl;

