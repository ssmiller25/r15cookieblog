currentepoch := $(shell date +%s)
latestepoch := $(shell docker image ls | grep r15cookieblog | grep -v latest | awk ' { print $$2; } ' | sort -n | tail -n 1)

DOCKER_REPO="ssmiller25"

CIVO_CMD="civo"
# For Dockerize CIVO
#CIVO_CMD=docker run -it --rm -v /home/steve/.civo.json:/.civo.json civo/cli:latest

CLUSTER_NAME=blog
KUBECONFIG=kubeconfig.$(CLUSTER_NAME)
KUBECTL=kubectl --kubeconfig=$(KUBECONFIG)


.PHONY: build
build: 
	@docker build . -t ssmiller25/r15cookieblog:${currentepoch}
	@docker tag ssmiller25/r15cookieblog:${currentepoch} ssmiller25/r15cookieblog:latest

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
	@docker push ssmiller25/r15cookieblog:$(latestepoch)
	@docker push ssmiller25/r15cookieblog:latest


.PHONY: civo-up
civo-up: $(KUBECONFIG)

$(KUBECONFIG):
	@echo "Creating $(CLUSTER_NAME)"
	@$(CIVO_CMD) k3s list | grep -q $(CLUSTER_NAME) || $(CIVO_CMD) k3s create $(CLUSTER_NAME) -n 3 --size g2.small --wait
	@$(CIVO_CMD) k3s config $(CLUSTER_NAME) > $(KUBECONFIG)

.PHONY: civo-down
civo-down:
	@echo "Removing $(CLUSTER_NAME)"
	@$(CIVO_CMD) k3s remove $(CLUSTER_NAME)
	@rm $(KUBECONFIG)

.PHONY: civo-deploy
civo-deploy: $(KUBECONFIG)
	@$(KUBECTL) apply -k ./

civo-env: $(KUBECONFIG)
	export KUBECONFIG=$(KUBECONFIG)
