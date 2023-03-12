#!/bin/bash
sudo systemctl mask systemd-logind.service
sudo systemctl mask dbus-org.freedesktop.login1.service
sudo systemctl mask getty@.service
sudo systemctl mask getty@2.service
sudo systemctl mask getty@1.service