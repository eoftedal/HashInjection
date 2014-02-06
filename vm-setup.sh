#!/bin/bash

yum install -y ruby rubygems git mongodb ruby-devel rubygems nodejs mongodb-server.x86_64 screen

mkdir -p /data/db

mongod --fork --syslog

echo "gem: --no-rdoc --no-ri" >> ~/.gemrc

gem install --no-ri --no-rdoc bundler 

APPDIR=/usr/local/app/
mkdir -p $APPDIR
cd $APPDIR

cp -r /tmp/app/nosqli/* .

bundle install --jobs 4 

rake db:seed 

screen -dmS rails rails s




