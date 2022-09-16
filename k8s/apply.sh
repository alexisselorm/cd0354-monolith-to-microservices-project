#!/bin/bash

#ENVIRONMENT VARIABLES
kubectl apply -f aws-secret.yaml
kubectl apply -f env-secret.yaml
kubectl apply -f env-configmap.yaml

#METRICS

#DEPLOYMENTS
kubectl apply -f udagram-api-feed-deployment.yml
kubectl apply -f udagram-api-user-deployment.yml
kubectl apply -f udagram-frontend-deployment.yml
kubectl apply -f udagram-reverseproxy-deployment.yml
#SERVICES
kubectl apply -f udagram-api-feed-service.yml
kubectl apply -f udagram-api-user-service.yml
kubectl apply -f udagram-frontend-service.yml
kubectl apply -f udagram-reverseproxy-service.yml

