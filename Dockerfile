FROM node:24-alpine3.21

# Update Alpine packages to reduce vulnerabilities
RUN apk update && apk upgrade --no-cache

WORKDIR /app

# Copy build artifacts
COPY dist ./dist
