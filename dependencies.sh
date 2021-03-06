#!/bin/sh

sudo pacman -Syy

sudo pacman -S --noconfirm reflector
sudo reflector --latest 200 --protocol http --protocol https --sort rate --save /etc/pacman.d/mirrorlist

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
sudo pacman -S --noconfirm jdk11-openjdk
java -version

#install maven
sudo pacman -S --noconfirm maven
mvn --version

#install gradle
sudo pacman -S --noconfirm gradle
gradle --version

#reboot
