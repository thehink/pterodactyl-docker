# ----------------------------------
# Pterodactyl Panel Dockerfile
# ----------------------------------

FROM golang:1.14-alpine

ENV DAEMON_VERSION=1.0.0-rc.5

WORKDIR /go/wings/
RUN wget -O ./wings.tar.gz https://github.com/pterodactyl/wings/archive/release/v${DAEMON_VERSION}.tar.gz \
 && tar --strip-components=1 -xzvf wings.tar.gz \
 && CGO_ENABLED=0 go build -ldflags="-s -w"

FROM alpine:latest

COPY --from=0 /go/wings/wings /usr/local/bin/

RUN \
  apk add --no-cache ca-certificates; \
  chmod +x /usr/local/bin/wings

# # Default Work Directory
WORKDIR /var/lib/pterodactyl
COPY ./templates templates

CMD [ "/usr/local/bin/wings", "--config", "./config/config.yml" ]