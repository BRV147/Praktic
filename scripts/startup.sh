#!/bin/bash
set -e
yum -y install git nginx
git clone https://github.com/kolakej/DatadogBootstrap.git
chmod 755 DatadogBootstrap/bootstrap.sh
cd DatadogBootstrap
bash ./bootstrap.sh --agent= --integration=nginx 
