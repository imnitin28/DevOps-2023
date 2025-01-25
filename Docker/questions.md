### Questions on Docker.
- Traditional vs. New-Generation Virtualization or simply Virtualizations vs Containerization or simply VMs vs Containers?
    - Earlier, we used to create virtual machines, and each VM had an OS which took a lot of space and made it heavy.
    - Now in docker container’s case, you have a single OS, and the resources are shared between the containers. Hence it is lightweight and boots in seconds.

- What type of arhitecture docker have?
    - client-server
    - docker info command

- What is a registry in terms of docker? Name a registry.
    - dockerhub

- what happens when you do docker pull? docker run?
- check docker service status.
- docker engine, dockerd, containerd, runc, docker-init. What are they all? 
- what are cgroups?
- 

Q. What are microservices? Why do we need it? Adv and Disadvantages. </br>

***Answer:-Microservices are an architectural and organizational approach to software development where software is split into smaller , independent services.***
           Its advantage include **flexible scaling, easy development ,reusable code,resilience** .</br>           Its disadvantages include</br>
- dificult in configuring the communication between services</br>
- More dificult to monitor with multiple instances of each services distributed across  servers  </br>

Q. Why do we need docker? What are the usecases?</br>
Q. How to check docker status?</br>
***Answer:-  ``` systemctl status docker```</br>***
Q. Docker runs as a service or what?</br>
Q. What is the version of docker CLI and daemon?</br>
Q. What is docker daemon?</br>
***Answer:- The Docker daemon listens for Docker API requests and manages Docker objects such as images, containers, networks, and volumes. A daemon can also communicate with other daemons to manage Docker services.</br>***
Q. What is docker engine?</br>
***Answer:- Docker Engine is an  containerization technology for building and containerizing an applications</br>***
Q. What is cgroup in ``` systemctl status docker``` ?</br>
Q. Which docker version you are using?</br>
***Answer:- ``Docker version 20.10.23``***</br>
Q. What is TTY in your host machine/laptop?</br>
Q. Entrypoint vs CMD?</br>
***Answer:- A **CMD** command is used to set a default command that gets executed once you run the Docker Container. In case you provide a command with the Docker run command, the CMD arguments get ignored from the dockerfile. In the case of multiple CMD commands, only the last one gets executed.</br>***
***An **ENTRYPOINT** command, unlike CMD, does not ignore additional parameters that you specify in your Docker run command.</br>***
Q. Why do we need container?</br>
***Answer:- containers solves the problem of how to get the software to run reliable when moved from one computing enviroment to another</br>***
Q. Container vs Containerization?</br>
***Answer:- **Containerization**  is a software deployment process that bundles an application’s code with all the files and libraries it needs to run on any infrastructure.</br>while **container** is a running instance of an docker images.</br>***
Q. Explain docker architecture?</br>
***Answer:- Docker makes use of a client-server architecture. The Docker client(Docker CLI) talk with the docker daemon which helps in building, running, and distributing the docker containers. The Docker client run with the daemon on the same system or we can connect the docker client with the docker daemon remotely. With the help of REST API over a  UNIX socket or a network, the docker client and daemon interact with each other.</br>***
Q. Explain ``` docker --help ```?</br>
Q. What is docker registry?</br> Why and How?</br>
Q. What is a Dockerfile?</br>
***Answer:- A ``Dockerfile`` is a text document that contains all the commands a user could call on the command line to assemble a image</br>***
Q. What is .dockerIgnore?</br>
***Answer:-``.Dockerfile`` allows you to specify a list of file and directories that Docker is to ignore during the build process</br>***
Q. What is build cache?</br> How to use it?</br>
Q. Explain docker scan?</br>
Q. What is a base image?</br> Show some examples?</br>
Q. view json output of a docker scan?</br>
Q. Explain Dockerfile format?</br>
Q. What are <none> in docker images?</br>
Q. What are dangling images and how to manage them?</br>
Q. How to see stopped containers?</br>
***Answer:- docker ps -f "status=exited"</br>***
Q. How to delete a cotaniner?</br>
***Answer:- ``docker rm <conatiner_id``></br>***
Q. How to delete a image?</br>
***Answer:- `` docker image rm [OPTION] IMAGE [IMAGE...]``</br>***
Q. Lifecycle of container/Image?</br>
Q. Different ways of removing container and images?</br>
Q. Removing multiple containers and images in one go?</br>
***Answer:- To remove **containers**``docker rm $(docker ps -aq)``</br>***
***To remove **images** ``docker rmi $(docker ps -q)``</br>***
Q. How to create a dangling images?</br>
Q. Functionality of COPY command in Dockerfile.</br>
***Answer:- ``copy`` command is used to copy the file and directories from host operating system to container </br>***
Q. Copy from desktop to container?</br>
Q. What are multistage dockerfile?</br>
Q. What is a Docker registry?</br> 
Q. Examples of private container registry?[Prepare a recording of doing this] {assignment} </br>
Q. What is port forwarding?</br>
***Answer:- It  allows computers or services in private networks to connect over the internet with other public or private computers or services.</br>***
Q. namespaces vs cgroups?</br>
Q. What is ``` docker stats ```? When to use? 
Q. When to use VM vs When to use  Container?</br>
Q. What is CoW strategy?</br>
Q. What is overlay2?</br> Is it only associated with container layer?</br>
Q. Difference between overlay2 vs aufs?</br>
Q. What is iNode? Why overlay depriciated?</br>
Q. Non docker workloads?</br>
Q. What is Swarm?</br>
Q. attach vs exec?</br>
Q. What are i/p, o/p and error stream?</br>
Q. Difference between Dockerfile and docker-compose file?</br>
Q. why do docker images have layers ? 