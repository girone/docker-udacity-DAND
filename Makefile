UDACITY_HOME ?= $(shell pwd)/..

all: image run-jupyter-server

image:
	 docker build -t udacity-conda3:latest .

run-jupyter-server:
	 docker run --name udacity-ipnb-run-env -v ${UDACITY_HOME}:/udacity/ -w /udacity/ -p 8888:8888 --rm -ti udacity-conda3
