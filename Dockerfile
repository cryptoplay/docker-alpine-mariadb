FROM cryptoplay/alpine:3.6
MAINTAINER CryptoPlay <docker@cryptoplay.tk>

COPY ./entrypoint.sh /
ENTRYPOINT [ "/entrypoint.sh" ]
ENV MYSQL_DIR /data/mysql
EXPOSE 3306

RUN chmod +x /entrypoint.sh \
 && adduser -u 1000 -S -s /sbin/nologin mysql \
 && addgroup -g 60 mysql \
 && addgroup mysql mysql \
 && apk add --no-cache mariadb mysql \
 && rm -rf ${MYSQL_DIR} \
 && mkdir -p ${MYSQL_DIR} \
 && chown -R mysql:mysql ${MYSQL_DIR} \
 && chown -R mysql:mysql /etc/mysql/ \
 && rm -rf /var/cache/apk/*

VOLUME /data /var/log/mysql /etc/mysql/ /tmp

USER mysql

CMD [ "mysqld", "--user=mysql" ]
