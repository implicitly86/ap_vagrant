#!/bin/sh

#increase max virtual memory areas (for Elasticsearch)
sudo sed -i '$ a\vm.max_map_count=262144' /etc/sysctl.conf
sudo sysctl -w vm.max_map_count=262144

git clone https://github.com/implicitly86/ap_elk.git
cd ap_elk
sudo docker build -t ap_elk .

cd /vagrant
sudo docker-compose up -d
