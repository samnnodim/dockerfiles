#!/bin/bash

JAVA_OPTS=${JAVA_OPTS:-"-Xms128m -Xmx1024m"}

cd /STARMADE
java $JAVA_OPTS -jar StarMade.jar -server
