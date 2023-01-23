## bind mounts
Bind mounts may be stored ```anywhere``` on the host system. They may even be important system files or directories.
__Non-Docker processes on the Docker host or a Docker container can modify them at any time.__























# Difference between Volumes and bind mounts and tmpfs
- Volumes are preferred mechanism for persisting data generated by and used by Docker container
- bind mounts are dependent on the directory structure and the OS of the host machine.
- Volumes are fully managed by Docker.
- Volumes are easier to back up or migrate than bind mounts.
- You can manage volumes using Docker CLI commands or the Docker API.
- Volumes work on both Linux and Windows containers.
- Volumes can be more safely shared among multiple containers.
- Volume drivers let you store volumes on remote hosts or cloud providers, to encrypt the contents of volumes, or to add other functionality.
- New volumes can have their content pre-populated by a container.
- Volumes on Docker Desktop have much higher performance than bind mounts from Mac and Windows hosts. 
- Volume doesn't increase the size of the containers using it and the volume's content exixt outside the lifecycle of given container.
- In case of non-persistent state data, we can use tmpfs mount. As it will avoid storing the data permanently and won't consume memory. It will increase containers performance by not writing into the container's writable layer.

