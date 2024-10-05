# to list all available images
docker image ls

# to install image from a registry
docker image pull redis:latest

# to delete installed image
docker image rm redis:latest

# to check/inspect specific image
docker image inspect redis

# to delete all unused image
docker image prune