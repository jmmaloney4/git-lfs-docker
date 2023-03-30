FROM golang:1.20.2-alpine@sha256:96a0a98f4c647f291d56f552bc19a7d0aa1049fce9578bdbed98d909fa6e9121

RUN go install github.com/github/lfs-test-server@v0.4.0

ENV LFS_METADB /data/lfs.db
ENV LFS_CONTENTPATH /data/content/

CMD [ "lfs-test-server" ]