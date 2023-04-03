
use dbxp_net_watcher;

DROP PROCEDURE IF EXISTS sync_table;

DELIMITER //
CREATE PROCEDURE sync_table( IN srcTable varchar(64), IN destTable varchar(64) )
BEGIN

DELETE
FROM alarm_def_level_local
WHERE 1 = 2;

END
//
DELIMITER ;
