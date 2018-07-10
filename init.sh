#!/usr/bin/env bash

_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

set -ex

(
    cd $_dir
    docker-compose up -d

    sleep 5

    docker-compose exec ruby bash -c 'gem install redis'
    echo 'yes' | docker-compose exec -T ruby bash -c 'ruby /tmp/data/redis-trib.rb create --replicas 1 127.0.0.1:7000 127.0.0.1:7001 127.0.0.1:7002 127.0.0.1:7003 127.0.0.1:7004 127.0.0.1:7005'
)