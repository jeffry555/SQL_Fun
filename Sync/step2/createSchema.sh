#!/bin/sh

# create database and tables

${DBXP_BIN}/createDatabase.sh net_watcher

echo creating tables for Net Watcher DB

${DBXP_BIN}/runSql.sh < CreateSchema.sql

