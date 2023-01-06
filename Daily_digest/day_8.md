# Dockerfile
#### Creating our own Docker image from application code.

We have developed a new feature for our application, tested it and now we want to deploy it.

In order to deploy it, the application needs to be packaged into it's own docker container.

This means we need to build a docker image for our application.

New feature developed -> commited to git -> CI starts

Question here is, what does Jenkins do with this application?
It builds the appliation and then packages into a Docker Image. and then pushes into a repository.

#### What is a Dockerfile
- Blueprint for building images.

```
FROM <image> (*)
ENV <>         
RUN <commands> # Run any Linux commands inside container
COPY <source> <destination>
CMD (*)         # executes an entrypoint linux command. 

```
Q. What is the difference b/w ``` RUN copy command - cp <> <>  ``` and ```COPY <>``` ?
Ans: Any commands here ``` RUN copy command - cp <> <>  ``` gets executed inside the container and ```COPY <>``` executes at host level.

Ex: COPY can be used when we want to copy a file from host to container.

Q. What is the difference between RUN and CMD?
Ans. CMD is the entry point command. We can have multiple RUN but single CMD. CMD directs docker that this is the command which I want to execute as the entrypoint.

#### Creating a Docker Image 
Once we have a Dockerfile created, run this command
```
docker build -t <Imagename>:<version> <path_to_dockerfile>
docker build -t my-app:1.0 .
Sending build context to Docker daemon  10.24kB
Step 1/5 : FROM node:18-alpine
 ---> 6d7b7852bcd3
Step 2/5 : ENV MONGO_DB_USERNAME=admin     MONGO_DB_PASSWORD=password
 ---> Using cache
 ---> f5b74e38ba0c
Step 3/5 : RUN mkdir -p /home/app
 ---> Using cache
 ---> c1b7cd5e421a
Step 4/5 : COPY . /home/app
 ---> 6dbc21247da7
Step 5/5 : CMD ["node", "server.js"]
 ---> Running in 8d376fe5ba14
Removing intermediate container 8d376fe5ba14
 ---> 1cbc02533102
Successfully built 1cbc02533102
Successfully tagged my-app:1.0
```
#### Verfiy if image is created
```
knoldus@knoldus-Latitude-3510:~/DevOps/DevOps-2023/Docker/Demo_Project/app$ docker images
REPOSITORY                                       TAG         IMAGE ID       CREATED          SIZE
my-app                                           1.0         1cbc02533102   24 seconds ago   169MB
```

#### Reducing Docker Image Size
https://dev.to/kitarp29/reducing-docker-image-size-a67