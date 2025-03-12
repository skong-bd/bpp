FROM ubuntu:latest

RUN mkdir /code

COPY release /code
COPY config.bpp-api.json /code/config.bpp-api.json
COPY config.bpp-processor.json /code/config.bpp-processor.json

WORKDIR /code

RUN chmod +x ./bpp-api

ENTRYPOINT [ "./bpp-api" ]
