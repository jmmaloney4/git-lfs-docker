FROM golang:1.18.0-alpine@sha256:65654d6dc635238af4793bac7b8cc5e04f95c8a935a026b3322daa60733b3e19

RUN go install github.com/github/lfs-test-server@v0.4.0

ENV LFS_METADB /data/lfs.db
ENV LFS_CONTENTPATH /data/content/

CMD [ "lfs-test-server" ]