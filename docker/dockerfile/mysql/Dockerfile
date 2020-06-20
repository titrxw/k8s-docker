FROM mysql:5.7

ARG database_username=mysql_develop
ARG database_password=123456

# 这里需要env的原因是arg只在build阶段存在，在run的时候会获取不到值
ENV DATABASE_USERNAME $database_username
ENV DATABASE_PASSWORD $database_password

COPY ./start.sh /home/start.sh

RUN chmod u+x /home/start.sh

#  mysql 默认socket = /var/run/mysqld/mysqld.sock，确保该目录存在
RUN mkdir -p /var/run/mysqld && chown mysql /var/run/mysqld/

# 按照shell 的方式编写entrypoint
ENTRYPOINT "/home/start.sh" $DATABASE_USERNAME $DATABASE_PASSWORD

EXPOSE 3306