# Docker image
FROM docker.io/php:fpm-alpine

# Installs poetry
RUN apk add --no-cache poetry

# Creates a directory
WORKDIR /app
COPY ./root /app



# Copies the webdev files for webUI
COPY src /usr/share/nginx/html

# Installs dependencies
RUN poetry install

# Expose where PHP-FPM is running on 
EXPOSE 9000

