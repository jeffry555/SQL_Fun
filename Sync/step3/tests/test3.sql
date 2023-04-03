
use dbxp_net_watcher;

    
call sync_table( 'alarm_def', 'alarm_def_local');

select concat( alarm_id, '|', name, '|', mib_val, '|', operator,'|', threshold, '|', severity, '|',
	coalesce( description, 'NULL' ), '|',
	coalesce( disabled, 'NULL' ), '|',
	coalesce( threshold_override, 'NULL' ), '|',
	coalesce( disabled_override, 'NULL' ) ) Results
from alarm_def_local
order by alarm_id;


call sync_table( 'alarm_def_level', 'alarm_def_level_local');

select concat( alarm_id, '|', level, '|', threshold, '|', severity, '|',
	coalesce( threshold_override, 'NULL' )
	) Results
from alarm_def_level_local
order by alarm_id,level;   

