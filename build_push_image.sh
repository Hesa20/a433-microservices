# # build docker image
docker build -t item-app:v1 .

# login to docker hub
docker login -u hesa21 -p $(echo $PASSWORD_DOCKER_HUB)

# push docker image to docker hub
docker tag item-app:v1 hesa21/item-app:v1
docker push hesa21/item-app:v1

# show all docker images
docker image ls


