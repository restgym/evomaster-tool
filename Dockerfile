FROM webfuzzing/evomaster:v4.0.0

ENTRYPOINT while true; do \
    java -jar evomaster.jar \
    --runningInDocker true \
    --blackBox true \
    --maxTime 1h \
    --bbSwaggerUrl "/specifications/${API}-openapi.json" \
    --bbTargetUrl "http://localhost:${PORT}" \
    ; done
