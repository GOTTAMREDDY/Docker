FROM nginx:alpine
EXPOSE 80
RUN adduser -D sadashiva
RUN rm -rf /usr/share/nginx/html/*
RUN curl -o /tmp/web.zip https://roboshop-builds.s3.amazonaws.com/web.zip
WORKDIR /usr/share/nginx/html
RUN unzip /tmp/web.zip
COPY . /etc/nginx/default.d/roboshop/conf
USER sadashiva
CMD ["nginx", "-g", "daemon off;"]