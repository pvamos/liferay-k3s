#!/bin/bash 

# tear down

kubectl delete -f 05-liferay-ingress.yaml
# kubectl delete -f 99-liferay-nginx.yaml
kubectl delete -f 04-liferay-portal.yaml
kubectl delete -f 03-liferay-search.yaml
kubectl delete -f 02-liferay-mysql.yaml

kubectl delete configmap -n liferay liferay-portal-config
kubectl delete configmap -n liferay liferay-search-config
kubectl delete configmap -n liferay liferay-nginx-config

kubectl delete -f 00-liferay-configs.yaml
