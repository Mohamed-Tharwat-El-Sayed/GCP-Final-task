#!/bin/bash

## install gcloud 
sudo apt install -y apt-transport-https ca-certificates gnupg
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo tee /usr/share/keyrings/cloud.google.gpg
sudo apt-get update && sudo apt-get install -y google-cloud-cli

## get sa key
wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1XCDsSPekV9DQMKZn9Iifer5FOqn5ojay' -O key.json
gcloud auth activate-service-account gke_sa@mohamed-tharwat-project.iam.gserviceaccount.com  --key-file=key.json

## install kubectl
sudo apt-get install kubectl
sudo apt-get install google-cloud-sdk-gke-gcloud-auth-plugin

# Connect To Kubernetes Cluster
sudo gcloud container clusters get-credentials app-cluster --zone europe-west1-b  --project mohamed-tharwat-project

