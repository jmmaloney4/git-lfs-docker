FROM golang:1.19.0-alpine@sha256:7abc53c7b712049462918f8755d74739bf43bbf446a68789714ec0de2a506f18

RUN go install github.com/github/lfs-test-server@v0.4.0

ENV LFS_METADB /data/lfs.db
ENV LFS_CONTENTPATH /data/content/

CMD [ "lfs-test-server" ]