FROM postgres:9.6
RUN /bin/bash -c 'apt-get update; apt-get install -y iputils-ping; apt-get install -y telnet'
ENV PGDATA /var/lib/pgsql/data/
#ENV pgsql 'psql -U postgres -nxq -v ON_ERROR_STOP=on --dbname rosbank_db'
#ENV POSTGRES_HOST_AUTH_METHOD trust
ENV POSTGRES_PASSWORD passwrod
ENV POSTGRES_USER postgres
ENV POSTGRES_DB postgres
ENV WORK_DB rosbank


#COPY postgresql.conf /var/lib/pgsql/data/
COPY init-user-db.sh /docker-entrypoint-initdb.d/

#ENTRYPOINT["/bin/bash", "-c", "service postgresql start && service postgresql status && createdb db_example && psql -c \"CREATE USER springuser WITH PASSWORD 'test123';\" && service tomcat8 start && sleep infinity"]
#COPY docker-entrypoint-initdb.d/* /docker-entrypoint-initdb.d/
#COPY init.sql/* /init.sql/
#COPY postgres.conf.d/* /etc/postgres/conf.d/