docker-transmission
===================

### Deprecating in favor of jezz/transmission
It is smaller and uses good default parameters to entrypoint which we can change.

Example running container:
```
docker run -d --name=transmission --net=host pandrew/transmission
```

Combining it with samba:
```
docker run --rm -v $(which docker):/docker -v /var/run/docker.sock:/docker.sock --net=host svendowideit/samba transmission
```
