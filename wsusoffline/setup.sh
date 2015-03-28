#!/bin/bash

SYSTEM=${SYSTEM:-"all-x64"}
LANGUAGE=${LANGUAGE:-"enu"}
PARAMS=${PARAMS:-"/msse /dotnet"}
DOWNLOAD=${DOWNLOAD}
SLEEP=${SLEEP:-"48h"}


if [[ $DOWNLOAD =~ ^[Yy]$ ]]; then
    while true; do
        cd /wsusoffline/sh && ./DownloadUpdates.sh "$SYSTEM" "$LANGUAGE" "$PARAMS"
        echo "Sleeping for $SLEEP before next download."
        sleep "$SLEEP"
    done
fi
