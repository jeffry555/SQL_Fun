# Sync Data Between Tables 

Step 3 

## Goal

The goal is to understand how to deal with dynamic sql and meta data to synchronize any two tables.

In this step you will write a stored procedure that will synchronize any destination table with any source table as long as they have the same primary keys and one or more common columns.

For this task you will create a stored procedure called sync_table which take two parameters, srcTable and destTable, and then determine the primary keys and common columns for the two tables and then sync them. If the two tables do not have the same primary keys or their common columns have different data types not syncing should be done.

Before the store procedure is run the source and destination tables may have different data. After the stored procedure is run, the following will be true:
- Any rows in the source table that were not in the destination table are added to the destination table.
- Any rows that were in the destination table, but not in the source table are deleted from the destination table.
- Any rows that were in both tables before the stored procedure was called will have the common columns in the destination table to match the source table. Values in non-common columns will not be changed. 

For this step you will need to use the meta schema table:
- information_schema.tables
- information_schema.columns
- information_schema.table_constraints
- information_schema.key_column_usage

For this step you should:

In bash make sure you set the DBXP_BIN

export DBXP_BIN=<path>/bin

update the stored procedure in createSp.sql

execute the runTest.sh shell script

./runTest.sh 


The tests will test delete first, then insert and finally delete. So you can build you stored procedure in that order.


