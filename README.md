<img src="https://www.docker.com/sites/default/files/vertical_large.png" height="50px" width="auto">

## DOCKERFILE

### :sparkles: Getting started

Start with editing the `Dockerfile`, replacing the original repository link with the one of the fork you would like to use at [line 31](https://github.com/PFE1718/dockerfile/master/Dockerfile#L31).

Move to the root of the project folder and run the following command to build the new Docker image :

```bash
docker build mycroft:0.1 .
```

Then create a new container with your newly created image and start mycroft :

```bash
docker run -i -t mycroft-core:0.1 sudo ./start-mycroft.sh debug
```

### :postbox: Push your Docker image

> If you've not already done it before, you need to `export DOCKER_ID_USER="pfe1718"` before running any of the following commands

I would recommend to only build your own image and push it then to the [Docker Hub](https://hub.docker.com/) registry. To do so, build your image with another image name (eg. `mycroft-{your-name}`), and run the following command to find the image `id` :

```bash
docker image list
```

Pick up the id of the desired image and run :

```bash
docker tag {image_id} $DOCKER_ID_USER/{branch} && docker push $DOCKER_ID_USER/{branch}
```

Anyone will then be able to run the following command to start your image locally :

```bash
docker run -i -t pfe1718/{branch}:latest sudo ./start-mycroft.sh debug
```