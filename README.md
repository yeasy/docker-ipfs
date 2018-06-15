IPFS - New Storage for Planet
===
Docker images for [IPFS](https://ipfs.io) Node.

# Supported tags and respective Dockerfile links

* [`latest` (latest/Dockerfile)](https://github.com/yeasy/docker-ipfs/blob/master/Dockerfile): Default to track latest master branch.

For more information about this image and its history, please see the relevant manifest file in the [`yeasy/docker-ipfs` GitHub repo](https://github.com/yeasy/docker-ipfs).

If you want to quickly test its features, please refer to [IPFS Getting Started](https://ipfs.io/docs/getting-started/).

# What is IPFS image?
Docker image with IPFS, can be used as an indivual node.

# How to use this image?
The docker image is auto built at [https://registry.hub.docker.com/u/yeasy/ipfs/](https://registry.hub.docker.com/u/yeasy/ipfs/).

## In Dockerfile
```sh
FROM yeasy/ipfs:latest
```

## Local Testing

By default, the cmd will start a ipfs daemon node.

```bash
$ docker run -it \
        --name ipfs \
        -p 4001:4001 \
        -p 5002:5002 \
        -p 8002:8002 \
        yeasy/ipfs

# Which image is based on?
The image is built based on [golang](https://hub.docker.com/_/golang) 1.10 image.

# What has been changed?
## install ipfs-update
Use to manage the ipfs binary.

## install the ipfs
Main binary to run the service.

## Address configs
Expose all ports to public.

# Supported Docker versions

This image is officially supported on Docker version 1.7.0+.

Support for older versions (down to 1.0) is provided on a best-effort basis.

# Known Issues
* N/A.

# User Feedback
## Documentation
Be sure to familiarize yourself with the [repository's `README.md`](https://github.com/yeasy/docker-ipfs/blob/master/README.md) file before attempting a pull request.

## Issues
If you have any problems with or questions about this image, please contact us through a [GitHub issue](https://github.com/yeasy/docker-ipfs/issues).

You can also reach many of the official image maintainers via the email.

## Contributing

You are invited to contribute new features, fixes, or updates, large or small; we are always thrilled to receive pull requests, and do our best to process them as fast as we can.

Before you start to code, we recommend discussing your plans through a [GitHub issue](https://github.com/yeasy/docker-ipfs/issues), especially for more ambitious contributions. This gives other contributors a chance to point you in the right direction, give you feedback on your design, and help you find out if someone else is working on the same thing.
