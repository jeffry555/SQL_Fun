
use net_watcher;

call sync_tables( );


select concat( alarm_id, '|', name, '|', mib_val, '|', operator,'|', threshold, '|', severity, '|',
	coalesce( description, 'NULL' ), '|',
	coalesce( disabled, 'NULL' ), '|',
	coalesce( threshold_override, 'NULL' ), '|',
	coalesce( disabled_override, 'NULL' ) ) Results
from alarm_def_local
order by alarm_id;   
