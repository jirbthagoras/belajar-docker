# to check available volumes
docker volume ls

# to create a volume w/ specific name
docker volume create mongovolume

# to remove a volume (container that uses this colume must be stopped first)
docker volume rm mongovolume

# to attach a volume to a container
docker container create --name mongovolume --publish 27019:27017 --mount "type=volume,source=mongodata,destination=/data/db"  --env MONGO_INITDB_ROOT_USERNAME=eko --env MONGO_INITDB_ROOT_PASSWORD=eko mongo:latest

# make a backup container to backup a volume, mounted by two type
docker container --name nginxbackup --mount "type=bind,source=/home/jirb/Main/Belajar/Docker/belajar-docker-dasar/backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" nginx:latest

# to instantly remove backup container, add --rm in the create command and change create to run, and add backup command after image:tag phrase


# to check/inspect a specific volume
docker volume inspect mongovolume