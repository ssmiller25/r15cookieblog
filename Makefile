currentepoch := $(shell date +%s)
latestepoch := $(shell docker image ls | grep r15cookieblog | grep -v latest | awk ' { print $$2; } ' | sort -n | tail -n 1)


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
