#!/bin/bash 

# Storing config files in configMaps
#
# Liferay Portal configuration file:
#   portal-ext.properties
#
# Elasticsearch Connector OSGi configuration file:
#   com.liferay.portal.search.elasticsearch7.configuration.ElasticsearchConfiguration.config
#
# Nginx config file:
#   nginx.conf

kubectl create configmap -n liferay liferay-portal-config --from-file config-files/portal-ext.properties
kubectl create configmap -n liferay liferay-search-config --from-file config-files/com.liferay.portal.search.elasticsearch7.configuration.ElasticsearchConfiguration.config
kubectl create configmap -n liferay liferay-nginx-config --from-file config-files/nginx.conf

kubectl label configmap -n liferay liferay-portal-config app=liferay
kubectl label configmap -n liferay liferay-portal-config tier=portal
kubectl label configmap -n liferay liferay-search-config app=liferay
kubectl label configmap -n liferay liferay-search-config tier=search
kubectl label configmap -n liferay liferay-nginx-config app=liferay
kubectl label configmap -n liferay liferay-nginx-config tier=mysql

