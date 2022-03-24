FROM golang:1.18.0-alpine@sha256:b64a34e943993228a0402595bdfec53a421efaf4aff38938d179e54cdd475a76

RUN go install github.com/github/lfs-test-server@v0.4.0

ENV LFS_METADB /data/lfs.db
ENV LFS_CONTENTPATH /data/content/

CMD [ "lfs-test-server" ]