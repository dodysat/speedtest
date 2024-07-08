FROM debian:bookworm-slim

RUN apt-get update && apt-get install curl -y \
  && apt-get clean

RUN curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | bash

RUN apt-get install speedtest -y \
  && apt-get clean

ENTRYPOINT ["speedtest", "--accept-license"]
