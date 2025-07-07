#!/usr/bin/env bash

notify-send 'installing flatpaks' 'you can check status with `systemctl status default-flatpaks`'
xargs -a /etc/default-flatpaks/apps-list -- flatpak install --system -y flathub
notify-send 'installing flatpaks done'
touch /var/lib/default-flatpaks/done

