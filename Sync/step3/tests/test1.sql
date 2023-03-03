
use dbxp_net_watcher;

call sync_tables( );


select concat( alarm_id, '|', level, '|', threshold, '|', severity, '|',
	coalesce( threshold_override, 'NULL' )
	) Results
from alarm_def_level_local
order by alarm_id,level;   
