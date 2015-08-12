# This will install the apache2-utils into nginx, and let it support auth/proxy_pass

FROM nginx:latest
MAINTAINER yeasy@github

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
      apache2-utils \
 && rm -rf /var/lib/apt/lists/*

COPY nginx.default.conf /etc/nginx/
COPY docker-entrypoint.sh /tmp/

CMD bash /tmp/docker-entrypoint.sh
