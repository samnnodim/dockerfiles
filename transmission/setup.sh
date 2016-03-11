#!/bin/sh
set -x
USERNAME=${USERNAME:-root}
PASSWORD=${PASSWORD:-transmission}

sed -i 's:\"username\":\"'"$USERNAME"'\":g' /root/.config/transmission-daemon/settings.json
sed -i 's:\"password\":\"'"$PASSWORD"'\":g' /root/.config/transmission-daemon/settings.json

transmission-daemon -f -g /root/.config/transmission-daemon
