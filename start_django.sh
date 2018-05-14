#!/bin/bash
#########################################################################
# startup_django.sh                                                     #
#                                                                       #
#########################################################################
#
python -c "import django; print(django.get_version())"
pip --version
sudo pip install Django
sudo pip install --upgrade pip
pip install mysqlclient
#python manage.py shell
python manage.py runserver
