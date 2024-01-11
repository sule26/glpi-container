FROM diouxx/glpi

COPY ./glpi-start.sh /opt/

# RUN sed -i "62i sed -i 's/^session.cookie_httponly =/session.cookie_httponly = on/' /etc/php/8.1/apache2/php.ini" /opt/glpi-start.sh

# RUN sed -i "63i rm /var/www/html/glpi/install/install.php" /opt/glpi-start.sh

RUN /opt/glpi-start.sh

COPY ./start.sh /opt/

ENTRYPOINT [ "/opt/start.sh" ]
