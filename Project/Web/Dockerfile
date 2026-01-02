FROM nginx:latest
EXPOSE 80
RUN rm -rf /usr/share/nginx/html/index.html
RUN rm -rf /etc/nginx/nginx.conf
RUN rm -rf /etc/nginx/conf.d/default.conf
COPY roboshop.conf /etc/nginx/nginx.conf
ADD web /usr/share/nginx/html/
CMD ["nginx", "-g", "daemon off;"]

/etc/nginx/nginx.conf
/etc/nginx/conf.d/default.conf   

FROM nginx:latest

EXPOSE 80

# Remove default site config
RUN rm -f /etc/nginx/conf.d/default.conf

# Replace main nginx config
COPY roboshop.conf /etc/nginx/nginx.conf

# Copy website content
ADD web/ /usr/share/nginx/html/

CMD ["nginx", "-g", "daemon off;"]