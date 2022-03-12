
use hotel_db;

DROP PROCEDURE IF EXISTS find_lowest_prices;

DELIMITER //
CREATE PROCEDURE find_lowest_prices(IN checkIn DATE, IN checkOut DATE, IN days INT)
BEGIN

insert into total_costs (hotel_id, first_night, last_night, total_cost) select hotel_id, night, night, cost from costs where avaliable = 1;

SELECT * FROM total_costs;
END
//
DELIMITER ;
