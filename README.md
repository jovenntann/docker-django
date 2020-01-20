# CLEAR DOCKERS ###############################################################
docker rm $(docker ps -a -q) -f
docker volume prune
docker-compose up --build

# DOCKER COMMANDS: ############################################################
docker rm $(docker ps -aq)
docker image rm <image-name-or-id>

docker container ps
docker kill <image-name-or-id>

# Docker Build
docker-compose up

# SSH to Docker
docker exec -it docker-composer-rasa_rasa_1 /bin/bash
docker exec -it docker-composer-rasa_action_server_1 /bin/bash

# DJANGO SERVICE ############################################################

# Docker Compose Build
docker-compose build

# Docker Run "app" Service (Will Run in the Working Directory)
docker exec -it docker-django_app_1 /bin/bash
docker-compose run app sh -c 'django-admin.py startproject website .'
docker-compose run app sh -c 'python manage.py migrate'
docker-compose run app sh -c 'python manage.py startapp app'