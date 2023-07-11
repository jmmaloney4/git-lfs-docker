FROM golang:1.20.6-alpine@sha256:e9590019f04a00029bb5ac512c3d3dfff0ec0e66418cfb5035e22313af891d81

RUN go install github.com/github/lfs-test-server@v0.4.0

ENV LFS_METADB /data/lfs.db
ENV LFS_CONTENTPATH /data/content/

CMD [ "lfs-test-server" ]