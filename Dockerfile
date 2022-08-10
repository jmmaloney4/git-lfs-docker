FROM golang:1.19.0-alpine@sha256:0eb08c89ab1b0c638a9fe2780f7ae3ab18f6ecda2c76b908e09eb8073912045d

RUN go install github.com/github/lfs-test-server@v0.4.0

ENV LFS_METADB /data/lfs.db
ENV LFS_CONTENTPATH /data/content/

CMD [ "lfs-test-server" ]