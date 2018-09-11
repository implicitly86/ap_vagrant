#!/bin/sh

#increase max virtual memory areas (for Elasticsearch)
sudo sed -i '$ a\vm.max_map_count=262144' /etc/sysctl.conf
sudo sysctl -w vm.max_map_count=262144

#install postgres
sudo docker run --name postgres -e POSTGRES_PASSWORD=12345 --restart always -d -p 5432:5432 postgres:9.6.0

#install redis
sudo docker run --name redis --restart always -d -p 6379:6379 redis

#install ELK
git clone https://github.com/implicitly86/ap_elk.git
cd ap_elk
sudo docker build -t ap_elk .
sudo docker run --name ap_elk -d -it -p 5601:5601 -p 9200:9200 -p 5044:5044 ap_elk