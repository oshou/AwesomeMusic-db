FROM mysql:5.7

# MySQL config
COPY ./my.cnf /etc/mysql/conf.d/my.cnf

# Initialization Query
COPY ./init.sql /docker-entrypoint-initdb.d/
