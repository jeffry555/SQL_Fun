
use hotel_db;

DROP PROCEDURE IF EXISTS find_lowest_prices;

DELIMITER //
CREATE PROCEDURE find_lowest_prices(IN checkIn DATE, IN checkOut DATE, IN days INT)
BEGIN

DECLARE counter INT DEFAULT 1;

INSERT INTO total_costs (hotel_id, first_night, last_night, total_cost) 
	SELECT hotel_id, night, night, cost 
	FROM costs 
	WHERE available = 1 AND night >= checkIn AND night <= checkOut;

WHILE counter < days DO
	UPDATE total_costs TC
	JOIN costs C
	ON TC.hotel_id = C.hotel_id AND available = 1 AND night = ADDDATE(last_night, 1)
	SET total_cost = total_cost + cost, last_night = night;
	SET counter = counter + 1;
END WHILE;

DELETE FROM total_costs where DATEDIFF( last_night, first_night ) != days - 1;

DELETE FROM total_costs where EXISTS (SELECT 1 FROM total_costs TC where TC.total_cost < total_costs.total_cost);

SELECT name, first_night, last_night, total_cost
FROM total_costs T
join hotels H on T.hotel_id = H.hotel_id
order by total_cost ;
END
//
DELIMITER ;
