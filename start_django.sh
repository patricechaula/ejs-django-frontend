#!/bin/bash
#########################################################################
# startup_django.sh                                                     #
#                                                                       #
#########################################################################
#
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
sudo pip install mysqlclient
#python manage.py shell
python manage.py runserver
