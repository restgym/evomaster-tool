#!/bin/sh
set -e

ls /specifications

while true; do
  java -jar /evomaster.jar \
    --runningInDocker true \
    --blackBox true \
    --maxTime "${TIME_BUDGET:-60}m" \
    --bbSwaggerUrl "/specifications/${API}-openapi.json" \
    --bbTargetUrl "http://${HOST}:${PORT}"
done