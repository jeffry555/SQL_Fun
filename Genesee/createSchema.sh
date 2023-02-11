#!/bin/sh

# create database and defualt user 
DB_USER="${FUN_USER:-fungi}"
DB_PASSWD="${FUN_PASSWD:-mushroom}"

echo creating tables for genesee db

mysql -u$DB_USER -p$DB_PASSWD < CreateSchema.sql

