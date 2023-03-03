#!/bin/sh

echo Running test for update

${DBXP_BIN}/runSql.sh < init3.sql

${DBXP_BIN}/runSql.sh < ../createSp.sql

${DBXP_BIN}/runSql.sh < test3.sql | tee results/test3.out

${DBXP_BIN}/checkResults.sh 3 

