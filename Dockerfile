FROM golang:1.18.1-alpine@sha256:1a80c4c090ad01efb2952b0ba2a8cb5aed157eb10963c8c088e443911ac48a88

RUN go install github.com/github/lfs-test-server@v0.4.0

ENV LFS_METADB /data/lfs.db
ENV LFS_CONTENTPATH /data/content/

CMD [ "lfs-test-server" ]