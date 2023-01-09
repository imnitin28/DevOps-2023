# Prerequisite
- GCP account
- Container Registry API enabled

### Pushing a  docker image to gcr
#### Step 1: 
Configure GCP Account with gcloud cli </br>
```
gcloud auth login
gcloud config set project <PROJECT_ID>
gcloud projects list
gcloud config set project <PROJECT_ID>
```

#### Step 2:
##### Dockerize the application using the dockerfile.
```
$docker build -t nodeapp:4.0 .
Sending build context to Docker daemon  10.75kB
Step 1/5 : FROM node:18-alpine
 ---> 6d7b7852bcd3
Step 2/5 : ENV MONGO_DB_USERNAME=admin     MONGO_DB_PASSWORD=password
 ---> Running in 52ef0b1b4976
Removing intermediate container 52ef0b1b4976
 ---> 9bd163426eea
Step 3/5 : RUN mkdir -p /home/app
 ---> Running in f5219436904e
Removing intermediate container f5219436904e
 ---> e11e062c7323
Step 4/5 : COPY ./app /home/app
 ---> 82b9f987dcf2
Step 5/5 : CMD ["node", "/home/app/server.js"]
 ---> Running in cd8723b93f78
Removing intermediate container cd8723b93f78
 ---> a5bb4285204a
Successfully built a5bb4285204a
Successfully tagged nodeapp:4.0
```
##### Tag the image with gcr tag
```
$docker tag nodeapp:3.0 gcr.io/grounded-region-366110/nodeapp:3.0
```
```
$docker push gcr.io/grounded-region-366110/nodeapp:4.0
The push refers to repository [gcr.io/grounded-region-366110/nodeapp]
651ed705052f: Pushed 
527b74ad2d01: Pushed 
24b1a2faf5b6: Layer already exists 
30dec13ff632: Layer already exists 
b5f8d2dd387e: Layer already exists 
ded7a220bb05: Layer already exists 
4.0: digest: sha256:75af1aabd12ece1da4cfb9701dc6a4ce923c9a2109b54d40f6f4ff05ce0feaf8 size: 1573
```
#### Step 3:
- Open gcp console ```https://console.cloud.google.com/gcr/images/grounded-region-366110/global?project=grounded-region-366110```
    - Container registry -> Images
        - Pushed image with gcp tagname would be visible there.
![image](https://user-images.githubusercontent.com/76727343/211279385-c017ded5-3ac7-456f-9d5a-edd1804cb25e.png)

##### Pulling a docker image from gcr
Before Pulling make sure image is already not present.
Run ``` docker images ``` to list and Run ``` docker rmi <IMAGE-ID> ``` to delete. </br>

Run ``` docker pull gcr.io/grounded-region-366110/nodeapp:4.0 ``` to pull the image.</br>

Run ``` docker rum <IMAGE-ID> ``` to start the container of the image.</br>

## Explore GCR Options
- ![image](https://user-images.githubusercontent.com/76727343/211280509-bb88c71a-690a-4022-be3d-7290e2ce44eb.png)

- Overview
    - ![image](https://user-images.githubusercontent.com/76727343/211280695-be1f737d-5e6b-4420-84ef-fddb10272bd4.png)
- Pull
    - ![image](https://user-images.githubusercontent.com/76727343/211280735-1c033d9d-fab0-4278-9531-a93e40259f8e.png)
- Manifest
    - ![image](https://user-images.githubusercontent.com/76727343/211280828-fc2383aa-ab42-4325-b553-818b1c374c1e.png)
- Deploy
    - ![image](https://user-images.githubusercontent.com/76727343/211280910-82160d8d-37a3-4d00-906b-1fe9c82716d1.png)
- Settings
    - ![image](https://user-images.githubusercontent.com/76727343/211281022-2946ed2f-08f7-4bc0-8ad2-4287b22e5d33.png)