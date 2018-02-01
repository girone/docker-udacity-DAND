UDACITY_HOME ?= $(shell pwd)/..

all: image run-jupyter-server

image:
	docker build -t udacity-conda3:latest .

run-jupyter-server:
	docker run --name udacity-jupyter-run-env -v ${UDACITY_HOME}:/udacity/ -w /udacity/ -p 8888:8888 --rm -ti udacity-conda3

RStudio:
	docker run --name r-studio -v ${UDACITY_HOME}:/udacity/ -w /udacity/ --rm -ti udacity-r
