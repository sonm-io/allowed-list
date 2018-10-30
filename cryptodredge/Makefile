IMAGE ?= "sonm/cryptodredge:v0.9.4"

all: build push

build:
	docker build -t ${IMAGE} .

push:
	docker push ${IMAGE}
