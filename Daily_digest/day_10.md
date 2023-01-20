## Docker Storage Options
![image](https://user-images.githubusercontent.com/76727343/213815465-28a89fa0-6075-4347-b2b0-8b5a10130e03.png)

- Volumes
- bind mounts
- tmpfs

1. Persisting Data with Volumes.
```
- When do we need Docker Volumes?
- What is Docker Volumes?
- 3 Volume types.
- Docker Volumes in docker-compose file.
```
Volumes are stored ```in a part of the host filesystem which is managed by Docker```. (/var/lib/docker/volumes/) on Linux.
__Non-Docker processes should not modify this part of the filesystem.__
Volumes are the best way to persist data in Docker.

In a nutshell docker volumes are used for data persistence in docker.
For e.g I f you have databases or other statesful applications, docker volumes are useful for that.

### Usecase of docker volumes
- Container runs on a host, say we have a database container. Container have a virtual file system where the data is usually stores.
- What will happen when we delete the container? data will be lost when we restart the container. Which means the data is not persistent.

This is where we need docker volumes.

### How does Docker Volume works?
When we create a volume, it is stored within a directory on the Docker host. 
When we mount the volume into a container, this directory is what is mounted into the container. This is similar to the way that bind mounts work, except that volumes are managed by Docker and are isolated from the core functionality of the host machine.

On a host we have a physical file system. And the containers runs on the host.

The way volume work is that we plug the physical file system path could be a folder, a directory, and we plug it into the containers file system path.
<Image>
So in simpl words, a directory/folder on host filesystem is mounted into a diectory/folder in the virtual file system of docker.

So what happens behind the scene is container writes to its file system, it gets replicated or automatically written to host file system as well and vice-versa.

When a container restarts, it gets data from host filesystem.

### Types of Volumes
There are three types,
1. Host Volumes
2. Anonymous Volumes
3. Named Volumes

