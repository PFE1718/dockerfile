<img src="https://www.docker.com/sites/default/files/vertical_large.png" height="50px" width="auto">

## DOCKERFILE

### :zap: Introduction

During the development period, you would like to be able to link you local skills to mycroft. To do so, you only need to create a folder at the root of the project called `skills`, and to add all the required skills to it. This folder is actually linked to `/opt/mycroft/skills` and will be filled with all the available skills on mycroft's startup. However your skills will not be erased and available when you will start the service.

### :sparkles: Getting started

Move to the root of the project folder and run the following command to build the new Docker image :

```bash
docker-compose build
```

You can then run the service :

```bash
docker-compose run mycroft sudo ./start-mycroft.sh debug
```

### :hammer: Debugging

If you need to dynamically edit the code, the best way to proceed would be the following :

First, run :

```bash
docker-compose run mycroft bash
```

Then, you can edit your files on the host and start mycroft when need with :

```bash
sudo ./start-mycroft.sh debug
```

Leave it with `ctrl+c`.

Replay.

### :bulb: Reminder

Remind to pair your device asking `pair my device` to mycroft and adding the token to your [Mycroft profile](https://home.mycroft.ai/#/device/).
