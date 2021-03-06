# Docker environment for the Udacity Data Analyst Nanodegree (DAND)

This is an environment that runs the Jupyter Notebook server and Anaconda package
installation within a Docker environment.

The project will create a new Docker image, download and install all the Anaconda
packages required to run the Udacity examples and quizzes and then start the
Jupyter Notebook server within a Docker container. The Notebook frontend can
be accessed as usual, by following the link printed to the terminal.

The main goal of this project is to simplify the installation process and enable
the use of an Anaconda installation without screwing up existing Python
installations on the same machine.


## Run the Jupyter Notebook server within Docker

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
docker run --name udacity-jupyter-run-env -v ${UDACITY_WORKSPACE}:/udacity/ -w /udacity/lessons -p 8888:8888 --rm -ti udacity-conda3
```
