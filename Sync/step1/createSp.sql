
use dbxp_net_watcher;

DROP PROCEDURE IF EXISTS sync_tables;

DELIMITER //
CREATE PROCEDURE sync_tables()
BEGIN

DELETE
FROM alarm_def_local 
WHERE 1 = 2;

END
//
DELIMITER ;
