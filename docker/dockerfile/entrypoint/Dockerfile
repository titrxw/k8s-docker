FROM php:7.2-fpm

ADD ./ /home/wokrspace

WORKDIR /home/wokrspace

# Dockerfile 的指令每执行一次都会在 docker 上新建一层。所以过多无意义的层，会造成镜像膨胀过大。以 && 符号连接命令，这样执行后，只会创建 1 层镜像
RUN chmod a+x ./test.sh

RUN ls -all

# entrypoint 一定会执行，cmd不一定会执行
# http://note.youdao.com/noteshare?id=e9bacb423e77ff4781da16493b366252
ENTRYPOINT [ "./test.sh" ]

CMD ["test"]

EXPOSE 88