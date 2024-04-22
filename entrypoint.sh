#!/bin/bash

APP_PORT=${PORT}
cd /app/
# /opt/venv/bin/python manage.py runserver "0.0.0.0:${APP_PORT}"
/opt/venv/bin/gunicorn --worker-tmp-dir /dev/shm core.wsgi:application --bind "0.0.0.0:${APP_PORT}" --reload
