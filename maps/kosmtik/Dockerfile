FROM node:8
RUN yes | adduser kosmtik
USER kosmtik
WORKDIR /home/kosmtik
RUN npm install kosmtik
EXPOSE 6789
VOLUME ["/project"]
CMD ["node_modules/.bin/kosmtik", "serve", "--host=0.0.0.0", "/project/project.mml"]
