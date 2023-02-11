# Genesee Online Retailer

This task involves finding a list of items a customer has purchased before. The init script will create an items table, an orders table and an order_items table. The tables will have foreigh keys which show the relationships between the tables. 

## Goal

For this task you will create a stored procedure called find_favorite_items which takes two parameters - start_date, min_times_purchased
it will return the item name, the date of the first time it was purchase, the last time it was purchased, the number of times it was purchased. The results should include only those items purchased on or after the start date and where purchased at least min_times_purchased times on or after the start date.
Items whith a type of 'Grocery' should be excluded. The result set should be sorted by the number of times it was purchased descending, most recent purchase date descending and item name ascending.

