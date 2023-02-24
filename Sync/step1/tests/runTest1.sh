#!/bin/sh

echo Running test for insert

${DBXP_BIN}/runSql.sh < init1.sql

${DBXP_BIN}/runSql.sh < ../createSp.sql

${DBXP_BIN}/runSql.sh < test1.sql | tee test1.out

