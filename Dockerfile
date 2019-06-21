FROM webdevops/php-nginx:alpine-php7

ENV \
    LANG=C.UTF-8

COPY postgres/testlink_db_passwd.secret /app/auths/testlink_db_passwd.secret

COPY . /app

RUN chown -R application:application /app/gui/templates_c

HEALTHCHECK \
    --interval=3m14s --timeout=10s --start-period=42s --retries=3 \
    CMD curl -f http://localhost:80/ || exit 1
