create database blog_db;

use blog_db;

create table types(
	id int primary key auto_increment,
    name varchar(100)
);

create table categories(
	id int primary key auto_increment,
    name varchar(100)
);

create table blogs(
	id int primary key auto_increment,
    title varchar(100),
    text varchar(3000),
    image varchar(100),
    date datetime,
    type_id int,
    category_id int,
    foreign key (type_id) references types(id)
    on update cascade on delete cascade,
    foreign key (category_id) references categories(id)
    on update cascade on delete cascade
);

create table comments(
	id int primary key auto_increment,
    username varchar(100),
    mail varchar(100),
    blog_id int,
    text varchar(200),
    foreign key (blog_id) references blogs(id)
    on update cascade on delete cascade
);

create table about_us(
	id int primary key auto_increment,
    description varchar(3000)
);

create table contacts(
	id int primary key auto_increment,
    full_name varchar(100),
    mail varchar(100),
    number varchar(100),
    topic varchar(100),
    text varchar(1000)
);