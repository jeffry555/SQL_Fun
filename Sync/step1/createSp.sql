
use dbxp_net_watcher;

DROP PROCEDURE IF EXISTS sync_table;

DELIMITER //
CREATE PROCEDURE sync_table()
BEGIN

DELETE
FROM alarm_def_local 
WHERE 1 = 2;

END
//
DELIMITER ;
