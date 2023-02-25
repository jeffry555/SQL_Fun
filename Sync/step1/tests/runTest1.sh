#!/bin/sh

echo Running test for insert

echo Initializing test
${DBXP_BIN}/runSql.sh < init1.sql

${DBXP_BIN}/runSql.sh < ../createSp.sql

echo Running test
${DBXP_BIN}/runSql.sh < test1.sql | tee results/test1.out

${DBXP_BIN}/checkResults.sh 1 

