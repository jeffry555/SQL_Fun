#!/bin/sh

# create database and tables

echo creating tables for Net Watcher DB

${DBXP_BIN}/runSql.sh < CreateSchema.sql

