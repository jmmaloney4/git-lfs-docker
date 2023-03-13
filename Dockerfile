FROM golang:1.20.2-alpine@sha256:1db127655b32aa559e32ed3754ed2ea735204d967a433e4b605aed1dd44c5084

RUN go install github.com/github/lfs-test-server@v0.4.0

ENV LFS_METADB /data/lfs.db
ENV LFS_CONTENTPATH /data/content/

CMD [ "lfs-test-server" ]