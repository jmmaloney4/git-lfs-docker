FROM golang:1.18.2-alpine@sha256:4795c5d21f01e0777707ada02408debe77fe31848be97cf9fa8a1462da78d949

RUN go install github.com/github/lfs-test-server@v0.4.0

ENV LFS_METADB /data/lfs.db
ENV LFS_CONTENTPATH /data/content/

CMD [ "lfs-test-server" ]