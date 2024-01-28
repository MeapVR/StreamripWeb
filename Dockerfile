# Epic docker image 
FROM docker.io/php:fpm-alpine

# Installs poetry
RUN apk add --no-cache poetry

# Create a work/directory for your project
WORKDIR /app
COPY ./root /app

# Copies the PHP files for the web interface
COPY src /usr/share/nginx/html

# epic poetry install 
RUN poetry install

# Expose where PHP-FPM is running on 
EXPOSE 9000

