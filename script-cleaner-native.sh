#!/bin/sh

#This script will remove unnessecary "first setup" lines from the arkenfox-softening script

cd ~/.scripts/

# creating the profile folder
sed -i '2,3d' arkenfox-script-native.sh

# setting up the profile, starting it, messages, appstarter creation, downloading of this script
sed -i '53,95d' arkenfox-script-native.sh

# add new notification
printf """
notify-send 'Arkenfox' 'Firefox Arkenfox user.js updated'""" >> arkenfox-script-native.sh

# remove itself
rm script-cleaner-native.sh
