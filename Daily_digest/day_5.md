# day_5
- Main Commands
- Debugging a Container

# Container vs Image
desc </br>

# Version and Tag
desc </br>

# Commands
- docker pull <image-name>:<version>
- docker images
- docker run <image-name>    => is equivalent to docker pull + docker start
- docker ps
- docker run -d <image-name>
- docker stop
- docker ps -a , lists running and stopped containers
- docker start <comtainer-id>

#### Question here is how do you actually use any container we just started?
when we do docker ps, there is a column PORTS, specifies on which port container is listening incoming requests. </br>

Consider a scenario, in which we have two containers of redis are running,</br>
- docker run redis
- docker run redis:4.0

Now if we do docker ps,</br>
```
knoldus@knoldus-Latitude-3510:~$ docker ps
CONTAINER ID   IMAGE         COMMAND                  CREATED          STATUS          PORTS                                   NAMES
9f94753c760a   redis:4.0     "docker-entrypoint.s…"   6 seconds ago    Up 5 seconds    6379/tcp                                inspiring_goodall
81f425da6765   redis         "docker-entrypoint.s…"   29 seconds ago   Up 28 seconds   6379/tcp                                heuristic_neumann
```
Here we see two redis running. Ports are something which are helpful in order to use these containers. </br>
Ports specifies on which port the container is listening the incoming traffic.</br>

Both container have same port opened.</br>
How to avoid this conflict and use both containers in our host machine.</br>

This brings up Container Port vs Host Port. </br>

# Container Port vs Host Port
We need to bind container port to host port(laptop) in order to access container. </br>
![image](https://user-images.githubusercontent.com/76727343/210501977-74a4e737-47ed-4657-839a-7ac81357d66b.png)

To bind we use command, </br>
``` docker run -p<host-port>:<container-port> <image-name> ```
e.g: ```docker run -p6000:6739 redis:latest```

#### Output
```
knoldus@knoldus-Latitude-3510:~$ docker run -p6000:6379 -d redis:4.0
7aed21b051ddb14f0cff9ef91b5e4ae931173f8b06554b4734a8d422dfafdf73
knoldus@knoldus-Latitude-3510:~$ docker ps
CONTAINER ID   IMAGE         COMMAND                  CREATED          STATUS          PORTS                                       NAMES
7aed21b051dd   redis:4.0     "docker-entrypoint.s…"   4 seconds ago    Up 3 seconds    0.0.0.0:6000->6379/tcp, :::6000->6379/tcp   naughty_kilby
```

# Container Debugging
- Commands for troubleshooting.

- docker ps
- docker logs <container_id>
- docker logs <container_name>
- docker exec -it <container_id> bash
