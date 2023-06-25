REPO = evertongava
NAME = openjre
TAG = 11.0.19
IMAGE = $(REPO)/$(NAME):$(TAG)

build:
	docker build --no-cache -t $(IMAGE) .

push:
	docker push $(IMAGE)