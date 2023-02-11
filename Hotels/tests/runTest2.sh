#!/bin/sh

# create database and defualt user 
DB_USER="${FUN_USER:-fungi}"
DB_PASSWD="${FUN_PASSWD:-mushroom}"

echo Running test for Two night

mysql -u$DB_USER -p$DB_PASSWD < init1.sql

mysql -u$DB_USER -p$DB_PASSWD < ../createSp.sql

mysql -u$DB_USER -p$DB_PASSWD < test2.sql | tee test2.out

