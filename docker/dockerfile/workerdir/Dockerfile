FROM  php:7.2

# 单个Dockerfile可以使用多次WORKFDIR。如果提供一个相对路径，当前的工作目录将于上个WORKDIR指令相关。如:

WORKDIR /tmp/test

WORKDIR test1

WORKDIR test2

CMD  pwd
# 输出　/tmp/test/test1/test2