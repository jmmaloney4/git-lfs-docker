FROM golang:1.19.0-alpine@sha256:f734a85923ff49da7caf82940b422bf679ca9bdec38cc56f501a4745b557d150

RUN go install github.com/github/lfs-test-server@v0.4.0

ENV LFS_METADB /data/lfs.db
ENV LFS_CONTENTPATH /data/content/

CMD [ "lfs-test-server" ]