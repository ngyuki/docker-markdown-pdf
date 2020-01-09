
all: build

.PHONY: build
build:
	docker build . -t ngyuki/markdown-pdf

.PHONY: push
push:
	docker push ngyuki/markdown-pdf
