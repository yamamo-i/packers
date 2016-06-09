# PostgreSQL9.5.2 on CentOS7.2

## setup

* copy json and shell files
```
$ cp centos.json centos/
$ cp script/setup_postgres.sh centos/script
```

## build box file

* run the command of packer
```
$ cd centos
$ packer build --only=virtualbox-iso -var-file=centos72.json centos.json
```

## run the virtual-machine with using vagrant

* entry the box file
```
$ vagrant box add centos72-pg952 ./centos/box/virtualbox/centos72-nocm-0.1.0.box
```

* run virtual-machine
```
$ cd env
$ vagrant up
```

