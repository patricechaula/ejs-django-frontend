#!/bin/bash
#########################################################################
# startup_django.sh                                                     #
#                                                                       #
#########################################################################
#
brew install mysql
brew services start mysql
mysql.server start

mysql -uroot <<__EOF__
drop database if exists ejs;
create database ejs;
drop user if exists 'sa'@'localhost';
flush privileges;
CREATE USER 'sa'@'localhost' IDENTIFIED BY 'initial123';
GRANT ALL PRIVILEGES ON ejs.* TO 'sa'@'localhost';
flush privileges;
__EOF__
cat sql/ejs.sql | mysql -uroot ejs

export PATH=$PATH:/usr/local/mysql/bin
PATH=$(printf "%s" "$PATH" | awk -v RS=':' '!a[$1]++ { if (NR > 1) printf RS; printf $1 }')
echo $PATH
brew install python
sudo easy_install pip
sudo easy_install tornado
python -c "import django; print(django.get_version())"
python -mpip install matplotlib
sudo -H pip --version
sudo -H pip install pystan
sudo -H pip install nose
sudo pip install Django
sudo pip install --upgrade pip
python setup.py install
python setup.py egg_info
File "manage.py"
sudo pip install mysqlclient
#python manage.py shell
python manage.py migrate
python manage.py runserver
