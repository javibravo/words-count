SHELL:=/usr/bin/env bash -O extglob -O globstar -o pipefail

# Docker
DOCKER_IMAGE_NAME:=three-words-count

.PHONY: docker-build
docker-build:
	@echo '..building $(DOCKER_IMAGE_NAME) image..'
	docker build --rm -t $(DOCKER_IMAGE_NAME) .

.PHONY: docker-run
docker-run:
	@echo '..starting docker container..'
	docker run --interactive --tty --volume `pwd`:/tmp/ --volume ~/three-words-count/samples/ \
		$(DOCKER_IMAGE_NAME) bash || true
