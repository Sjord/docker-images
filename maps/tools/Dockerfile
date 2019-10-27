FROM sjoerd/debian-base:buster
RUN apt-get install -y --no-install-recommends postgis
RUN apt-get install -y osmctools gdal-bin osm2pgsql pdfposter git postgresql-client mapnik-utils python
RUN yes | adduser maps
WORKDIR /home/maps
USER maps
CMD ["bash"]
