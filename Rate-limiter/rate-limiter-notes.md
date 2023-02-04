# Understanding Rate-limiting strategies and techniques

- https://www.youtube.com/watch?v=gVVDo2h6DwA
- https://cloud.google.com/architecture/rate-limiting-strategies-techniques

### What is Rate limiting?
- Rate limiting is something that restricts several event (onto which rate limiting is applied) to occur more than the defined constraint in the rate limiting logic.

- At enterprise level, rate limiting is commonly used to keep resource usage within control and maintain service health.

### Why use rate limiter?
- Used as a defensive measure for the shared services to stop themselves from excessive use, it could be intended/unintended in order to maintain service availability.
- Even though your system is highly available, you should have limits on consumption at some level.
- Rate limiting helps to ensure API-based services to be highly available by reducing chances of failures due to resource failure.
- Rate limiting could be applied at client side as well as server side to ensure maximum throughput and minimum latency accross large distributed systems.
- Useful to avoid resource starvation it could be intentional or unintentional.
    - intentional could be friendly-fire DDoS
    - unintentional could be DDoS

### How Rate limiting is applied in real time?
- It is applied by the service just before the contrained resource, with some resource usage limit margin.

### Use cases
- Managing policies and quotas
- Controlling Flow
- Avoid excess cost

### Rate limiting strategies
- No rate limit
- Pass through
- Enforce rate limit
- Defer response
- Client side stragtegies

### Apply rate limiting on orchestrations done by customers
```
There are several ways to apply rate limiting on orchestrations done by customers:

Server-side rate limiting: This involves setting limits on the number of requests that can be made to a server within a certain time period. This can be done using various techniques such as token bucket, leaky bucket, and fixed window algorithms.

Client-side rate limiting: This involves limiting the rate at which requests are made from the client. The client can enforce this limit by adding a delay between requests or by tracking the number of requests made and limiting the rate of requests when a threshold is reached.

API Gateway rate limiting: An API Gateway can be used to apply rate limiting on API requests made by customers. The API Gateway can enforce rate limits by tracking the number of requests made by each customer and limiting the rate of requests when a threshold is reached.

Load Balancer rate limiting: Load balancers can also be used to enforce rate limiting by limiting the number of requests that can be made to a server or a group of servers.

The choice of rate limiting method will depend on the specific requirements of the orchestration system and the use case. It's recommended to consult with experts to determine the most appropriate rate limiting approach for a given scenario.
```
### External Rate limiter
```
An external rate limiter is a separate system or service that is used to enforce rate limits on incoming requests to a system or network service. The rate limiter is typically positioned in front of the target system and serves as a gatekeeper, allowing only a specified number of requests to pass through to the target system within a given time period.

The external rate limiter is designed to reduce the load on the target system, prevent performance degradation, and prevent the target system from being overwhelmed by excessive requests. It operates independently of the target system and can be configured to enforce rate limits based on various criteria such as IP address, user ID, API key, or request type.

Using an external rate limiter can provide greater flexibility and scalability compared to implementing rate limiting within the target system, as it can be easily updated or reconfigured without affecting the target system. It can also provide a centralized location for managing rate limits across multiple target systems, making it easier to enforce consistent rate limits across different parts of a network or application.
```