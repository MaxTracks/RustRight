#!/bin/bash

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:'dirname $0'/RustDedicated_Data/Plugins/x86_64

~/.steam/steamcmd/rust/RustDedicated -batchmode +server.port 28015 +rcon.port 28016 +rcon.ip 0.0.0.0 +rcon.password "password" +server.identity "<serv_name>" +server.hostname "<serv_name>" +server.maxplayers 50 +server.seed 1337 +server.saveinterval 600 -logfile 2>&1 | tee rust-server.log
