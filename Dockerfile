ARG ALPINE_VERSION
ARG NGINX_VERSION
FROM quay.io/ssmiller25/alpine:${ALPINE_VERSION} AS builder

# Content below mostly from <https://github.com/jguyomard/docker-hugo/blob/c05479feeafd4eb2f9fc97a94834ac8f05b5a8db/Dockerfile>
#  with some modifications for my site

ARG GIT_HASH
ARG VERSION
ARG RELEASE_DATE
LABEL maintainer="Steve Miller <me@r15cookie.com>"
LABEL version="${VERSION}"
LABEL git_hash="${GIT_HASH}"
LABEL release-date="${RELEASE_DATE}"

RUN apk add --no-cache \
    curl \
    git \
    openssh-client \
    rsync

# Updated to match version in Netlify
ENV VERSION 0.62.1
RUN mkdir -p /usr/local/src \
    && cd /usr/local/src \
    && curl -L https://github.com/gohugoio/hugo/releases/download/v${VERSION}/hugo_${VERSION}_linux-64bit.tar.gz | tar -xz \
    && mv hugo /usr/local/bin/hugo \
    && addgroup -Sg 1000 hugo \
    && adduser -SG hugo -u 1000 -h /src hugo

WORKDIR /src
COPY . /src
RUN hugo --buildFuture


# Build actual HTML serving directory
FROM quay.io/ssmiller25/nginx:${NGINX_VERSION}
COPY --from=builder /src/public /usr/share/nginx/html
