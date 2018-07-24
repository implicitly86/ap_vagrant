#!/bin/sh

sudo pacman -Syyu --noconfirm

# install unzip
sudo pacman -S --noconfirm unzip

#install git
sudo pacman -S --noconfirm git
git version

#instal docker
sudo pacman -S --noconfirm docker
docker --version

#install docker-compose
sudo pacman -S --noconfirm docker-compose
docker-compose --version

#install JDK
sudo pacman -S --noconfirm jdk8-openjdk
java -version

#install maven
sudo pacman -S --noconfirm maven
mvn --version

#install gradle
sudo pacman -S --noconfirm gradle
gradle --version

#increase max virtual memory areas (for Elasticsearch)
sudo sed -i '$ a\vm.max_map_count=262144' /etc/sysctl.conf
sudo sysctl -w vm.max_map_count=262144

#reboot
