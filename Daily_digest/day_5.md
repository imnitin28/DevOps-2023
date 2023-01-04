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

# Image

To bind we use command, </br>
``` docker run -p<host-port>:<container-port> <image-name> ```

