## 执行

### 创建镜像

```
docker build ./  -t cmd:test
```

### 执行默认cmd

```
docker run -itd  --name cmd_test -p 888:88 cmd:test
```
执行成功后会创建php服务

### 执行自定义cmd

```
docker run -it --name cmd_test  cmd:test echo "test"
```
执行后覆盖dockerfile中定义好的cmd


### 执行前台应用

```
docker run -it --name cmd_test  cmd:test php -S localhost:888 ./
```

执行后会成功创建php服务

对于容器而言，其启动程序就是容器应用进程，容器就是为了主进程而存在的，主进程退出，容器就失去了存在的意义，从而退出，其它辅助进程不是它需要关心的东西。

如果这里执行的cmd 是启动的后台应用，比如service nginx start ,会发现容器执行后就立即退出了，因为在cmd的shell模式下，主进程是sh进程，那么如果启动的应用是后台，sh进程会直接执行完成，容器也执行完成，执行关闭
