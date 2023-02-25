#!/bin/sh

echo Running test for delete

${DBXP_BIN}/runSql.sh < init2.sql

${DBXP_BIN}/runSql.sh < ../createSp.sql

${DBXP_BIN}/runSql.sh < test2.sql | tee results/test2.out

${DBXP_BIN}/checkResults.sh 2 

