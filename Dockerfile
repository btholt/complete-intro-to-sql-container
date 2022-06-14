FROM alpine/git

RUN mkdir /repo

WORKDIR /repo

RUN git clone --depth=1 https://github.com/credativ/omdb-postgresql omdb
RUN ls

FROM postgres:14

COPY --from=0 --chown=postgres:postgres /repo .
WORKDIR /omdb

RUN apt-get update -y
RUN apt-get install wget bzip2 -y

RUN ./download

COPY ./import.sh /docker-entrypoint-initdb.d/import.sh