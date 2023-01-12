#!/bin/bash
read image name and tag
docker build -t $image_name .
docker tag $image_name gcr.io/$PROJECT_ID/$image_name
docker push gcr.io/$PROJECT_ID/$image_name