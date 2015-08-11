Docker-Nginx
===
Docker images for the nginx.


# Supported tags and respective Dockerfile links

* [`latest` (latest/Dockerfile)](https://github.com/yeasy/docker-nginx/blob/master/Dockerfile)

For more information about this image and its history, please see the relevant manifest file in the [`yeasy/docker-nginx` GitHub repo](https://github.com/yeasy/docker-nginx).

# What is docker-nginx?
Docker image with nginx installed, and proxy_pass, auth enabled. The image is built based on [nginx 1.9](https://hub.docker.com/_/nginx).

It will proxy request to BACKEND:PORT, the auth is set using USERNAME:PASSWORD.


# How to use this image?
The docker image is auto built at [https://registry.hub.docker.com/u/yeasy/nginx/](https://registry.hub.docker.com/u/yeasy/nginx/).


## In Dockerfile
```sh
FROM yeasy/nginx:latest
```

## Local Run
```sh
$ docker run -p 80:80 -e BACKEND=web_container -e PORT=8080 -e USERNAME=user -e PASSWORD=pass yeasy/nginx
```

# Which image is based on?
The image is based on official `nginx:1.9`.

# What has been changed?

## add apache2-utils
Add the apache2-utils to support http basic auth.

## add default conf template
Add the nginx.default.conf to /etc/nginx/.

## add start script
Add the docker-entrypoint.sh to /tmp/, and will start it when bootup.

# Supported Docker versions

This image is officially supported on Docker version 1.7.0.

Support for older versions (down to 1.0) is provided on a best-effort basis.

# User Feedback
## Documentation
Be sure to familiarize yourself with the [repository's `README.md`](https://github.com/yeasy/docker-nginx/blob/master/README.md) file before attempting a pull request.

## Issues
If you have any problems with or questions about this image, please contact us through a [GitHub issue](https://github.com/yeasy/docker-nginx/issues).

You can also reach many of the official image maintainers via the email.

## Contributing

You are invited to contribute new features, fixes, or updates, large or small; we are always thrilled to receive pull requests, and do our best to process them as fast as we can.

Before you start to code, we recommend discussing your plans through a [GitHub issue](https://github.com/yeasy/docker-nginx/issues), especially for more ambitious contributions. This gives other contributors a chance to point you in the right direction, give you feedback on your design, and help you find out if someone else is working on the same thing.
