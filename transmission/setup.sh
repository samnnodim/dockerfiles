#!/bin/bash
USERNAME=${USERNAME:-root}
PASSWORD=${PASSWORD:-transmission}

sed -i 's:\"username\":\"'"$USERNAME"'\":g' /var/lib/transmission-daemon/info/settings.json
sed -i 's:\"password\":\"'"$PASSWORD"'\":g' /var/lib/transmission-daemon/info/settings.json

transmission-daemon -f -g /var/lib/transmission-daemon/info
