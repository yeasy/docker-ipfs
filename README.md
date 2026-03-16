IPFS (Kubo)
===
Docker image for an [IPFS Kubo](https://github.com/ipfs/kubo) node.

## Supported tags

* `latest`: tracks Kubo `v0.40.1`.

## Highlights

* Downloads and installs official Kubo release tarballs from `dist.ipfs.tech`.
* Initializes the repo on first start (in `IPFS_PATH`, default `/data/ipfs`).
* Exposes standard ports:
  * Swarm: `4001`
  * API: `5001`
  * Gateway: `8080`

## Quick start

```sh
docker run -d \
  --name ipfs \
  -p 4001:4001 \
  -p 5001:5001 \
  -p 8080:8080 \
  -v ipfs-data:/data/ipfs \
  yeasy/ipfs:latest
```
