FROM golang:1.19.3-alpine@sha256:8bd8a4b55b233ea77a81250f83637553ef9e3348c5a0cc3ce440c5d45bf7d51d

RUN go install github.com/github/lfs-test-server@v0.4.0

ENV LFS_METADB /data/lfs.db
ENV LFS_CONTENTPATH /data/content/

CMD [ "lfs-test-server" ]