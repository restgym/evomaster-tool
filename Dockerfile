FROM webfuzzing/evomaster:v4.0.0

COPY ./tools/evomaster/entrypoint.sh /app/entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]