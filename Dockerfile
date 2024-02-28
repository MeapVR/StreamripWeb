# Docker image
FROM docker.io/php:fpm-alpine

# Installs poetry
RUN apk add --no-cache poetry

# Creates a directory
WORKDIR /app

COPY ./app/pyproject.toml ./app/poetry.lock .
RUN poetry install --only main --no-root --no-directory
COPY ./app /app
RUN poetry install --only main

# Copies the webdev files for webUI
COPY src /usr/share/nginx/html

# Expose where PHP-FPM is running on 
EXPOSE 9000

