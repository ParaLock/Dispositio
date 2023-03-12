#!/bin/sh
user={{container_username}}
id=$(id -u $user)
export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/$id/bus
sudo systemctl start user@$id 
sudo rm -f /run/user/1000/pipewire-0
sudo ln -s /mnt/pipewire-0 /run/user/1000/pipewire-0
export DISPLAY=:0
    
