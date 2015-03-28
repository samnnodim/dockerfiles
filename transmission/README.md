docker-transmission
===================

Example running container:
```
docker run -d --name=transmission --net=host pandrew/transmission
```

Combining it with samba:
```
docker run --rm -v $(which docker):/docker -v /var/run/docker.sock:/docker.sock --net=host svendowideit/samba transmission
```
