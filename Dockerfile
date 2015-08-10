# This will install the apache2-utils into nginx

FROM nginx:latest
MAINTAINER yeasy@github

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
      apache2-utils \
 && rm -rf /var/lib/apt/lists/*
