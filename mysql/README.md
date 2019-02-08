## Mysql Docker Run

``` bash
docker run -d --name mysql -p 3306 -v "$PWD/log":/var/log/mysql -v "$PWD/data":/var/lib/mysql -v "$PWD/conf":/etc/conf.d -e MYSQL_ROOT_PASSWORD=123456 mysql:5.7
```

- map radom domain port to 3308 of container.
- `/var/lib/mysql`: mysql in container to store data.
- `/etc/conf.d`: mysql in container to store custom configurations.

[mysql docker](https://hub.docker.com/_/mysql)


