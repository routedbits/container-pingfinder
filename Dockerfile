FROM alpine:3.18.2

RUN apk add bash curl sed

WORKDIR /pingfinder
COPY pingfinder.sh pingfinder.sh

CMD bash pingfinder.sh
