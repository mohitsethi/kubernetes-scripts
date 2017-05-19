all: build

build:
	docker build --tag master.ac.ac:5000/fedora:24-demo .

push: build
	docker push master.ac.ac:5000/fedora:24-demo
