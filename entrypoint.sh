#!/bin/sh
set -e

ls /specifications

while true; do
    java -jar /evomaster.jar \
    --runningInDocker true \
    --blackBox true \
    --maxTime 1h \
    --bbSwaggerUrl "/specifications/${API}-openapi.json" \
    --bbTargetUrl "http://${HOST}:${PORT}"
done