docker run --name redis -p 6379:6379 -v $PWD/redis.conf:/usr/local/etc/redis/redis.conf -v $PWD/data:/data -d redis:4 redis-server /usr/local/etc/redis/redis.conf --appendonly yes  
