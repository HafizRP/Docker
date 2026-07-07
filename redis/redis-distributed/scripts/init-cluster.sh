#!/bin/bash

# Initialize the Redis cluster
# This script should be run from the host machine

echo "Initializing Redis Cluster..."

docker exec -it redis-node-1 redis-cli --cluster create \
  redis-node-1:6379 \
  redis-node-2:6379 \
  redis-node-3:6379 \
  redis-node-4:6379 \
  redis-node-5:6379 \
  redis-node-6:6379 \
  --cluster-replicas 1
