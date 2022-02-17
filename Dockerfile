FROM node:12-alpine3.14

ENV NODE_ENV production
WORKDIR /usr/src/app
COPY --chown=node:node . .
RUN npm ci --only=production
USER node
EXPOSE 5000
CMD ["node", "server.js"]
