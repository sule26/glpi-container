## GLPI Free Asset and IT Management Software Containerization

GLPI Version: 10.0.3
PHP: 8.1

Docker: OK
Kubernetes: in progress
# DOCKER SETUP

STEP 1:

    docker build -t glpi-conteiner .

STEP 2:

    docker-compose up

STEP 3:

acess:

    http://localhost

Setup >

DB config (you can set user and password in docker-compose file), default is:

    HOST = mariadb

    user = user

    password = pass


# Kubernetes SETUP

Working...