
use dbxp_net_watcher;

DELETE FROM alarm_def;
DELETE FROM alarm_def_local;

INSERT INTO alarm_def ( alarm_id, name, mib_val, operator, threshold, description, severity, disabled )
    VALUES
    ( 1, 'CPU High', 'cpu_percent', '>=', 0.85, 'CPU higher than normal', 1, false ),
    ( 2, 'CPU Low', 'cpu_percent', '<', 0.02, 'CPU higher than normal', 3, false ),
    ( 3, 'IO High', 'disk_io', '>=', 0.70, 'Disk IO highr than normal', 2, false ),
    ( 4, 'Free Mem Low', 'mem_free', '<', 512, 'free memory lower than normal', 2, false ),
    ( 7, 'Cache Mem Low', 'mem_cached', '<', 512, 'cached memory lower than normal', 3, false ),
    ( 8, 'System CPU HIGH', 'sys_cpu_percent', '>=', .30, 'system CPU higher than normal', 3, false );
    

INSERT INTO alarm_def_local ( alarm_id, name, mib_val, operator, threshold, description, severity, disabled, threshold_override, disabled_override )
    VALUES
    ( 1, 'CPU High', 'cpu_percent', '>=', 0.85, 'CPU higher than normal', 1, false, 0.9, false ),
    ( 2, 'CPU Low', 'cpu_percent', '<', 0.02, 'CPU higher than normal', 3, false, null, null ),
    ( 3, 'IO High', 'disk_io', '>=', 0.70, 'Disk IO highr than normal', 2, false, .80, null ),
    ( 4, 'Free Mem Low', 'mem_free', '<', 512, 'free memory lower than normal', 2, false, null, true ),
    ( 5, 'Free Mem High', 'mem_free', '>', 8000, 'free memory higher than normal', 3, false, null, null ),
    ( 6, 'Recent Reboot', 'up_time', '<', 3600, 'Recent Reboot', 4, false, 1800, false ) ;
    

    
