STEP 1: install with helm:

    helm repo add glpi-conteiner https://vdiogov.github.io/glpi-conteiner/
    helm install glpi-helm glpi-conteiner/glpi

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