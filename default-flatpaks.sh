#!/usr/bin/env bash

if [[ ! -d /var/lib/default-flatpaks ]]; then
    exit 1
fi
notify-send 'Installing default applications' 'You can check status with `systemctl status default-flatpaks`'
xargs -a /etc/default-flatpaks/apps-list -- flatpak install --system -y flathub
notify-send 'Default applications installed'
touch /var/lib/default-flatpaks/done

