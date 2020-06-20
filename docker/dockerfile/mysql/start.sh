#!/bin/bash

echo $1;
echo $2;

# 这句语句告诉bash如果任何语句的执行结果不是true则应该退出
set -e

#查看mysql服务的状态，方便调试，这条语句可以删除
echo `service mysql status`

echo '1.启动mysql....'
#启动mysql
service mysql start
sleep 5
echo `service mysql status`

#重新设置mysql密码
echo '4.开始修改密码....'
mysql -uroot  -e "use mysql;
create user $1 identified by '"$2"';
grant all privileges on *.* to $1@'%' identified by '"$2"';
flush privileges;"
echo '5.修改密码完毕....'

#sleep 3
echo `service mysql status`
echo 'mysql容器启动完毕'