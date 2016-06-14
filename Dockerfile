FROM node:6.2.1

ENV S6_VERSION=v1.17.1.1

RUN npm install -g node-inspector@v0.12.8 --build-from-source --unsafe-perm

RUN curl -o s6-overlay.tar.gz -sSL https://github.com/just-containers/s6-overlay/releases/download/${S6_VERSION}/s6-overlay-amd64.tar.gz && \
  tar xvfz /s6-overlay.tar.gz -C / && \
  rm /s6-overlay.tar.gz

COPY rootfs /

ENTRYPOINT ["/init"]
