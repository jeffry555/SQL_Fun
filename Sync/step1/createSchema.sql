CREATE DATABASE IF NOT EXISTS net_watcher;

use net_watcher;

DROP TABLE IF EXISTS alarm_def;

CREATE TABLE alarm_def (
    alarm_id    int PRIMARY KEY,
    name        varchar(32) not null,
    mib_val     varchar(32) not null,
    operator    varchar(3) not null,
    threshold   decimal(14,4) not null,
    severity    int not null,
    description varchar(256) null,
    disabled    bool null
    );

DROP TABLE IF EXISTS alarm_def_local;

CREATE TABLE alarm_def_local (
    alarm_id             int PRIMARY KEY,
    name                 varchar(32) not null,
    mib_val              varchar(32) not null,
    operator             varchar(3) not null,
    threshold            decimal(14,4) not null,
    severity             int not null,
    description          varchar(256) null,
    disabled             bool null,
    threshold_override   decimal(14,4) not null
    disabled_override    bool null
    );

    
    
