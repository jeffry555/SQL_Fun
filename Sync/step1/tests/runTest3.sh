#!/bin/sh

echo Running test for update

${DBXP_BIN}/runSql.sh < init3.sql

${DBXP_BIN}/runSql.sh < ../createSp.sql

${DBXP_BIN}/runSql.sh < test3.sql | tee test3.out

