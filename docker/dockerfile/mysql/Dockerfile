FROM mysql:5.7

ARG database_username=root
ARG database_password=123456

ENV DATABASE_USERNAME $database_username
ENV DATABASE_PASSWORD $database_password

COPY ./start.sh /home/start.sh

RUN chmod u+x /home/start.sh

RUN ls /home

ENTRYPOINT "/home/start.sh" $DATABASE_USERNAME $DATABASE_PASSWORD