git_hash = $(shell git rev-parse --short -q HEAD)
version := 0.9.0
release_date := $(shell date +%Y-%m-%d)
alpine_version := d6de6e6a9c2145e130764454005e254c91bd63657a0c0a03e8ba4d737a754a75  # alpine 3.13.1
nginx_version := a92e3a59132cf7731f39e1feeaf95195ca95e5845f5c97eed259ae2b99e104f2  # nginx 1.19.6

DOCKER_REPO=quay.io/ssmiller25

CIVO_CMD="civo"
# For Dockerize CIVO
#CIVO_CMD=docker run -it --rm -v /home/steve/.civo.json:/.civo.json civo/cli:latest

CLUSTER_NAME=blog
CIVO_SIZE=g2.small
KUBECONFIG=kubeconfig.$(CLUSTER_NAME)
KUBECTL=kubectl --kubeconfig=$(KUBECONFIG)


.PHONY: build
build: 
	@docker build . -t ssmiller25/r15cookieblog:${git_hash} \
		--build-arg GIT_HASH=${git_hash} \
		--build-arg VERSION=${version} \
		--build-arg RELEASE_DATE=${release_date} \
		--build-arg ALPINE_VERSION=${alpine_version} \
		--build-arg NGINX_VERSION=${nginx_version}
	@docker tag ssmiller25/r15cookieblog:${git_hash} ssmiller25/r15cookieblog:latest

.PHONY: run
run:
	@docker run -d --rm -p 8080:80 --name r15cookieblog ssmiller25/r15cookieblog:latest 
	@echo "Local running.  Go to http://localhost:8080/ to view"

.PHONY: stop
stop:
	@echo "Stopping r15cookieblog - should shelf-cleanup"
	@docker stop r15cookieblog

.PHONY: push
push:
	@docker push ssmiller25/r15cookieblog:$(git_hash)
	@docker push ssmiller25/r15cookieblog:latest

# Pull and cache dependent images
.PHONY: cache-upstream
cache-upstream:
	docker pull alpine:${alpine_version} 
	docker pull nginx:${nginx_version}
	docker tag alpine:${alpine_version} $(DOCKER_REPO)/alpine:${alpine_version}
	docker tag nginx:${nginx_version} $(DOCKER_REPO)/nginx:${nginx_version}
	docker push $(DOCKER_REPO)/alpine:${alpine_version} 
	docker push $(DOCKER_REPO)/nginx:${nginx_version}


.PHONY: civo-up
civo-up: $(KUBECONFIG)

$(KUBECONFIG):
	@echo "Creating $(CLUSTER_NAME)"
	@$(CIVO_CMD) k3s list | grep -q $(CLUSTER_NAME) || $(CIVO_CMD) k3s create $(CLUSTER_NAME) -n 1 --size $(CIVO_SIZE) --wait
	@$(CIVO_CMD) k3s config $(CLUSTER_NAME) > $(KUBECONFIG)

.PHONY: civo-down
civo-down:
	@echo "Removing $(CLUSTER_NAME)"
	@$(CIVO_CMD) k3s remove $(CLUSTER_NAME) || true
	@rm $(KUBECONFIG)

.PHONY: civo-deploy
civo-deploy: $(KUBECONFIG)
	@$(KUBECTL) apply -k ./

civo-env: $(KUBECONFIG)
	export KUBECONFIG=$(KUBECONFIG)
