#!/bin/sh

cmd_args="--plexpyhost $PLEXPY_HOST --plexpyapikey $PLEXPY_API_KEY --influxdbhost $INFLUXDB_HOST"
if [ ! -z "$PLEXPY_PORT" ]; then
    cmd_args="$cmd_args --plexpyport $PLEXPY_PORT"
fi
if [ ! -z "$PLEXPY_BASE_URL" ]; then
    cmd_args="$cmd_args --plexpybaseurl $PLEXPY_BASE_URL"
fi 
if [ ! -z "$PLEXPY_WEB_PROTOCOL" ]; then
    cmd_args="$cmd_args --plexpywebprotocol $PLEXPY_WEB_PROTOCOL"
fi
if [ ! -z "$INFLUXDB_PORT" ]; then
    cmd_args="$cmd_args --influxdbport $INFLUXDB_PORT"
fi
if [ ! -z "$INFLUXDB_USER" ]; then
    cmd_args="$cmd_args --influxdbuser $INFLUXDB_USER"
fi
if [ ! -z "$INFLUXDB_PASSWORD" ]; then
    cmd_args="$cmd_args --influxdbpassword $INFLUXDB_PASSWORD"
fi
if [ ! -z "$INTERVAL" ]; then
    cmd args="$cmd_args --interval $INTERVAL"
fi

python ./plexpy_influxdb_export.py $cmd_args
