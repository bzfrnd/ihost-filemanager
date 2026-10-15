FROM gtstef/filebrowser:stable-slim@sha256:4842a29395a852f88a7df8dce3a99f64699445f5361a97da6c49dc729579fa24
USER 0:0
COPY config.yaml /home/filebrowser/data/config.yaml
LABEL org.opencontainers.image.source="https://github.com/bzfrnd/ihost-filemanager"
