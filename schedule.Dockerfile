FROM IMAGE_REPOSITORY/base

LABEL org.opencontainers.image.source=REPOSITORY_URL

COPY schedule/entrypoint.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
