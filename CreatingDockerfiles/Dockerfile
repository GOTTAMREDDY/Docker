FROM ubuntu:22.04
LABEL maintainer="raghuram@example.com" version="1.3"
ENV table_name="mytbl" user_name="mysql" pass="pass"
WORKDIR /app
COPY nginx.conf /app/ngonx.conf
RUN apt-get update && \
    apt-get install -y nginx curl && \
    apt-get clean
EXPOSE 80