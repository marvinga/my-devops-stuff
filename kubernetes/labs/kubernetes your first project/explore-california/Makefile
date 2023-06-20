#!/usr/bin/env make
.PHONY: run_website stop_website install_kind create_kind_clusters install_kubectl

run_website:
	docker build -t explorecalifornia.com . && \
		docker run --rm --name explorecalifornia.com -p 5000:80 -d explorecalifornia.com 

stop_website:
	docker stop explorecalifornia.com

install_kind:
	curl --location --output ./kind https://github.com/kubernetes-sigs/kind/releases/download/v0.20.0/kind-darwin-amd64 && \
		kind --version 
 
 create_kind_cluster: install_kind install_kubectl create_docker_registry
	kind create --name explorecalifornia.com && \
		kubectl get nodes

install_kubectl:
	brew install kubectl

create_docker_registry:
	if docker ps | grep -q 'local-registry' ; \
	then echo "---> local-registry already exist; skipping." ; \
	else docker run --name local-registry -d --restart=always -p 5000:5000 registry:2; \
	fi




