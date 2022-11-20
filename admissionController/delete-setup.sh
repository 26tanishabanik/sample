#!/bin/bash

# CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -ldflags="-w -s"
# kubectl delete deployment valpod
# kubectl delete service valpod
# kubectl delete validatingwebhookconfiguration.admissionregistration deployments.tanisha.banik
# docker build -t mutatedeploymentname:0.0.1 .
# docker push mutatedeploymentname:0.0.1
kubectl create -f manifests/secret.yaml
kubectl create -f manifests/deployment.yaml
kubectl create -f manifests/service.yaml
kubectl create -f manifests/mutate-webhook.yaml