FROM alpine:latest
RUN addgroup -g 2007 apache && adduser -u 2005 -G apache -D apache
RUN apk add --no-cache apache2 apache2-utils mercurial && mkdir -p /run/apache2
CMD ["/usr/sbin/httpd", "-DFOREGROUND"]
