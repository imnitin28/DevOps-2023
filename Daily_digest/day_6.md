# Workflow with Docker
![image](https://user-images.githubusercontent.com/76727343/210519358-284efb0e-9004-42c9-a38e-87964a291a66.png)

# Developing with Containers.

#### Demo Project

- develop a app ui using js, html structure and node js backed
- docker container of mongodb 
    - docker pull mongo
- docker container of mongo UI called MongoExpress
    - docker pull mongo-express

```
docker images
```
Now we need to run both containers in order to make mongodb avaibale for application and also to connect the mongo express with mongodb container. </br>

This brings up another Docker concept called Docker Networking.

## Docker Networking

Docker has it's own docker network, in which containers are running in. When we deploy two/many containers in the same docker network. They can talk directly using container name, no localhost/port etc is needed, just the container name is enough. 

And the application that runs outside the docker network, connects to containers using localhost and port number. When we create image of the app say node.js app, and push it to registry then pull it in docker netwrok. All containers within same docker network can connect to each other.
And in order to access the application from outside docker network we can use localhost:port in web browser.

## Default Networks provided by Docker
```
docker network ls
```

## Creating our own network to create mongo and mongoexpress
```
knoldus@knoldus-Latitude-3510:~$ docker network create mongo-network
8d11f02e64956c52008a3cd167e16e74d2d0e71b9e631d95db64f6e0d96f45d3
knoldus@knoldus-Latitude-3510:~$ docker network ls
8d11f02e6495   mongo-network                                     bridge    local
```
Now in order to make sure that the containers runs within this network we need to pass network option while starting the containers.

```
knoldus@knoldus-Latitude-3510:~$ docker run -p27017:27017 -d -e MONGO_INITDB_ROOT_USERNAME=mongoadmin -e MONGO_INITDB_ROOT_PASSWORD=password --name mongodb --network mongo-network mongo
```
```
knoldus@knoldus-Latitude-3510:~$ docker run -d -p 8081:8081 -e ME_CONFIG_MONGODB_ADMINUSERNAME=mongoadmin -e ME_CONFIG_MONGODB_ADMINPASSWORD=password --network mongo-network --name mongo-express -e ME_CONFIG_MONGODB_SERVER=mongodb mongo-express
```

## Connect NodeJS Server with MongoDB Container

