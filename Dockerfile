FROM golang:1.19.5-alpine@sha256:2381c1e5f8350a901597d633b2e517775eeac7a6682be39225a93b22cfd0f8bb

RUN go install github.com/github/lfs-test-server@v0.4.0

ENV LFS_METADB /data/lfs.db
ENV LFS_CONTENTPATH /data/content/

CMD [ "lfs-test-server" ]