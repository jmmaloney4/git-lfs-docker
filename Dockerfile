FROM golang:1.18.0-alpine@sha256:6fd04df1b7ba6253a09b4bd3f37cc1fb69903a60209ef959485328b1c2902327

RUN go install github.com/github/lfs-test-server@v0.4.0

ENV LFS_METADB /data/lfs.db
ENV LFS_CONTENTPATH /data/content/

CMD [ "lfs-test-server" ]