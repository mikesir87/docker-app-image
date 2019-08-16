FROM docker:latest

ENV DOCKER_CLI_EXPERIMENTAL enabled 
ARG VERSION=0.8.0
RUN apk add --no-cache curl && \
    curl -L https://github.com/docker/app/releases/download/v${VERSION}/docker-app-linux.tar.gz | tar -xzC /tmp && \
    mkdir -p $HOME/.docker/cli-plugins && \
    mv /tmp/docker-app-plugin-linux $HOME/.docker/cli-plugins/docker-app && \
    apk del curl && \
    rm /tmp/*

