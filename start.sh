#!/bin/sh
if ! grep -q "eula=true" eula.txt; then
  echo "eula=true" > eula.txt
fi
java -XX:+UseG1GC -XX:+UnlockExperimentalVMOptions -Xmx${MC_RAM} -Xms4096M -jar forge-1.12.2-14.23.5.2847-universal.jar nogui
