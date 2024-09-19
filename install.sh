#!/bin/sh

debridToken=${1}

cp -rf /tmp/build/app/* /app/data
chown -R 1000:1000 /app/data

#connect Zurg to Real Debrid Account
sed -i "s/replace_with_real_debrid_token/$debrid_token/g" /app/data/config/zurg/config.yml