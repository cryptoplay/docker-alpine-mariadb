# docker-mysql

[![Build Status](https://travis-ci.org/ViBiOh/docker-mariadb.svg?branch=master)](https://travis-ci.org/ViBiOh/docker-mariadb) [![](https://images.microbadger.com/badges/image/vibioh/mariadb.svg)](https://microbadger.com/images/vibioh/mariadb "Get your own image badge on microbadger.com")

Largely inspired by [MySQL official image](https://github.com/docker-library/mysql) and [Hypriot MySQL image](https://github.com/hypriot/rpi-mysql)

```bash
docker run -d \
  --name mariadb \
  -p 172.17.0.1:3306:3306 \
  -v /data/mysql:/DATA
  -e MYSQL_ROOT_PASSWORD=notasecret \
  -e MYSQL_DATABASE=test \
  -e MYSQL_USER=test \
  -e MYSQL_PASSWORD=test \
  --read-only \
  cryptoplay/alpine-mariadb:latest
```
