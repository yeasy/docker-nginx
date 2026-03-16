# This image installs apache2-utils into nginx to support auth/proxy_pass.

FROM nginx:1.29.6
LABEL maintainer="yeasy@github"

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=UTC

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
      apache2-utils \
 && rm -rf /var/lib/apt/lists/*

COPY nginx.default.conf /etc/nginx/
COPY docker-entrypoint.sh /tmp/
RUN chmod +x /tmp/docker-entrypoint.sh

CMD ["/bin/bash", "/tmp/docker-entrypoint.sh"]
