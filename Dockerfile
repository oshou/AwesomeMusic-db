FROM mysql:5.7

# Load MySQL config
COPY ./my.cnf /etc/mysql/conf.d/my.cnf

# Load Initialization Query
COPY ./init.sql /docker-entrypoint-initdb.d/
