FROM node:14-alpine

# APK update
RUN apk update --no-cache && apk add \
    util-linux \
    libc-dev \
    libpng-dev \
    bash \
    git

# Cleaning
RUN rm -rf /var/lib/apt/lists/*

# Create working directory
RUN mkdir /var/app

# Set working directory
WORKDIR /var/app
