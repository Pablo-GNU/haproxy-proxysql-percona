## First Steps

cd into this directory, then execute this commands:

```
mkdir -m 777 -p docker/mysql/cert

docker run --name pxc-cert --rm -v docker/mysql/cert:/cert percona/percona-xtradb-cluster:8.0 mysql_ssl_rsa_setup -d /cert

docker network create pxc-network
```

## Start the infrastructure

```
docker compose up
```

## Connect to the infrastructure

```
mysql -P 33076 -u test -p
```
