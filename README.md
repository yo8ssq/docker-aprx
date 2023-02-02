# docker-aprx

A multi-arch docker container for running [APRX](https://thelifeofkenneth.com/aprx/), a software based APRS Digipeater and/or Internet Gateway.

source: [Github](https://github.com/marrold/docker-aprx)
images: [Docker Hub](https://hub.docker.com/repository/docker/marrold/docker-aprx/general)

## Supported Architectures

Currently images exist for the following architectures. If you want to see support for another platform please open an issue.
- AMD64
 - ARM7

## Running the container
It's assumed you're using docker-compose to run the container. Remember to supply the serial interface connected to your KISS TNC and mount a valid `aprx.conf` to `/etc/aprx.conf`

    version: "3.2"
    services:
      aprx:
        image: marrold/docker-aprx:dev
        container_name: aprx
        restart: unless-stopped
        devices:
          - /dev/ttyACM0
        volumes:
          - ./aprx.conf:/etc/aprx.conf

## License

This project is licensed under the MIT license. Please check the dependencies (aprx etc) for their license.
