# Prerequisite

DOCKER_IMAGE_NAME="oshou/awesome-music-db"
BINARY_NAME=main

## 各環境別ビルドコマンド

.PHONY: container_build
build_local:
	cp .env.local .env
	docker build -t $(DOCKER_IMAGE_NAME) .

.PHONY: container_run
container_run:
	docker run -it --rm $(DOCKER_IMAGE_NAME)

.PHONY: deploy_hub
deploy_hub:
	make build_prd
	docker build -t $(DOCKER_IMAGE_NAME) .
	docker push $(DOCKER_IMAGE_NAME):latest
