FROM golang:1.18.4-alpine@sha256:af22f4a8328063faee4b28da1b1bbccccb6f3ccaa0a07006f9d3aa2da43d18c2

RUN go install github.com/github/lfs-test-server@v0.4.0

ENV LFS_METADB /data/lfs.db
ENV LFS_CONTENTPATH /data/content/

CMD [ "lfs-test-server" ]