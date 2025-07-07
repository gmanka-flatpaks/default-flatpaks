#!/usr/bin/env bash

notify-send 'Installing default applications' 'You can check status with `systemctl status default-flatpaks`'
xargs -a /etc/default-flatpaks/apps-list -- flatpak install --system -y flathub
notify-send 'Default applications installed'
touch /var/lib/default-flatpaks/done

