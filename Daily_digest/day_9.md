# Docker Private Registry
There are various private registries for storing docker images securley.
- GCP -> GCR -> Google Container Registry
- AWS -> ECR -> Elastic Container Registry

Here we will work with GCR,
```
Google Container Registry provides secure, private Docker repository storage on Google Cloud Platform. You can use gcloud to push images to your registry, then you can pull images using an HTTP endpoint from any machine, whether it's a Google Compute Engine instance or your own hardware.
```

Quickstart to gcr -> https://cloud.google.com/container-registry/docs/quickstart
###### Follow Steps defined here,
- https://github.com/imnitin28/DevOps-2023/blob/master/GCP/GCR/Quickstart.md

##### In order to start a development server 
Add these lines to docker-compose file within services tag,
```
my-app:
        image: <image-url-from-private-regustry(GCR)>
        ports:
            - 3000:3000
```

After adding this, do docker login to your private registry GCR in this demo,

docker login => follow this https://cloud.google.com/container-registry/docs/advanced-authentication

Make sure the docker-compose file is available on the development server,
For quick, vi <file> and paste contents.


Next run ``` docker-compose -f mongo.yml  up``` and this will start the app on the specified port.
