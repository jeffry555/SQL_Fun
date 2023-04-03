# Sync Data Between Tables 

This task involves synchronizing data between tables, which involves making a destination table contain the same contents as that of the source table.

## Goal

The goal is to understand how the insert, update and delete commands can process multiple rows of data. In addition we want to understand, meta data, primary keys and foreign key constraints.


For this task you will create a stored procedure called sync_table which will sync a destination table with a source table. The tables should have the same primary keys and some number of common columns. The keys and common columns will have the same data type.

Before the store procedure is run the source and destination tables may have different data. Afterthe stored procedure is run, the following will be true:
- Any rows in the source table that were not in the destination table are added to the destination table.
- Any rows that were in the destination table, but not in the source table are deleted from the destination table.
- Any rows that were in both tables before the stored procedure was called will have the common columns in the destination table to match the source table. Values in non-common columns will not be changed. 


