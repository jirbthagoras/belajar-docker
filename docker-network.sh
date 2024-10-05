# check docker's available network
docker network ls

# create a network
docker network create --driver bridge contohnetwork

# delete a network
docker network rm contohnetwork