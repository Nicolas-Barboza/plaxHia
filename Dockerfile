FROM mysql/mysql-server:8.0

COPY ./01-setup.sql         /docker-entrypoint-initdb.d/01-setup.sql
COPY ./02-backup-user.sql   /docker-entrypoint-initdb.d/02-backup-user.sql

EXPOSE 3306
