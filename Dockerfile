FROM alpine:3.18.2

RUN apk add bash curl sed

WORKDIR /pingfinder
COPY pingfinder.sh pingfinder.sh

RUN echo '*/5 * * * * bash /pingfinder/pingfinder.sh' >> /etc/crontabs/root

CMD ["/usr/sbin/crond", "-f"]
