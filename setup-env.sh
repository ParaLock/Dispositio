#!/bin/bash

if [ ! -f /tmp/.loggedin ]
then
    id=$(id -u $user)
    export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/$id/bus
    sudo systemctl start user@$id
    sudo touch /tmp/.loggedin
fi
