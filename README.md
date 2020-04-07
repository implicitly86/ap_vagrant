# Awesome Project Vagrant
__Виртуальная машина [Vagrant](https://www.vagrantup.com/) - среда разработки__

### Установка
- Выключить компонент Hyper-V
- Включить поддержку аппаратной виртуализации (Intel VTx/AMD SVM) в BIOS
- Установить Virtual Box
- Установить последнюю версию Vagrant
- Зайти в директорию с Vagrantfile

```bash
git clone http:/github.com/implicitly86/ap_vagrant/ap_vagrant.git
cd ap_vagrant
```

##### Запустить VM / запустить установку VM 
```bash
vagrant up
```
##### Подключиться к VM
```bash
vagrant ssh
```
##### Остановить VM
```bash
vagrant halt
```
##### Уничтожить VM
```bash
vagrant destroy
```

### Приложения
Вместе с ВМ будут подняты следующие приложения:
1. _[Portainer](http://192.168.33.10:9000)_ (адрес: **192.168.33.10**, порт: **9000**)
1. _[Prometheus](http://192.168.33.10:9090)_ (адрес: **192.168.33.10**, порт: **9090**)
1. _[Grafana](http://192.168.33.10:3000)_ (адрес: **192.168.33.10**, порт: **3000**)
1. _[Consul](http://192.168.33.10:8500)_ (адрес: **192.168.33.10**, порт: **8500**)
1. _[ELK](http://192.168.33.10:5601)_ (адрес: **192.168.33.10**, logstash порт: **5044**, kibana порт: **5601**)
1. _[PostgreSQL](http://192.168.33.10:5432)_ (адрес: **192.168.33.10**, порт: **5432**, пользователь: **postgres**, пароль: **12345**)
1. _[Redis](http://192.168.33.10:6379)_ (адрес: **192.168.33.10**, порт: **6379**)
