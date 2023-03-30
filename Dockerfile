FROM golang:1.20.2-alpine@sha256:87734b78d26a52260f303cf1b40df45b0797f972bd0250e56937c42114bf472c

RUN go install github.com/github/lfs-test-server@v0.4.0

ENV LFS_METADB /data/lfs.db
ENV LFS_CONTENTPATH /data/content/

CMD [ "lfs-test-server" ]