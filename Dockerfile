FROM ghcr.io/dexidp/dex:v2.37.0

# Copy config to ensure rebuild triggers config reload
COPY config.yaml /etc/dex/config.yaml

CMD ["dex", "serve", "/etc/dex/config.yaml"]
