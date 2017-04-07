FROM mongo:latest
MAINTAINER Louis-Thomas Lamontagne <ltlamontagne@gmail.com>

ENV MONGO_SERVER=
ENV MONGO_PORT=27017
ENV MONGO_DATABASE=test

ADD init.json init.json

ADD entrypoint.sh /script/entrypoint.sh

ENTRYPOINT ["/script/entrypoint.sh"]

