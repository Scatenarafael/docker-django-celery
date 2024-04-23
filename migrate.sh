#!/bin/bash

cd /app/

/opt/venv/bin/python manage.py collectstatic --noinput
/opt/venv/bin/python manage.py makemigrations --noinput

/opt/venv/bin/python manage.py migrate --noinput
/opt/venv/bin/python manage.py createsuperuser --noinput || true