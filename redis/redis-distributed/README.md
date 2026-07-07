# Redis Distributed Cluster

This project contains a Docker-based setup for a Redis Cluster with 6 nodes.

## Structure

The project structure has been organized as follows:

```
redis-distributed/
├── config/
│   └── redis.conf       # Redis configuration file
├── scripts/
│   └── init-cluster.sh  # Script to initialize the cluster
├── data/                # Placeholder for data persistence (if configured)
├── docker-compose.yml   # Docker Compose definition
└── Dockerfile           # Docker image definition
```

## Getting Started

1. **Build and Start the Cluster**
   ```bash
   docker-compose up --build -d
   ```

2. **Initialize the Cluster**
   Run the initialization script to form the cluster:
   ```bash
   ./scripts/init-cluster.sh
   ```
   Follow the prompts (type `yes` when asked to accept the configuration).

3. **Verify Cluster State**
   You can verify the cluster state by connecting to any node:
   ```bash
   docker exec -it redis-node-1 redis-cli cluster info
   ```

## Configuration

- The Redis configuration is located in `config/redis.conf`.
- The `Dockerfile` copies this configuration into the image.
- Each node uses the same configuration file but announces itself with a unique hostname.

## Notes

- This setup uses 6 Redis nodes (3 master, 3 replicas) running on ports 6379-6384 (internal) and mapped to host ports as defined in `docker-compose.yml`.
