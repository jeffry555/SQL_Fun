#!/bin/sh

#DB_USER="${1:-${DBXP_USER:-fungi}}"
#DB_PASSWD="${2:-${DBXP_PASSWD:-mushroom}}"
#DB_NAME="${3:-${DBXP_NAME:-toadstool}}"

# Set DB_NAME DB_USER DB_PASSWD
. ${DBXP_BIN}/env

# create database and defualt user 

echo "Creating user $DB_USER for database $DB_NAME with password ending in ***${DB_PASSWD: -4}"

mysql << XXX
CREATE USER IF NOT EXISTS '$DB_USER'@'localhost' IDENTIFIED BY '$DB_PASSWD';

CREATE DATABASE IF NOT EXISTS $DB_NAME;

GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'localhost';

XXX



