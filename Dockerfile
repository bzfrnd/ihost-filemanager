FROM gtstef/filebrowser:stable-slim@sha256:4842a29395a852f88a7df8dce3a99f64699445f5361a97da6c49dc729579fa24
USER 0:0
COPY config.yaml /etc/ihost-filemanager.yaml
RUN sed -i '/  port: 80/d' /etc/ihost-filemanager.yaml && printf 'http:\n  port: 80\n' >> /etc/ihost-filemanager.yaml
ENTRYPOINT ["/bin/sh", "-c", "cp /etc/ihost-filemanager.yaml /home/filebrowser/data/config.yaml && exec ./filebrowser"]
LABEL org.opencontainers.image.source="https://github.com/bzfrnd/ihost-filemanager"
