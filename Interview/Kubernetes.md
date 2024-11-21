# How to upgrade Kubernetes Version?
On prem

Cloud

# Does k8s upgrade causes downtime?

K8s internally, when works on upgrade, it generally creates a new worker node and moves workloads to that node.
Generally it doesn't encounter any downtime.

But in rare cases it can have some time.