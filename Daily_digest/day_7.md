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

NOTE: Docker compose takes care of creating a common network