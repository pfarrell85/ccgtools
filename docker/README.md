
Docker Tools and Resources
==========================

Docker resources:
https://www.digitalocean.com/community/tutorials/how-to-remove-docker-images-containers-and-volumes

### List Dangling Images

	$ docker images -f dangling=true

### Remove Dangling Images

	$ docker rmi $(docker images -f dangling=true -q)

### List Exited Containers

	$ docker ps -a -f status=exited -f status=created

### Remove Exited Containers

	$ docker rm $(docker ps -a -f status=exited -f status=created -q)