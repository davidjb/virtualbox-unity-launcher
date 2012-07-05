#!/bin/bash
# Bash Script to integrate Virtualbox into Unity Launch bar.
# Creator: Daniel Scholtus
# Version: 1
# Date:    March 24, 2011

#Determine which is installed, virtualbox or virtualbox-ose
#Given the packages are mutually exclusive, only one exists at any one time
if [ `type -P virtualbox` ]; then
    LAUNCHER='share/applications/virtualbox.desktop'
elif [ `type -P virtualbox-ose` ]; then
    LAUNCHER='share/applications/virtualbox-ose.desktop'
else
    echo "This script requests virtualbox or virtualbox-ose installed."
    exit 1
fi

LOCAL_LAUNCHER=~/.local/$LAUNCHER
SYSTEM_LAUNCHER=/usr/$LAUNCHER

if [ ! -f $SYSTEM_LAUNCHER ]; then
    echo "This script requires a launcher located at $SYSTEM_LAUNCHER."
    exit 1
fi

if [ -f $LOCAL_LAUNCHER ]; then
    echo "Deleting old Launcher"
    rm $LOCAL_LAUNCHER
fi

echo "Creating Base Launcher"
cp -v $SYSTEM_LAUNCHER $LOCAL_LAUNCHER

if [ ! -f $LOCAL_LAUNCHER ]; then
    echo "Couldn't create your local VirtualBox launcher.  Aborting."
    exit 1
fi

echo "Adding shortcuts items declaration"

IFS=$'\n'

AYATANA="X-Ayatana-Desktop-Shortcuts="
MACHINES=("`vboxmanage list vms | sed 's/[\"\}]//g' | sed 's/ [\{]/;/g'`")

for m in $MACHINES
do
    s=(`echo $m | tr ';' '\n'`)
    AYATANA=$AYATANA${s[1]}";"
done

echo "" >> $LOCAL_LAUNCHER
echo $AYATANA"VirtualBox" >> $LOCAL_LAUNCHER
echo "" >> $LOCAL_LAUNCHER

echo "Adding shortcuts items descriptions"

for m in $MACHINES
do
    s=(`echo $m | tr ';' '\n'`)
    echo " - "${s[0]}" -> "${s[1]}
    echo "[${s[1]} Shortcut Group]" >> $LOCAL_LAUNCHER
    echo "Name=${s[0]}" >> $LOCAL_LAUNCHER
    echo "Exec=virtualbox --startvm ${s[1]}" >> $LOCAL_LAUNCHER
    echo "TargetEnvironment=Unity" >> $LOCAL_LAUNCHER
    echo "" >> $LOCAL_LAUNCHER
done

echo "[VirtualBox Shortcut Group]" >> $LOCAL_LAUNCHER
echo "Name=Settings" >> $LOCAL_LAUNCHER
echo "Exec=virtualbox" >> $LOCAL_LAUNCHER
echo "TargetEnvironment=Unity" >> $LOCAL_LAUNCHER

unset IFS
