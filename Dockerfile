FROM debian:bookworm-slim
LABEL maintainer="Baohua Yang <yangbaohua@gmail.com>"

ARG KUBO_VERSION=v0.40.1
ENV DEBIAN_FRONTEND=noninteractive
ENV IPFS_PATH=/data/ipfs
ENV API_PORT=5001
ENV GATEWAY_PORT=8080
ENV SWARM_PORT=4001

RUN apt-get update \
    && apt-get install -y --no-install-recommends ca-certificates curl tar \
    && rm -rf /var/lib/apt/lists/* \
    && curl -fSL -o /tmp/kubo.tar.gz "https://dist.ipfs.tech/kubo/${KUBO_VERSION}/kubo_${KUBO_VERSION}_linux-amd64.tar.gz" \
    && tar -xzf /tmp/kubo.tar.gz -C /tmp \
    && /tmp/kubo/install.sh \
    && rm -rf /tmp/kubo /tmp/kubo.tar.gz

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

VOLUME ["/data/ipfs"]

EXPOSE 4001
EXPOSE 5001
EXPOSE 8080

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
CMD ["ipfs", "daemon", "--migrate=true"]
