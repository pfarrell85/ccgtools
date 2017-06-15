
Docker Tools and Resources
==========================

Docker resources:
https://www.digitalocean.com/community/tutorials/how-to-remove-docker-images-containers-and-volumes

### List Dangling Images

	$ docker images -f dangling=true

### Remove Dangling Images

You will often end up with a lot of dangling images in docker.  Docker images consist of multiple layers and dangling images are layers that have no relationship to any tagged images. They no longer serve a purpose and consume disk space.  Sometimes you will not be able to clear the dangling images though until you stop (or remove, not sure yet) all of the exited containers.

	$ docker rmi $(docker images -f dangling=true -q)

### List Exited Containers

	$ docker ps -a -f status=exited -f status=created

### Remove Exited Containers

	$ docker rm $(docker ps -a -f status=exited -f status=created -q)

### If you need to go inside a docker container

	$ docker exec -it <container id> /bin/bash
