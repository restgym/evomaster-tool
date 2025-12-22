FROM webfuzzing/evomaster:v4.0.0

COPY ./tools/evomaster/entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]