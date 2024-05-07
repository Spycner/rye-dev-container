FROM ubuntu:24.04

WORKDIR /app

RUN apt-get update && apt-get install -y curl

RUN curl -sSf https://rye-up.com/get | RYE_INSTALL_OPTION="--yes" bash
ENV PATH "${PATH}:/root/.rye/shims"
