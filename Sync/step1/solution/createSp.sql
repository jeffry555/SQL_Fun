
use dbxp_net_watcher;

DROP PROCEDURE IF EXISTS sync_tables;

DELIMITER //
CREATE PROCEDURE sync_tables()
BEGIN

DELETE
FROM alarm_def_local
WHERE not exists (select 1 from alarm_def S where alarm_def_local.alarm_id = S.alarm_id );

INSERT INTO alarm_def_local ( alarm_id, name, mib_val, operator, threshold, description, severity, disabled )
SELECT alarm_id, name, mib_val, operator, threshold, description, severity, disabled 
FROM alarm_def S
WHERE not exists (select 1 from alarm_def_local D where S.alarm_id = D.alarm_id );

UPDATE alarm_def_local
JOIN alarm_def ON alarm_def_local.alarm_id = alarm_def.alarm_id
SET 
alarm_def_local.name = alarm_def.name,
alarm_def_local.mib_val = alarm_def.mib_val,
alarm_def_local.operator = alarm_def.operator,
alarm_def_local.threshold = alarm_def.threshold,
alarm_def_local.severity = alarm_def.severity,
alarm_def_local.description = alarm_def.description,
alarm_def_local.disabled = alarm_def.disabled;

END
//
DELIMITER ;
