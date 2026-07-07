# Use the official Redis image
FROM redis:latest

# Set the working directory
WORKDIR /redis

# Copy the Redis configuration file
COPY config/redis.conf /usr/local/etc/redis/redis.conf

# Expose Redis ports (6379 for Redis, 16379 for cluster communication)
EXPOSE 6379 16379

# Start Redis with cluster mode enabled
CMD ["redis-server", "/usr/local/etc/redis/redis.conf", "--appendonly", "yes"]
