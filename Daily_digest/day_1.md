# Docker vs K8s
Either/or is completely wrong question here. Docker and K8s work better together.
Docker(a containerisation tool) is useful for automated deployment of applications which can run on cloud or cloud premise.

Docker allows to build images of applications and push to container registry which can later be used to create multiple containers on multiple servers.

As product demand grows, load increases we need to deploy multiple containers across multiple servers. This brings some challenges as well, like-
- How to schedule containers based on load?
- How do different containers talk to each other?
- How to scale up container instances?

K8s answers all these questions.

- K8s is an containers orchestration tool.
- It provides an API to control how and where those containers will run. 
- K8s helps to easily tackle operational complexities when we scale up/down multiple containers deployed across multiple servers.
-  Kubernetes lets us to orchestrate a cluster of virtual machines and schedule containers to run on those virtual machines based on their available compute resources and the resource requirements of each container. 
- Containers are grouped into pods, the basic operational unit for Kubernetes. These containers and pods can be scaled to your desired state and you are able to manage their lifecycle to keep your apps up and running.

- Containers run on the principle of "code once and run anywhere".
- K8s provides potential to orchestrate and manage all container resources from control plane. It includes networking, LB, security, scaling across all K8s nodes.
- K8s also provides namespaces for isolation mechanism.
- In short, use Kubernetes with Docker to:

    - Make infrastructure more robust and highly available application. App will remain online, even if some of the nodes go offline.
    - Make application more scalable. If your app starts to get a lot more load and you need to scale out to be able to provide a better user experience, it is simple to spin up more containers or add more nodes to your Kubernetes cluster.

# Summary
Kubernetes and Docker work together. Docker provides an open standard for packaging and distributing containerised applications. Using Docker, you can build and run containers and store and share container images. One can easily run a Docker build on a Kubernetes cluster, but Kubernetes itself is not a complete solution. To optimise Kubernetes in production, implement additional tools and services to manage security, governance, identity and access along with continuous integration/continuous deployment (CI/CD) workflows and other DevOps practices.

![image](https://user-images.githubusercontent.com/76727343/210156585-b051a6d0-6688-49ef-b1bc-138f28d67a88.png)


# References
- https://azure.microsoft.com/en-in/solutions/kubernetes-vs-docker/
