FROM golang:1.19.3-alpine@sha256:d171aa333fb386089206252503bc6ab545072670e0286e3d1bbc644362825c6e

RUN go install github.com/github/lfs-test-server@v0.4.0

ENV LFS_METADB /data/lfs.db
ENV LFS_CONTENTPATH /data/content/

CMD [ "lfs-test-server" ]