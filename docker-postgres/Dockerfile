FROM postgres:10.11

RUN apt-get update && \
    apt-get install -y \
        make \  
        postgresql-${PG_MAJOR}-hll \
        postgresql-${PG_MAJOR}-ip4r
