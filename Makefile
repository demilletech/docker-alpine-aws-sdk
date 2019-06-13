all: build push
test: build pushtest

build:
	docker build -t demilletech/alpine-aws-sdk:local . 

push:
	docker tag demilletech/alpine-aws-sdk:local demilletech/alpine-aws-sdk:latest
	docker push demilletech/alpine-aws-sdk:latest

pushtest:
	docker tag demilletech/alpine-aws-sdk:local demilletech/alpine-aws-sdk:test
	docker push demilletech/alpine-aws-sdk:latest
