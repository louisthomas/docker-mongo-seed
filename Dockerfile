FROM mongo:latest
MAINTAINER Louis-Thomas Lamontagne <ltlamontagne@gmail.com>

RUN apt-get update \
  && apt-get install -y --no-install-recommends wget ca-certificates procps \
  && update-ca-certificates \
  && rm -rf /var/lib/apt/lists/*

ENV MONGO_SERVER=
ENV MONGO_PORT=27017
ENV MONGO_DATABASE=test

ADD init.json init.json

ADD entrypoint.sh /script/entrypoint.sh

RUN ["chmod", "+x", "/script/entrypoint.sh"]

ENTRYPOINT ["/script/entrypoint.sh"]

