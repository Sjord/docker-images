FROM sjoerd/ubuntu-base:14.04

RUN apt-get install -y apache2 libapache2-mod-php5 php5-gd php5-curl php5-mysql php5-json php5-imap php5-mcrypt && apt-get clean

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_LOCK_DIR=/var/lock
ENV APACHE_PID_FILE=/var/run/apache2.pid

CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
