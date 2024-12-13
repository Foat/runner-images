ARG BASE_IMAGE_TAG

FROM ghcr.io/catthehacker/ubuntu:${BASE_IMAGE_TAG}

ARG IMAGE_CREATED
ARG IMAGE_VERSION
ARG IMAGE_REVISION

LABEL org.opencontainers.image.created="${IMAGE_CREATED}" \
      org.opencontainers.image.authors="Foat" \
      org.opencontainers.image.url="https://github.com/Foat/runner-images" \
      org.opencontainers.image.documentation="https://github.com/Foat/runner-images/src/branch/prime/README.md" \
      org.opencontainers.image.source="https://github.com/Foat/runner-images" \
      org.opencontainers.image.version="${IMAGE_VERSION}" \
      org.opencontainers.image.revision="${IMAGE_REVISION}" \
      org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.title="Gitea Actions runner images" \
      org.opencontainers.image.description="Docker images used by act_runner to run workflows."

ENV DEBIAN_FRONTEND=noninteractive \
    STORAGE_DRIVER=vfs

RUN apt-get -qqy update && \
    apt-get -qqy --no-install-recommends install \
    buildah \
    && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/*