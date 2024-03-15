## What is K8s?
- container orchestration tool.
### What is a container?
### Microservice application
### How modern applications work with microservice architecture?

## Why K8s?
purpose of k8s is to host the application in form of containers in an automated fashion. 
So that we can deploy as many instances of the application as required.

and easily enable communication between multiple services within application.


# Architecture
![image](https://github.com/imnitin28/DevOps-2023/assets/76727343/86eb13f2-ca47-452c-9ead-25cedfe3c7c5)


1. ETCD 
    - etcd is a distributed reliable key-value store that is Simple, Secure and Fast.

    - traditional DB(sql, relational) vs Key-value store

    - json/yaml
    - Install etcd
        - Download
        - extract
        - Run etcd service
    - port 2379 default

    - commands
        - ./etcdctl --version

    - etcd in k8s
        it stores every information about cluster.

        - Command to set right version of etcd API  
            - export ETCDCTL_API=3
        - Commands
            ```
            etcd snapshot save // take etcd backup
            etcdctl endpoint health // get cluster health
            etcdctl get // get etcd contents 
            etcdctl put    // put content to etcd
            ```

2. Kube API Server
    - Primary management component.
    - When we hit a ```kubectl get po``` command, it first goes to kube api server for authentication and validation then ti goes to etcd cluster to retrieve the requested information.

    - kube api server is only component which directly intercats with etcd cluster

    - Scheduler and kubelet interacts with kube api server to update the cluster.

    - 



