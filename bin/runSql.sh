#!/bin/sh

#DB_USER="${1:-${DBXP_USER:-fungi}}"
#DB_PASSWD="${2:-${DBXP_PASSWD:-mushroom}}"

# Set DB_NAME DB_USER DB_PASSWD
. ${DBXP_BIN}/env

mysql -u$DB_USER -p$DB_PASSWD




