FROM golang:1.3

RUN mkdir -p src/github.com/syncthing \
    && cd src/github.com/syncthing \
    && git clone https://github.com/syncthing/syncthing \
    && cd syncthing \
    && go run build.go

VOLUME ["/Sync"]

EXPOSE 8080 22000

ENTRYPOINT ["/go/src/github.com/syncthing/syncthing/bin/syncthing"]
