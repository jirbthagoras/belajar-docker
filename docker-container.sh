# to check all container
docker container ls -a

# to check all active container
docker container ls

# to create a docker container
docker container create --name contohredis redis:latest

# to start a container
docker container start contohredis

# to stop a container
docker container stop contohredis

# to delete a container
docker container rm contohredis

# to see container's log / -f to live
docker container logs contohredis

# to enter a container
docker container exec -i -t contohredis /bin/bash

# port forwarding, to access container port via host (our device) port
docker container create --name contohnginx --publish 8080:80 nginx:latest

# for adding an environment data (for database that needs an environment data)
docker container create --name contohmongo --publish 27017:27017 --env MONGO_INITDB_ROOT_USERNAME=eko --env MONGO_INITDB_ROOT_PASSWORD=eko mongo:latest

# for see docker all/specific container stat
docker container stats contohnginx

# controlling resource usage for a specific container
docker container create --name smallnginx --memory 100m --cpus 0.5 --publish 8081:80 nginx:latest

# to mount a specific file/folder from host to container
docker container create --name contohmongo --publish 27018:27017 --mount "type=bind,source=/home/jirb/Main/Belajar/Docker/belajar-docker-dasar/mongo-data,destination=/data/db"  --env MONGO_INITDB_ROOT_USERNAME=eko --env MONGO_INITDB_ROOT_PASSWORD=eko mongo:latest
