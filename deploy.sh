#!/bin/bash -eu

git pull
cd /home/isucon/torb/webapp/go && make build

sudo systemctl stop torb.go
sudo systemctl stop h2o
sudo systemctl stop mariadb

# ログ消す
sudo rm -f /var/log/mariadb/mariadb.log
sudo rm -f /var/log/h2o/*

sudo systemctl daemon-reload

sudo systemctl start mariadb
sudo systemctl start h2o
sudo systemctl start torb.go
