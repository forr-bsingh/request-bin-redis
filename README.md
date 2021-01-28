# REQUEST BIN REDIS

## Build Command for redis standalone image :
 - docker build --build-arg REDIS_PORT=26379 -t bsingh1904/request-bin-redis:v1 .

## URLS
  1. REDIS: http://localhost:${redis_port}
  2. COMMANDER: http://localhost:${commander_port}
