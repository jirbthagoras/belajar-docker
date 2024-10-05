# check docker's available network
docker network ls

# create a network
docker network create --driver bridge contohnetwork

# delete a network
docker network rm contohnetwork

# to disconnect network from a container
docker network disconnect mongonetwork mongodb

# to connect network from a container
docker network connect mongonetwork mongodb

# to check/inspect a specific network
docker network inspect mongonetwork

# to delete unused network
docker network prune