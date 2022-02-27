# Hotels

This task involves finding the lowest prices for a hotel. The init script will create a hotel table and costs table. There is also a total_costs table which is a working table for calculating the total cost for each hotel. 

## Goal

For this task you will create a stored procedure called find_lowest_prices which takes three parameters - start_date, end_date, number_of_nights
it will return the hotel name, the check in date, the check out date and the total cost. The result set should be sorted by total cost.

For example a call of ( "2022-01-03", "2022-01-08", 3 ) will return all the possible consecutive 3 night stays that starts on or after "2022-01-03" and end on or before "2022-01-08"
