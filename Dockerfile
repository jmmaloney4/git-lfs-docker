FROM golang:1.19.2-alpine@sha256:f3e683657ddf73726b5717c2ff80cdcd9e9efb7d81f77e4948fada9a10dc7257

RUN go install github.com/github/lfs-test-server@v0.4.0

ENV LFS_METADB /data/lfs.db
ENV LFS_CONTENTPATH /data/content/

CMD [ "lfs-test-server" ]