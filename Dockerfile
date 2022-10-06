FROM golang:1.19.2-alpine@sha256:9d3bd0937054ed71c04839c909aec4736b1a83a96010826cfeed4abed12acf59

RUN go install github.com/github/lfs-test-server@v0.4.0

ENV LFS_METADB /data/lfs.db
ENV LFS_CONTENTPATH /data/content/

CMD [ "lfs-test-server" ]