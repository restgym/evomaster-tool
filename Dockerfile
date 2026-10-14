# Pinned to a digest, since a tag can be moved to a rebuilt image
FROM webfuzzing/evomaster:v4.0.0@sha256:3e4c8ba30a889832250b2bcaffcaebb1efe2c5c73ac283215920e72ca98abea1

COPY ./tools/evomaster/entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]