FROM nginx:latest
EXPOSE 80
RUN rm -rf /usr/share/nginx/html/*
RUN curl -o /tmp/web.zip https://roboshop-builds.s3.amazonaws.com/web.zip
WORKDIR /usr/share/nginx/html
RUN unzip -d /usr/share/nginx/html /tmp/web.zip 
COPY roboshop.conf /etc/nginx/default.d/roboshop.conf
CMD ["nginx", "-g", "daemon off;"]