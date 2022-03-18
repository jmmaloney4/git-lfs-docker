FROM golang:1.18.0-alpine@sha256:30a4acd6e557828f01574a74c17c586e91ce1437e9700d169e77569b0fff0a1b

RUN go install github.com/github/lfs-test-server@v0.4.0

ENV LFS_METADB /data/lfs.db
ENV LFS_CONTENTPATH /data/content/

CMD [ "lfs-test-server" ]