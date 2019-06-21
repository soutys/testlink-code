FROM postgres:11-alpine

ENV \
    POSTGRES_PASSWORD_FILE=/var/lib/postgresql/testlink_db_passwd.secret \
    POSTGRES_USER=testlink_user \
    POSTGRES_DB=testlink

COPY testlink_db_passwd.secret /var/lib/postgresql/

HEALTHCHECK \
    --interval=30s --timeout=5s --start-period=10s --retries=3 \
    CMD pg_isready --dbname=${POSTGRES_DB} --username=${POSTGRES_USER}

USER postgres

EXPOSE 5432

CMD ["postgres"]
