FROM sjoerd/debian-base:bullseye

RUN apt-get install -y apache2 libapache2-mod-php php-gd php-curl php-mysql php-json php-imap php-xml php-zip php-mbstring php-xmlrpc php-soap php-intl php-sqlite3 && apt-get clean

ADD conf/allowoverride.conf /etc/apache2/conf-available/allowoverride.conf

RUN a2enmod rewrite ssl
RUN a2ensite default-ssl
RUN a2enconf allowoverride

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_LOCK_DIR=/var/lock
ENV APACHE_PID_FILE=/var/run/apache2/apache2.pid
ENV APACHE_RUN_DIR=/var/run/apache2

CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
