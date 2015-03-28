docker-wsusoffline
==================


Example running the container:

```
docker run -it -e DOWNLOAD=y --name=wsusoffline pandrew/wsusoffline
```

Example using it with samba container:
```
docker run --rm -v $(which docker):/docker -v /var/run/docker.sock:/docker.sock -e DOCKER_HOST --net=host  svendowideit/samba wsusoffline
```
