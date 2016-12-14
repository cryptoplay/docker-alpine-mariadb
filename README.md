# docker-mysql

[![Build Status](https://travis-ci.org/ViBiOh/docker-mysql.svg?branch=master)](https://travis-ci.org/ViBiOh/docker-mysql) [![](https://badge.imagelayers.io/vibioh/mysql:latest.svg)](https://imagelayers.io/?images=vibioh/mysql:latest 'Get your own badge on imagelayers.io') [![](https://images.microbadger.com/badges/image/vibioh/mysql.svg)](https://microbadger.com/images/vibioh/mysql "Get your own image badge on microbadger.com")

Largely inspired by [MySQL official image](https://github.com/docker-library/mysql) and [Hypriot MySQL image](https://github.com/hypriot/rpi-mysql)

```bash
docker run -d \
  --name mysql \
  -p 3306:3306 \
  -e MYSQL_ROOT_PASSWORD=secret \
  -e MYSQL_DATABASE=test \
  -e MYSQL_USER=test \
  -e MYSQL_PASSWORD=test \
  --read-only \
  vibioh/mysql:latest
```
