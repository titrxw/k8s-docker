FROM centos:centos7

RUN mkdir -p /usr/local/nginx && mkdir -p /var/log/nginx && mkdir -p /var/www/html/website

COPY ./server/index.html /var/www/html/website/index.html
COPY ./config/http_server.conf /usr/local/nginx/conf.d/http_server.conf
COPY ./config/nginx.conf /usr/local/nginx/conf/nginx.conf

ADD ./nginx-1.14.0.tar.gz .

RUN yum install -y pcre-devel wget net-tools gcc zlib zlib-devel make openssl-devel
RUN useradd -M -s /sbin/nologin nginx && useradd -M -s /sbin/nologin www-data;
RUN cd nginx-1.14.0 && ./configure --prefix=/usr/local/nginx --user=nginx --group=nginx --with-http_stub_status_module && make && make install
RUN ln -s /usr/local/nginx/sbin/* /usr/local/sbin/
RUN chmod 777 /usr/local/nginx/conf.d -R
RUN rm ./nginx-1.14.0 -rf

EXPOSE 80

ENTRYPOINT ["nginx", "-g", "daemon off;"]