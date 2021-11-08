#!/bin/bash
set -e

yum update -y

curl –sL https://rpm.nodesource.com/setup_12.x | sudo bash -
yum install –y nodejs

node –-version

npm install -g pm2
pm2 update
