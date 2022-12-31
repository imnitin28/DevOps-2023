
Q. How does Boundry work as passwordless?
A. Since the passwords are dynamically managed with Vault,   and can be brokered, the user sessions would not need to be aware of the database passwords when they are connecting to the database as shown in the demo

Question 2) Do Boundary only works with Vault? Because we have use case where we keep the secrets within AWS Secret Manager. In that case, can I extend Boundary with AWS Secret Manager to have the capability of credential injection or credential brokering to access the other resources on AWS side?
A. Thats possible. We are platform agnostic, cloud agnostic.

Q. Can we also login via boundry-cli from a server, where desktop-env is not installed?
A. You need a boundary client to run the boundary CLI commands. its a single lightweight binary

