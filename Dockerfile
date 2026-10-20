FROM node:22-alpine
COPY graphserver.js .
COPY package.json .
COPY UScities.json .
RUN npm install &&\
    apk update && \
    apk upgrade --no-cache && \
    apk add --no-cache 'zlib>1.3.2-r0'
EXPOSE  4000
CMD node graphserver.js
