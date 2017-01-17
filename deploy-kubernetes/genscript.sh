#!/bin/sh

set -e # fail fast
set -x # print commands
ls
echo "$KUBE_CA" | base64 -d > repository/deploy-kubernetes/ca-minikube
echo "$KUBE_KEY" | base64 -d > repository/deploy-kubernetes/client-key
echo "$KUBE_CERT" | base64 -d > repository/deploy-kubernetes/client-cert
ls

kubectl --server=https://192.168.99.100:8443 --namespace=default --certificate-authority=$CA_PATH --client-key=$KEY_PATH --client-certificate=$CERT_PATH" create -f repository/svc.yml


