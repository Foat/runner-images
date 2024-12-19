ARG BASE_IMAGE_TAG

FROM ghcr.io/catthehacker/ubuntu:${BASE_IMAGE_TAG}

ARG IMAGE_CREATED
ARG IMAGE_VERSION
ARG IMAGE_REVISION
ARG NODE_FOLDER

LABEL org.opencontainers.image.created="${IMAGE_CREATED}" \
      org.opencontainers.image.authors="Frozen Tapestry" \
      org.opencontainers.image.url="https://github.com/Frozen-Tapestry/runner-images" \
      org.opencontainers.image.documentation="https://github.com/Frozen-Tapestry/runner-images/blob/prime/README.md" \
      org.opencontainers.image.source="https://github.com/Frozen-Tapestry/runner-images" \
      org.opencontainers.image.version="${IMAGE_VERSION}" \
      org.opencontainers.image.revision="${IMAGE_REVISION}" \
      org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.title="Frozen Tapestry Actions runner images" \
      org.opencontainers.image.description="Docker images used by act_runner to run workflows"

ENV PATH="$NODE_FOLDER:$PATH" \
    DEBIAN_FRONTEND=noninteractive
