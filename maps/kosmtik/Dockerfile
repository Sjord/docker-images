FROM node:8
RUN apt-get update && apt-get install -y fonts-noto fonts-hanazono unifont
RUN yes | adduser maps
USER maps
WORKDIR /home/maps
RUN npm install kosmtik
RUN ln -s /home/maps/node_modules /home/maps/node_modules/kosmtik/node_modules
EXPOSE 6789
CMD ["node_modules/.bin/kosmtik", "serve", "--host=0.0.0.0", "/project/project.mml"]
