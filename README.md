# Caddy-Cloudflare-S3

[![Docker Hub](https://img.shields.io/badge/Docker%20Hub-zenjoy%2Fcaddy--cloudflare--s3-lightgrey?style=flat)](https://hub.docker.com/r/zenjoy/caddy-cloudflare-s3)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/v/tag/zenjoy/docker-caddy-cloudflare-s3?label=version)](https://github.com/zenjoy/docker-caddy-cloudflare-s3/tags)
[![License](https://img.shields.io/github/license/zenjoy/docker-caddy-cloudflare-s3)](https://github.com/zenjoy/docker-caddy-cloudflare-s3/blob/main/LICENSE)

The official [Caddy](https://hub.docker.com/_/caddy) Docker image with following modules added:

- [caddy-dns/cloudflare](https://github.com/caddy-dns/cloudflare) allows DNS-01 ACME validation
- [ss098/certmagic-s3](https://github.com/ss098/certmagic-s3) allows you to use any S3-compatible
  provider as key/certificate storage backend

Available on Docker Hub or GitHub Container Registry (GHCR) for AMD64, ARM64, and ARMv7.

```sh
# Docker Hub
docker pull zenjoy/caddy-cloudflare-s3:latest

# GHCR
docker pull ghcr.io/zenjoy/caddy-cloudflare-s3:latest
```

## Building

You can easily build the Docker image locally by doing

```sh
docker build -t caddy-cloudflare-s3 .
```

## Container signatures

All images are automatically signed via [Cosign](https://docs.sigstore.dev/cosign/overview/) using
[keyless signatures](https://docs.sigstore.dev/cosign/keyless/). You verify the integrity of these
images as follows:

```sh
cosign verify \
  --certificate-oidc-issuer https://token.actions.githubusercontent.com \
  --certificate-identity-regexp https://github.com/zenjoy/docker-caddy-cloudflare-s3/.github/workflows/ \
  zenjoy/caddy-cloudflare-s3:latest
```

## Contributing

Feel free to contribute and make things better by opening an
[Issue](https://github.com/zenjoy/docker-caddy-cloudflare-s3/issues) or
[Pull Request](https://github.com/zenjoy/docker-caddy-cloudflare-s3/pulls).

## License

View [license information](https://github.com/zenjoy/docker-caddy-cloudflare-s3/blob/main/LICENSE)
for the software contained in this image.
