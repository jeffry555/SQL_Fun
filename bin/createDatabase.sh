#!/bin/sh

DB_NAME="${1:-${DBXP_NAME:-toadstool}}"
DB_USER="${2:-${DBXP_USER:-fungi}}"

# create database and defualt user 

echo "Creating database $DB_NAME for user $DB_USER "

mysql << XXX
CREATE DATABASE IF NOT EXISTS $DB_NAME;

GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'localhost';

XXX



