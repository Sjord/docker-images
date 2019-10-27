FROM node:8
RUN yes | adduser tilemill
USER tilemill
WORKDIR /home/tilemill
RUN git clone https://github.com/tilemill-project/tilemill.git
WORKDIR /home/tilemill/tilemill
RUN npm install
RUN mkdir -p /home/tilemill/Documents/MapBox/project
EXPOSE 20009
CMD ["npm", "start", "--", "--listenHost=0.0.0.0"]
