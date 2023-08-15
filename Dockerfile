FROM caddy:2.7.3-builder AS builder
RUN xcaddy build \
  --with github.com/caddy-dns/cloudflare \
  --with github.com/ss098/certmagic-s3

FROM caddy:2.7.3
COPY --from=builder /usr/bin/caddy /usr/bin/caddy
RUN apk update && apk upgrade
