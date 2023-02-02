FROM golang:1.20.0-alpine@sha256:30a02e0d312773089a592f1d920f4b8dc17fb8c5f6fcced013ce0e162d41b8f1

RUN go install github.com/github/lfs-test-server@v0.4.0

ENV LFS_METADB /data/lfs.db
ENV LFS_CONTENTPATH /data/content/

CMD [ "lfs-test-server" ]