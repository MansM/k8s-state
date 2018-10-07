#!/bin/bash

kubectl apply -f helm
helm init --service-account tiller --upgrade --tiller-image=jessestuart/tiller:latest-arm

kubectl apply -f namespaces/
kubectl apply -f pvs/
kubectl apply -f sealed-secrets

echo "make sure to take the special key"
kubectl apply -f flux/