#!/bin/bash

# php /var/www/html/glpi/bin/console db:install --db-host=icv-public.local --db-name=glpidb --db-user=glpi_user --db-password=glpi --db-port=3310 --default-language=pt_BR --force --enable-telemetry --no-interaction --reconfigure

# rm /var/www/html/glpi/install/install.php

/usr/sbin/apache2ctl -D FOREGROUND

