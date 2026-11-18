FROM postgres:17-alpine

COPY init.sql /docker-entrypoint-initdb.d/01-init.sql

HEALTHCHECK --interval=5s --timeout=3s --start-period=15s --retries=5 \
    CMD pg_isready -h 127.0.0.1 -U "$POSTGRES_USER" -d "$POSTGRES_DB"
