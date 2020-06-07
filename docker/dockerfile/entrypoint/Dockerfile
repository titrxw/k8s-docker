FROM php:7.2-fpm

ADD ./ /home/wokrspace

WORKDIR /home/wokrspace

RUN chmod a+x ./test.sh

RUN ls -all

ENTRYPOINT [ "./test.sh" ]

CMD ["test"]

EXPOSE 88