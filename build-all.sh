#!/bin/bash -e

docker build -t foundationdb/fdb-client fdb-client
docker build -t foundationdb/fdb-server fdb-server

docker build -t foundationdb/oracle-jdk8 oracle-jdk8
docker build -t foundationdb/sql-layer-client sql-layer-client
docker build -t foundationdb/sql-layer sql-layer
docker build -t foundationdb/sql-layer-rest-client sql-layer-rest-client

docker build -t foundationdb/lefp lefp

docker build -t foundationdb/pgpool pgpool
docker build -t foundationdb/haproxy haproxy
docker build -t hikaricp-test hikaricp-test

docker build -t dbal-test doctrine-dbal-phpunit

docker build -t sqlalchemy-test sqlalchemy-pytest

docker build -t foundationdb/rvm rvm
docker build -t foundationdb/rvm-ruby rvm-ruby
docker build -t foundationdb/spree spree
docker build -t foundationdb/spree-nginx spree-nginx

docker build -t foundationdb/tomcat tomcat
docker build -t foundationdb/mybatis-jpetstore mybatis-jpetstore
docker build -t foundationdb/activiti activiti

docker build -t ldap-server ldap-server
docker build -t ldap-sql-layer ldap-sql-layer

docker build -t krb5-server krb5-server
docker build -t krb5-sql-layer krb5-sql-layer
docker build -t krb5-sql-layer-client krb5-sql-layer-client
docker build -t krb5-sql-layer-rest-client krb5-sql-layer-rest-client

docker rmi $(docker images -f "dangling=true" -q) || true
