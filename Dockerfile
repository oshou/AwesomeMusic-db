FROM mysql:5.7

RUN apt-get update \
    && apt-get -y install locales \
    && rm -rf /var/lib/apts \
    && rm -rf /var/lib/apt/lists/* \
    && echo "ja_JP.UTF-8 UTF-8" > /etc/locale.gen \
    && locale-gen ja_JP.UTF-8

ENV LC_ALL ja_JP.UTF-8

# Load MySQL config
COPY ./my.cnf /etc/mysql/conf.d/my.cnf

# Load Initialization Query
COPY ./init.sql /docker-entrypoint-initdb.d/
