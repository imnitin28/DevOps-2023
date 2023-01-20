#!/bin/bash
# Download and install the Google Cloud SDK
curl https://sdk.cloud.google.com | bash

# Restart your shell to start using gcloud
exec -l $SHELL

# Authenticate with gcloud
gcloud auth login

# Set the default project
gcloud config set project $PROJECT_ID

# Set the default zone or region
gcloud config set compute/zone $ZONE

# Enable the necessary APIs
gcloud services enable compute.googleapis.com
