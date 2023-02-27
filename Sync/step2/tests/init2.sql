
use net_watcher;

DELETE FROM alarm_def_level;
DELETE FROM alarm_def_level_local;

INSERT INTO alarm_def_level ( alarm_id, level, threshold, severity )
    VALUES
    ( 1, 1, 0.95, 1 ),
    ( 1, 2, 0.90, 2 ),
    ( 1, 3, 0.80, 4 ),
    ( 2, 1, 0.01, 2 ),
    ( 2, 2, 0.02, 3 ),
    ( 3, 1, 0.85, 2 ),
    ( 3, 2, 0.70, 3 ),
    ( 4, 2, 512, 2 ),
    ( 7, 1, 256, 2 ),
    ( 7, 2, 512, 3 ),
    ( 8, 1, 512, 3 ),
    ( 8, 2, 512, 2 );
    

INSERT INTO alarm_def_level_local ( alarm_id, level, threshold, severity, threshold_override )
    VALUES
    ( 1, 1, 0.95, 1, 0.97 ),
    ( 1, 2, 0.90, 2, 0.92 ),
    ( 1, 3, 0.80, 4, NULL ),
    ( 2, 1, 0.01, 2, NULL ),
    ( 2, 2, 0.02, 3, NULL ),
    ( 3, 1, 0.85, 2, NULL ),
    ( 3, 2, 0.70, 3, NULL ),
    ( 4, 2, 512, 2, NULL ),
    ( 5, 1, 8000, 2, NULL ),
    ( 5, 2, 9000, 3, NULL ),
    ( 6, 1, 3600, 4, NULL ) ;
    

    

    
