#!/bin/sh

#install postgres
sudo docker run --name postgres -e POSTGRES_PASSWORD=12345 --restart always -d -p 5432:5432 postgres:9.6.0

#install redis
sudo docker run --name redis --restart always -d -p 6379:6379 redis

