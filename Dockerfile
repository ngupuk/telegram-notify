FROM alpine:3.10

COPY entrypoint.sh /entrypoint.sh
RUN ["chmod", "+x", "/docker-entrypoint.sh"]

ENTRYPOINT ["/entrypoint.sh"]