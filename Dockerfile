FROM n8nio/n8n:latest

COPY --chmod=755 docker-entrypoint-custom.sh /docker-entrypoint-custom.sh

ENTRYPOINT ["/docker-entrypoint-custom.sh"]
