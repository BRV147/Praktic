#!/bin/bash
set -e
yum -y install git nginx
git clone https://github.com/kolakej/DatadogBootstrap.git
chmod 755 DatadogBootstrap/bootstrap.sh
bash DatadogBootstrap/bootstrap.sh --agent= --integration=nginx 
