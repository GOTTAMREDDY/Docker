FROM nginx:latest
EXPOSE 80
RUN rm -rf /usr/share/nginx/html/*
RUN rm /etc/nginx/default.d/roboshop.conf
WORKDIR /usr/share/nginx/html/
ADD web /usr/share/nginx/html/
COPY roboshop.conf /etc/nginx/default.d/roboshop.conf
CMD ["nginx", "-g", "daemon off;"]