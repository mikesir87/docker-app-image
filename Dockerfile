FROM docker:latest

ARG VERSION=0.5.0
RUN apk add --no-cache curl && \
    curl -L https://github.com/docker/app/releases/download/v${VERSION}/docker-app-linux.tar.gz | tar -xzC /usr/bin && \
    mv /usr/bin/docker-app-linux /usr/bin/docker-app
