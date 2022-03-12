-- create database hotel_db;

use hotel_db;

drop table if exists hotels;

create table hotels (
    hotel_id    int PRIMARY KEY,
    name        varchar(128) not null,
    address     varchar(256) null,
    phone       varchar(32) null,
    email       varchar(128) null
    );

drop table if exists costs;

create table costs (
    hotel_id    int not null,
    night       date not null,
    cost        decimal(12,2) not null,
    avaliable   TINYINT(1) not null,
    PRIMARY KEY (hotel_id, night)
    );
    

drop table if exists total_costs;

create table total_costs (
    hotel_id    int not null,
    first_night date not null,
    last_night  date not null,
    total_cost  decimal(12,2) not null,
    PRIMARY KEY (hotel_id, first_night)
    );
    
    
