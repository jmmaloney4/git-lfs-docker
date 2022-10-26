FROM golang:1.19.2-alpine@sha256:845f16d6c1c1501505a9f35978494bcd77a03f4f0cfeef56e3d8788325bea4a3

RUN go install github.com/github/lfs-test-server@v0.4.0

ENV LFS_METADB /data/lfs.db
ENV LFS_CONTENTPATH /data/content/

CMD [ "lfs-test-server" ]