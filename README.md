# docker-redis-cluster
Using docker setup a redis cluster for development and testing.

## Start Cluster

```
./init.sh
```

**NOTE**: This script may take a few minutes to download the docker image.

## Verify

```shell
docker-compose exec redis-7000 redis-cli -c -p 7000
127.0.0.1:7000> CLUSTER INFO
cluster_state:ok
cluster_slots_assigned:16384
cluster_slots_ok:16384
cluster_slots_pfail:0
cluster_slots_fail:0
cluster_known_nodes:6
cluster_size:3
cluster_current_epoch:6
cluster_my_epoch:1
cluster_stats_messages_ping_sent:620
cluster_stats_messages_pong_sent:635
cluster_stats_messages_sent:1255
cluster_stats_messages_ping_received:630
cluster_stats_messages_pong_received:620
cluster_stats_messages_meet_received:5
cluster_stats_messages_received:1255
127.0.0.1:7000>
```
