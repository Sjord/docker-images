FROM node:8
RUN apt-get update && apt-get install -y fonts-noto fonts-hanazono unifont
RUN yes | adduser maps
USER maps
WORKDIR /home/maps
RUN git clone https://github.com/tilemill-project/tilemill.git
WORKDIR /home/maps/tilemill
RUN npm install
RUN mkdir -p /home/maps/Documents/MapBox/project
EXPOSE 20009
CMD ["npm", "start", "--", "--listenHost=0.0.0.0"]
