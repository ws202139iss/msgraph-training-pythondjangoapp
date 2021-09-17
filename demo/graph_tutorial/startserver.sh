#!/usr/bin/env bash
# start-server.sh
if [ -n "$DB_NAME" ] && [ -n "$DB_HOST" ] ; then
    python manage.py migrate
fi
python manage.py runserver 0.0.0.0:8000