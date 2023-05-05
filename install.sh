#!/bin/bash
echo "Starting the process, hold on..."

#create new env
virtualenv env

#activate the django env
source env/bin/activate

#install deps
pip install django djangorestframework gunicorn psycopg2-binary django-cors-headers django-environ djangorestframework-simplejwt

#freeze deps
pip freeze > requirements.txt

#start project
django-admin startproject mysite .

#create custom auth app
python manage.py startapp accounts

#copy starter files
# cp ../../../../Desktop/models.py ./accounts

# cp ../../../../Desktop/settings.py ./mysite
cp ./models.py ./accounts
cp ./urls.py ./accounts
cp ./utils.py ./accounts
cp ./views.py ./accounts
cp ./serializers.py ./accounts
cp ./settings.py ./mysite

rm ./settings.py ./models.py ./urls.py ./utils.py ./views.py ./serializers.py

echo "That looks good, please take over:)"
