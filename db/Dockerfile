FROM mysql:5.7
COPY init.sql /docker-entrypoint-initdb.d/db.sql
COPY mysql.conf /etc/mysql/mysql.conf.d/mysqld.cnf

EXPOSE 3306