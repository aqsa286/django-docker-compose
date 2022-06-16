#! /bin/bash

python3 manage.py migrate --no-input
python3 manage.py colletstatic --no-input

gunicorn django_project.wsgi:application --bind 0.0.0.0:8000
