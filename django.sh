#!/bin/bash

if [ -d "env" ] 
then
    echo "PYTHON VIRTUAL ENVIRONMENT EXISTS."
else
    virtualenv -p python3.8 env
fi

. env/bin/activate

pip install -r requirements.txt

python manage.py makemigrations --noinput

python manage.py migrate

python manage.py runserver 0.0.0.0:2158
