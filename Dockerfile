from alpine:latest

COPY . /tmp/

RUN apk update \
    && apk add bash

VOLUME  ["/usr/local/bash/"]

CMD ["bash","/tmp/Nginx_benchmarking.sh" , "192.168.122.1","2"]
