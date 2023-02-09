# CI CD

```
CI => Continuous Integration
Continuosly integrate newly added code to the version control and trigger build.
[build artifacts to be deployed and push to artifact repository]
```
```
CD => Continuous Delivery and Continuos Deployment
```
```
For both, deployment and delivery, ultimate goal is to take new valuable code to 
production as quickly as possible.

Production is from where business runs, profit generates.

So what we are doing to reach till this point?
```
```
Code -> build it with CI tool -> deploy to test environment -> staging environment -> Run all automated tests -> Production environment.
```

```
Deployment -> code commit(merge to master) => moves to production without any human intervention
    [In case of error we have rollbacking]

Delivery -> code commit(merge to master) => moves to staging [with all possible automated tests done] => Needs human intervention[Approval] to deploy to production.
```

![image](https://user-images.githubusercontent.com/76727343/217778446-0ea0898d-11e4-4e70-82d6-e8bc51f6fb1c.png)
