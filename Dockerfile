FROM alpine:latest
RUN apk update && apk add --no-cache speedtest-cli
ENTRYPOINT ["speedtest-cli"]
