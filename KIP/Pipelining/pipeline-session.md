What pipeline is.
Why pipeline is needed.
How to Create it.
Various tools to create a working pipeline.

# What is a pipeline?
A DevOps pipeline is a setup in a software project that helps to deliver Continuous Integration and Continuous deployment eventually leading to Continuos Delivery of the software project.

# Why
Repeatable
Reliable
Continuosly Improving 

way of SDLC. 

Goals:
- To make changes available to the customer faster. 
- Enable constant flow of changes into production using an automated process including various tools at each steps.
-  


# Assignment:
#### Run Jenkins using docker
```
docker run -p 8080:8080 -p 50000:50000 -d -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts
```

Output:
Returns container ID
```
Returns container ID
```
```
docker logs <container_id>
```
```
docker ps
```

Go to web browser,
open ```http://localhost:8080/``` a Jenkins UI will appear.

Begin with the setup, and finish.






