#!/bin/bash
#########################################################################
# startup_django.sh                                                     #
#                                                                       #
#########################################################################
#


yum -y update

yum -y groupinstall "Development Tools"

yum -y install mysql
yum -y install mysql-server

/sbin/chkconfig --add mysqld
/sbin/chkconfig mysqld on

service mysqld start


mysql -uroot <<__EOF__
drop user 'sa'@'localhost';
flush privileges;
__EOF__
mysql -uroot <<__EOF__
drop database if exists ejs;
create database ejs;
CREATE USER 'sa'@'localhost' IDENTIFIED BY 'initial123';
GRANT ALL PRIVILEGES ON ejs.* TO 'sa'@'localhost';
flush privileges;
__EOF__
cat sql/ejs.sql | mysql -uroot ejs

export PATH=$PATH:/usr/local/mysql/bin
PATH=$(printf "%s" "$PATH" | awk -v RS=':' '!a[$1]++ { if (NR > 1) printf RS; printf $1 }')
echo $PATH

yum install -y python27.x86_64

easy_install pip
easy_install tornado

yum -y install MySQL-python27.x86_64

#pip install --upgrade pip
python -mpip --version

python -mpip install argparse
#pip install cheetah
python -mpip install oauth
python -mpip install PrettyTable
python -mpip install pyserial


python -mpip install matplotlib
python -mpip install pystan
python -mpip install nose
python -mpip install django

yum -y install  python27-cheetah.x86_64

python -c "import django; print(django.get_version())"

python manage.py migrate
python manage.py runserver 0.0.0.0:100
