FROM IMAGE_REPOSITORY/base

LABEL org.opencontainers.image.source=REPOSITORY_URL

CMD ["php", "artisan", "queue:work", "--tries", "3"]
