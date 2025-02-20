FROM ubuntu:latest

RUN mkdir /code

COPY 1.0.0.66/release /code
COPY 1.0.0.66/config.bpp-api.json /code/config.bpp-api.json
COPY 1.0.0.66/config.bpp-processor.json /code/config.bpp-processor.json

WORKDIR /code

RUN chmod +x ./bpp-api

ENTRYPOINT [ "./bpp-api" ]
