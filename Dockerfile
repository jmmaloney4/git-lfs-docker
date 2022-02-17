FROM golang:1.17.7-alpine@sha256:c23027af83ff27f663d7983750a9a08f442adb2e7563250787b23ab3b6750d9e

RUN go install github.com/github/lfs-test-server@v0.4.0

ENV LFS_METADB /data/lfs.db
ENV LFS_CONTENTPATH /data/content/

CMD [ "lfs-test-server" ]