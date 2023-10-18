#!/bin/bash 

# deploy

kubectl create -f 00-liferay-configs.yaml

./01-create-configmaps.sh

kubectl create -f 02-liferay-mysql.yaml
kubectl create -f 03-liferay-search.yaml
kubectl create -f 04-liferay-portal.yaml
# kubectl create -f 99-liferay-nginx.yaml
kubectl create -f 05-liferay-ingress.yaml


