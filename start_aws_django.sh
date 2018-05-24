#!/bin/bash
#########################################################################
# startup_django.sh                                                     #
#                                                                       #
#########################################################################
#
sudo yum -y update

sudo yum -y groupinstall "Development Tools"

sudo yum -y install mysql
sudo yum -y install mysql-server

sudo /sbin/chkconfig --add mysqld
sudo /sbin/chkconfig mysqld on

sudo service mysqld start


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

sudo yum install -y python27.x86_64

sudo easy_install pip
sudo easy_install tornado

sudo yum -y install MySQL-python27.x86_64

pip install --upgrade pip
pip --version

pip install argparse
#pip install cheetah
pip install oauth
pip install PrettyTable
pip install pyserial


pip install matplotlib
pip install pystan
pip install nose
pip install django

sudo -H yum -y install  python27-cheetah.x86_64

python -c "import django; print(django.get_version())"

#python setup.py install
#python setup.py egg_info

#python manage.py shell
python manage.py migrate
python manage.py runserver
