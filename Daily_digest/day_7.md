## Using Docker Compose
In an enterprise world we have multiple environments,
- dev
- qa
- staging
- prod

For setting up application environment, we need to have multiple docker containers that supports together to result a fully functional application.
In order to have multiple containers together, running each one by one from terminal is a very tidious and repetative task.

Docker compose is a solution which helps to run multiple containers with all needed configuration at the same time.

#### Understanding a docker compose file

```
version: '3'    => (*) - version of docker-compose
services:       => (*) - list of services needed
    mongodb:   
        image: mongo
        ports:
            - 27017:27017
        environment:
            - MONGO..._USERNAME=admin
            ...
            ...
            ...
    mongo-express:
        image: mongo-express
        ports:
            - 8080:8080
        environment:
            - ME_CONFIG_MONGODB_....
            ...
            ...
            ...
```

NOTE: Docker compose takes care of creating a common network.
Running a docker compose file,
```
docker-compose -f <file_name>.yml up
``` 
To see docker network created by docker compose run,
```
docker network ls
Output:
15ea12553dc5   writingadockercompose_default                     bridge    local
```
Note that, by default there is no data persistance with Containers.

Docker Volumes is a concept which is helpful for having persistency while working with containers.

Stopping containers, removes network as well:
```
knoldus@knoldus-Latitude-3510:~/DevOps/DevOps-2023/Docker/Writing_a_docker_compose$ docker-compose -f mongo.yml down
Removing writingadockercompose_mongodb_1       ... done
Removing writingadockercompose_mongo-express_1 ... done
Removing network writingadockercompose_default
``` 
