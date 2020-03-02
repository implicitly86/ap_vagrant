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
1. _PostgreSQL_ (адрес: **192.168.33.10**, порт: **5432**, пользователь: **postgres**, пароль: **12345**)
1. _Redis_ (адрес: **192.168.33.10**, порт: **6379**)
1. _ELK_ (адрес: **192.168.33.10**, logstash порт: **5044**, kibana порт: **5601**)
1. _Consul_ (адрес: **192.168.33.10**, порт: **8500**)
1. _Grafana_ (адрес: **192.168.33.10**, порт: **3000**)
1. _Prometheus_ (адрес: **192.168.33.10**, порт: **9090**)
