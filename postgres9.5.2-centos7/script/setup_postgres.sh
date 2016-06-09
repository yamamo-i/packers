rpm -iUvh http://yum.postgresql.org/9.5/redhat/rhel-7-x86_64/postgresql95-libs-9.5.2-1PGDG.rhel7.x86_64.rpm
rpm -iUvh http://yum.postgresql.org/9.5/redhat/rhel-7-x86_64/postgresql95-9.5.2-1PGDG.rhel7.x86_64.rpm
rpm -iUvh http://yum.postgresql.org/9.5/redhat/rhel-7-x86_64/postgresql95-server-9.5.2-1PGDG.rhel7.x86_64.rpm
rpm -iUvh http://yum.postgresql.org/9.5/redhat/rhel-7-x86_64/postgresql95-devel-9.5.2-1PGDG.rhel7.x86_64.rpm

yum install -y uuid libxslt
rpm -iUvh http://yum.postgresql.org/9.5/redhat/rhel-7-x86_64/postgresql95-contrib-9.5.2-1PGDG.rhel7.x86_64.rpm

PG_HOME=/var/lib/pgsql
echo 'export PATH=/usr/pgsql-9.5/bin:$PATH' | sudo -u postgres tee -a $PG_HOME/.bashrc
echo "export PGDATA=$PG_HOME/data" | sudo -u postgres tee -a $PG_HOME/.bashrc
sudo -u postgres sh -c "source $PG_HOME/.bashrc && initdb --locale=C"
systemctl enable postgresql-9.5.service

