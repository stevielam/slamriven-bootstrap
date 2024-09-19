#!/bin/sh

debridToken=${1}
plexToken=${2}

cp -rf /tmp/build/app/* /app
chown -R 1000:1000 /app

#connect Zurg to Real Debrid Account
sed -i "s/real_debrid_token_here/$debridToken/g" /app/zurg/config/config.yml

sed -i "s/plex_token_here/$plexToken/g" /app/zurg/config/plexupdate.sh

