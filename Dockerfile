# Epic docker image 
FROM docker.io/php:fpm-alpine

# Install Python, pip, and other dependencies
RUN apk add --no-cache poetry

# Create a work/directory for your project
WORKDIR /app
COPY . /app

# Copy the PHP files for the web interface
COPY src /usr/share/nginx/html

# epic poetry install 
RUN poetry install

# Expose where PHP-FPM is running on 
EXPOSE 9000

