FROM node:14-alpine
RUN apk add --no-cache git
RUN git clone https://github.com/DevOps2-Fundamentals/example-app-nodejs-backend-react-frontend.git
WORKDIR /example-app-nodejs-backend-react-frontend
RUN npm install
RUN npm run build
EXPOSE 3000
ENTRYPOINT ["npm", "start"]
