# strongSwan Docker image

The open source IPsec-based VPN solution.

[Container Registry](https://ghcr.io/poppen/strongswan)&nbsp;|&nbsp;[Project Source](https://github.com/strongswan/strongswan)

[![Docker Build](https://github.com/poppen/docker-strongswan/actions/workflows/push.yml/badge.svg)](https://github.com/poppen/docker-strongswan/actions/workflows/push.yml)
[![GitHub Release (latest SemVer)](https://img.shields.io/github/v/release/poppen/docker-strongswan)](https://ghcr.io/poppen/strongswan)

---

## Pull The Image

```bash
$ docker pull ghcr.io/poppen/strongswan
```

## Start Container

```bash
$ docker run -d \
  --volume=/etc/swanctl/conf.d/:/etc/swanctl/conf.d/ \
  --cap-add=NET_ADMIN \
  --network=host \
  --restart=unless-stopped \
  --name=strongswan \
  ghcr.io/poppen/strongswan
```
