create database genesee_db;

use genesee_db;

drop table if exists items;

create table items (
    item_id     int PRIMARY KEY,
    name        varchar(128) not null,
    description varchar(256) null,
    item_type   varchar(32) null
    );

drop table if exists orders;

create table orders (
    order_id    decimal(20,0) PRIMARY KEY,
    order_date  date not null,
    cost        decimal(12,2) not null
    );
    

drop table if exists order_items;

create table order_items (
    order_id    decimal(20,0) PRIMARY KEY,
    item_id     int not null,
    PRIMARY KEY (order_id, item_id)
    );
    
    
