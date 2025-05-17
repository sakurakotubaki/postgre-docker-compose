# postgre-docker-compose
docker-comopseを使用して、PostgreSQLの環境構築をする

[zenn](https://zenn.dev/joo_hashi/articles/3702238384488f)の記事のバージョンを編集して使用する。

[🔗DockerHubのリンク](https://hub.docker.com/_/postgres)

1. `.env`ファイルを作成する

```
POSTGRES_VERSION=16.9
CONTAINER_NAME=company_db # お好きに
HOSTNAME=pgsql-db # お好きに
USER_NAME=postgres # ユーザー名
USER_PASS=postgres # パスワード
```

2. `compose.yaml`を作成する。

```shell
touch compose.yaml
```

```yml
services:
  pgsql_db:
    image: postgres:${POSTGRES_VERSION}
    container_name: ${CONTAINER_NAME}
    hostname: ${HOSTNAME}
    ports:
      - "5432:5432"
    restart: always
    environment:
      - POSTGRES_USER=${USER_NAME}
      - POSTGRES_PASSWORD=${USER_PASS}
    volumes:
      - db_vol:/var/lib/postgresql/data

volumes:
  db_vol:
```