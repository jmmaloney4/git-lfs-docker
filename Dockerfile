FROM golang:1.19.2-alpine@sha256:2baa528036c1916b23de8b304083c68fb298c5661203055f2b1063390e3cdddb

RUN go install github.com/github/lfs-test-server@v0.4.0

ENV LFS_METADB /data/lfs.db
ENV LFS_CONTENTPATH /data/content/

CMD [ "lfs-test-server" ]