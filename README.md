# docker-arm-build
Docker container with all dependencies to build the code for KITcar's ARM based microcontroller boards

The source is available at KITcar's Gitlab and a mirrored version at
[Github](https://github.com/KITcar-Team/docker-arm-build), the build docker
image is available at
[Dockerhub](https://hub.docker.com/r/kitcar/docker-arm-build/).


## Get Docker Image

Download the docker image with

```
docker pull kitcar/docker-arm-build
```


## Build Docker Image

Build the docker image with:

```
docker build -t  kitcar/docker-arm-build .
```


## Use the Docker Image to build kitcar-arm

Clone the kitcar/kitcar-bus-system repository somewhere
Then run a docker container from the image:

```
docker run -it --privileged -v $PATH_TO_KITCAR_BUS_SYSTEM:/kitcar kitcar/docker-arm-build
```

Inside the container, you can run unit tests with with:

```
cd Devices/ManualMode/test
python run_unit_test.py
```


## Update Docker Image

The Docker image will be updated after you push a new commit to a protected
branch at KITcar's Gitlab. The branch `master` is used for the tag `latest`,
other branches will create a Docker image tagged with the branch name.

Because some of our Gitlab Runners are low on hard drive memory, we should keep
an eye on the size of the Docker image.
