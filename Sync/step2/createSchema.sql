CREATE DATABASE IF NOT EXISTS dbxp_net_watcher;

use dbxp_net_watcher;

DROP TABLE IF EXISTS alarm_def_level;

CREATE TABLE alarm_def_level (
    alarm_id    int not null,
    level       int not null,
    threshold   decimal(14,4) not null,
    severity    int not null,
    PRIMARY KEY(alarm_id, level)    
    );

DROP TABLE IF EXISTS alarm_def_level_local;

CREATE TABLE alarm_def_level_local (
    alarm_id    int not null,
    level       int not null,
    threshold   decimal(14,4) not null,
    severity    int not null,
    threshold_override   decimal(14,4) null,
    PRIMARY KEY(alarm_id, level)    
    );

    
    
