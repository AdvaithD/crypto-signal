DOCKER_REPO_NAME ?=
DOCKER_CONTAINER_NAME ?= crypto-signal
DOCKER_IMAGE_NAME ?= ${DOCKER_REPO_NAME}${DOCKER_CONTAINER_NAME}
BUILD_NUMBER ?= 0

build:
	docker build -t ${DOCKER_IMAGE_NAME} .
	docker tag ${DOCKER_IMAGE_NAME} ${DOCKER_IMAGE_NAME}:${BUILD_NUMBER}

push:
	docker push ${DOCKER_IMAGE_NAME}

run: 
	docker run -it --rm ${DOCKER_IMAGE_NAME}