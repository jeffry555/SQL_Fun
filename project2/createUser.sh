#!/bin/sh

# create database and defualt user 
DB_USER="${FUN_USER:-fungi}"
DB_PASSWD="${FUN_PASSWD:-mushroom}"

echo $DB_PASSWD

mysql << XXX
CREATE USER '$DB_USER'@'localhost' IDENTIFIED BY '$DB_PASSWD';

CREATE DATABASE IF NOT EXISTS genesee_db;

GRANT ALL PRIVILEGES ON genesee_db.* TO '$DB_USER'@'localhost';

XXX



