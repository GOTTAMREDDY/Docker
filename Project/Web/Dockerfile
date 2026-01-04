# Use official nginx latest image (Debian-based)
FROM nginx:latest

# Expose port 80
EXPOSE 80

# Install curl and unzip if needed
#RUN apt-get update && apt-get install -y curl unzip && rm -rf /var/lib/apt/lists/*

# Remove default site config
RUN rm -f /etc/nginx/conf.d/default.conf

# Copy your server-only nginx config
COPY roboshop.conf /etc/nginx/conf.d/roboshop.conf

# Copy static website content
COPY web/ /usr/share/nginx/html/

# Start nginx in foreground
CMD ["nginx", "-g", "daemon off;"]