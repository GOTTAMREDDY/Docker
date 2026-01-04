FROM node:18.19.1-alpine3.19
RUN addgroup -S roboshop && adduser -S roboshop -G roboshop
EXPOSE 8080
#work dr will create is app doesnt exit
WORKDIR /app/  
COPY package.json /app/
COPY server.js /app/
ENV MONGO=true
ENV MONGO_URL=mongodb://mongodb:27017/catalogue
RUN npm install
RUN chown -R roboshop:roboshop /app
USER roboshop
CMD [ "node","server.js" ]

