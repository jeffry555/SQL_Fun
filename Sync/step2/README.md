# Sync Data Between Tables 

Step 2 

## Goal

The goal is to understand how to deal with tables that have primary keys with multiple columns.

The goal of this step is to write a stored procedure that will synchronize a destination table with a source table that have a primary key consisting of multiple columns.

Remember a primary key is what data uniquely identifies a row in a table.

You need to sync the alarm_def_level_local table with the alarm_def_level table. 

For this task you will create a stored procedure called sync_table which will sync the alarm_def_local table with the alarm_def_level table. The tables should have the same primary keys (alarm_id, level) and some number of common columns(threshold, severity). The keys and common columns will have the same data type.

Before the store procedure is run the source and destination tables may have different data. Afterthe stored procedure is run, the following will be true:
- Any rows in the source table that were not in the destination table are added to the destination table.
- Any rows that were in the destination table, but not in the source table are deleted from the destination table.
- Any rows that were in both tables before the stored procedure was called will have the common columns in the destination table to match the source table. Values in non-common columns will not be changed. 


For this step you should:

In bash make sure you set the DBXP_BIN

export DBXP_BIN=<path>/bin

update the stored procedure in createSp.sql

execute the runTest.sh shell script

./runTest.sh 


The tests will test delete first, then insert and finally delete. So you can build you stored procedure in that order.


