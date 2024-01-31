FROM debian:bookworm-slim

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y --no-install-recommends aprx && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /var/tmp/* /tmp/*

CMD aprx -f /etc/aprx.conf -i -v
