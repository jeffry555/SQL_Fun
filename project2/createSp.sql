
use genesee_db;

DROP PROCEDURE IF EXISTS favorite_items;

DELIMITER //
CREATE PROCEDURE find_favorite_items(IN start_date DATE, IN min_time_purchased INT)
BEGIN

SELECT name, null as first_time, null as last_time, 0 as times_purchased
FROM items I
order by name;
END
//
DELIMITER ;
