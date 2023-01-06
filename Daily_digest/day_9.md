# Docker Private Registry
There are various private registries for storing docker images securley.
- GCP -> GCR -> Google Container Registry
- AWS -> ECR -> Elastic Container Registry

Here we will work with GCR,
```
Google Container Registry provides secure, private Docker repository storage on Google Cloud Platform. You can use gcloud to push images to your registry, then you can pull images using an HTTP endpoint from any machine, whether it's a Google Compute Engine instance or your own hardware.
```

Quickstart to gcr -> https://cloud.google.com/container-registry/docs/quickstart
###### Step 1: Create a private docker repository on GCP
- Log on to GCP
    - Hover to GCP Service GCR
