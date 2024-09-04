FROM node:0.12.2-slim

LABEL maintainer=eric.muellenbach@yncrea.fr

ADD app.js .

ENTRYPOINT [ "node", "app.js" ]
