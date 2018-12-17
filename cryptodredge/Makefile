IMAGE ?= "sonm/cryptodredge:v0.14"

all: build push

build:
	docker build -t ${IMAGE} .

push:
	docker push ${IMAGE}
