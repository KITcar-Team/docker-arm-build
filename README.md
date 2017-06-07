# docker-arm-build
Docker image with all dependencies to build the kitcar-bus-system repository

## Build Docker Image
Build the docker image with:
```
docker build -t  git.kitcar-team.de:4567/kitcar/docker-arm-build .
```

## Use the Docker Image to build kitcar-arm
Clone the kitcar/kitcar-bus-system repository somewhere
Then run a docker container from the image:
```
docker run -it --privileged -v $PATH_TO_KITCAR_ROS:/kitcar git.kitcar-team.de:4567/kitcar/docker-arm-build
```
Inside the container, you can run unit tests with with:
```
cd Devices/ManualMode/test
python run_unit_test.py
```

## Push Docker Image
After the Image has been updated you can push the docker image to the GitLab Container Registry with
```
 docker push git.kitcar-team.de:4567/kitcar/docker-arm-build
```
