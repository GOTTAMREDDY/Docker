FROM nginx:latest

EXPOSE 80

# Remove default site config
RUN rm -f /etc/nginx/conf.d/default.conf

# Replace main nginx config
COPY roboshop.conf /etc/nginx/nginx.conf

# Copy website contentss
ADD web/ /usr/share/nginx/html/

CMD ["nginx", "-g", "daemon off;"]