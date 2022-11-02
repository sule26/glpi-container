## GLPI Free Asset and IT Management Software Containerization

GLPI Version: 10.0.3
PHP: 8.1
Mariadb

Docker: OK
Kubernetes: in progress
# DOCKER SETUP

STEP 1: build

    docker build -t glpi-conteiner .

STEP 2: compose up

    docker-compose up

STEP 3: acess & configure

acess:

    http://localhost

Setup >

DB config (you can set user and password in docker-compose file), default is:

    HOST = mariadb

    user = user

    password = pass

DB Select >

    glpi

# Kubernetes SETUP


STEP 1: install with helm:

    helm install glpi-helm ./glpi


STEP 2: expose service:

    kubectl port-forward glpi-helm-service 80:80

STEP 3: get db password (in windows use gitbash to decode base64):
    kubectl get secret glpi-helm-mariadb-secret -o jsonpath='{.data.password}' | base64 --decode

STEP 4: acess & configure

    http://localhost


Setup >

DB config (you can set user and password in docker-compose file), default is:

    HOST = glpi-helm-mariadb-service

    user = user_glpi

    password = (STEP 3)


DB Select >

    glpi