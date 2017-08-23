# Docker environment for the Udacity Data Analyst Nanodegree (DAND)

This is an environment that runs the Jupyter Notebook server and Anaconda package
installation within a Docker environment.

The main goal is to automate the installation process and enable the use of an
Anaconda installation without screwing up existing Python installations on the
same machine.

## Run the IPNB server within Docker

### Using make

Simply run `make` to build or update the Docker image and start the Jupyter
server within a Docker container.

### Manually

If you do not have `make` you can run the following steps manually to work with
Jupyter Notebooks. First, build the docker image (needs to be done just once):
```
cd docker && \
docker build -t udacity-conda3:latest . && \
cd -
```

Then run the server within Docker:
```
docker run --name udacity-ipnb-run-env -v ${UDACITY_WORKSPACE}:/udacity/ -w /udacity/lessons -p 8888:8888 --rm -ti udacity-conda3
```
