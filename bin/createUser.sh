#!/bin/sh

# Set DB_NAME DB_USER DB_PASSWD
. ${DBXP_BIN}/env

# create database and defualt user 
GRANT_NAME="\`dbxp\\_%\`"

echo "Creating user $DB_USER with password ending in ***${DB_PASSWD: -4}"

mysql << XXX
CREATE USER IF NOT EXISTS '$DB_USER'@'localhost' IDENTIFIED BY '$DB_PASSWD';

GRANT ALL PRIVILEGES ON $GRANT_NAME . * TO '$DB_USER'@'localhost';

XXX



