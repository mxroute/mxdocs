FROM alpine:3.9 AS build

ARG VERSION=0.109.0

ADD https://github.com/gohugoio/hugo/releases/download/v${VERSION}/hugo_${VERSION}_Linux-64bit.tar.gz /hugo.tar.gz
RUN tar -zxvf hugo.tar.gz
RUN /hugo version

RUN apk add --no-cache git

COPY . /site
WORKDIR /site

WORKDIR /site/LiveSite
RUN /hugo --minify --gc --themesDir /site/themes

FROM nginx:1.15-alpine
WORKDIR /site

RUN sed -i '4i\    include /etc/nginx/conf.d/headers.inc;\n' /etc/nginx/conf.d/default.conf
COPY headers.inc /etc/nginx/conf.d/headers.inc
RUN chmod 0644 /etc/nginx/conf.d/headers.inc
RUN cat /etc/nginx/conf.d/default.conf

COPY --from=build /site/LiveSite/public /usr/share/nginx/html
WORKDIR /usr/share/nginx/html/
