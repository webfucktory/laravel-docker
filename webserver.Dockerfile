FROM nginx:alpine

LABEL org.opencontainers.image.source=REPOSITORY_URL

COPY --from=IMAGE_REPOSITORY/base /var/www /var/www
