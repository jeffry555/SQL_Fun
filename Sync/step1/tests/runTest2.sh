#!/bin/sh

echo Running test for delete

${DBXP_BIN}/runSql.sh < init1.sql

${DBXP_BIN}/runSql.sh < ../createSp.sql

${DBXP_BIN}/runSql.sh < test2.sql | tee test2.out

