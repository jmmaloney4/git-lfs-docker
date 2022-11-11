FROM golang:1.19.3-alpine@sha256:5dca1a586da5bc601c77a50d489d7fa752fa3fdd2fb22fd3f8f5b4b2f77181d6

RUN go install github.com/github/lfs-test-server@v0.4.0

ENV LFS_METADB /data/lfs.db
ENV LFS_CONTENTPATH /data/content/

CMD [ "lfs-test-server" ]