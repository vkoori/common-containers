# Common Docker Containers

create common docker container with following command:

When you run the following command, the system will ask you what containers you need? After finishing the work, the containers will be created for you. And you can use them in the development mode.

```shell
bash develop.sh
```

> attention:

If you want to change anything, update the env file

## List of supported containers:

| image                 | ports   | gateway       |
| --------------------- | ------- | ------------- |
| mariadb               | 3306    | 172.16.80.254 |
| mongodb               | 27017   | 172.16.80.254 |
| redis                 | 6379    | 172.16.80.254 |
| rabbitmq (node)       | 5672    | 172.16.80.254 |
| rabbitmq (management) | 15672   | 172.16.80.254 |
| adminer               | 8080    | 172.16.80.254 |
| phpmyadmin            | 8081    | 172.16.80.254 |
| mongo-express         | 8082    | 172.16.80.254 |
| redis-commander       | 8083    | 172.16.80.254 |
| minio (node)          | 9000    | 172.16.80.254 |
| minio (management)    | 9001    | 172.16.80.254 |
| apache                | 80, 443 | -             |
