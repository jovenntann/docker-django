#!/usr/bin/env bash
docker-compose build
docker-compose up
docker-compose run app sh -c 'python manage.py migrate'
docker restart docker-django_app_1