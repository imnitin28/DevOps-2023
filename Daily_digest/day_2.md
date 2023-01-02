# Microservice Architechture

Before microservice architechure, Monolithic was the standard way of architechtural design.
In monolithic all components of an appliation are part of single unit.

## Image - monolithic arch ##
- Problems
    - everything is developed, deployed and scaled as single unit.
    - app is developed in single tech stack. If Java only Java.
    - Collaboration b/w team members was difficult.
    - single artifact, means on each update whole application needs to be redeployed.
    - higher infra cost. 
    - scale up/down was difficult.
    - Difficulty if services need different dependency version.
    - release process was slow.
    - bug in single module can affect entire application.
    - Tightly coupled.

- Microservices solves these problems.
In microservice architechture based application, the product is breaked into multiple smaller independent services.

### This rises some questions.
- How to break down the application?
- What code goes where?
- How many services do we create?
- How big/small should each service be?
- How do each service communicate?
-----------------
### Answers
- Split application based on business fucntionalities and not on technical basis.
- Each service should do one specific job. each service should be self-contained and independent.
- Each microservice should be able to developed, deployed and scaled separately.
- Each microservice has their own versions.
- They communicate via API call, each service have their own endpoint.

# Synchronous communication
- One service sends request to other service and wait for response. 
- One microservice sends http request to other microservice on its endpoint and vice-versa.
## Image ##

# Asynchronous communication
Communicate via messages via message broker. for e.g RabbitMQ
Here, services will send message first to a message broker and then the message broker forwards that message to the respective service.
## Image ##

# Service Mesh with Sidecar pattern
In field of K8s, with service mesh we have a kind of helper service that takes over the complete communication logic, so we don't need to code this logic to microservice and delegate this logic to external service.
## Image ##
------------------

- Each microservice have different team, each team can choose their own tech stack.

# Challenges with Microservices
- Configuring communication b/w services in a challenge.
- Monitoring becomes difficult for each microservice.

#### Various tools to overcome these challenges
1. Kubernetes
Platform for running large microservices app.

2. Hashicorp stacks
- Terraform
- Vault
- Service Mesh-Consul
etc.

#### CI/CD Pipeline for microservice
- Release process with CICD for microservice.

#### Monorepo vs Polyrepo
- How do we manage repositories for microservices?

1. Monorepo
All microservices are kept in a single repo in different folders.
This make code management easier. But problem is tight coupling.
Large repo size.
Pipelining requires more logic.

2. Polyrepo
Separate git project for each microservice.
User grouping feature of Gitlab/Guthub for linking.
CICD-> different pipeline for each repo.

# References
- https://www.youtube.com/watch?v=rv4LlmLmVWk
