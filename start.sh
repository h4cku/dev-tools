#  Create isolated network for our containers 
docker network create --subnet=172.31.0.0/16 --gateway=172.31.0.1 dev-network