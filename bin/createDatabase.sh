#!/bin/sh

. ${DBXP_BIN}/env

DB_NAME=$1

# create database and defualt user 

echo "Creating database $DB_NAME for user $DB_USER "

${DBXP_BIN}/runSql.sh << XXX
CREATE DATABASE IF NOT EXISTS $DB_NAME;

XXX


