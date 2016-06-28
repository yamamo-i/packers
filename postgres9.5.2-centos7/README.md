# PostgreSQL9.5.2 on CentOS7.2

## setup

* initialize and update submodule
```bash
$ git submodule init
$ git submodule update
```
* copy json and shell files
```bash
$ cp centos.json centos/
$ cp script/setup_postgres.sh centos/script
```

## build box file

* run the command of packer
```bash
$ cd centos
$ packer build --only=virtualbox-iso -var-file=centos72.json centos.json
```

## run the virtual-machine with using vagrant

* entry the box file
```bash
$ vagrant box add centos72-pg952 ./centos/box/virtualbox/centos72-nocm-0.1.0.box
```

* run virtual-machine
```bash
$ cd env
$ vagrant up
```

