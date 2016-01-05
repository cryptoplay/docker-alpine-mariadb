FROM alpine:latest
MAINTAINER Vincent Boutour <vincent.boutour@gmail.com>

COPY ./entrypoint.sh /
ENV DATADIR /var/lib
ENV MYSQL_DIR ${DATADIR}/mysql

RUN chmod +x /entrypoint.sh \
 && adduser -u 1000 -S -s /sbin/nologin mysql \
 && addgroup -g 60 mysql \
 && addgroup mysql mysql \
 && apk --update add mariadb mysql \
 && rm -rf ${MYSQL_DIR} \
 && mkdir -p ${MYSQL_DIR} \
 && chown -R mysql:mysql ${MYSQL_DIR} \
 && chown -R mysql:mysql /etc/mysql/ \
 && rm -rf /var/cache/apk/*

VOLUME ${MYSQL_DIR} /var/log/mysql /etc/mysql/ /tmp

EXPOSE 3306
USER mysql

ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ "mysqld", "--user=mysql" ]
