FROM golang:1.19.0-alpine@sha256:0e78fc17d9b4428bc6b9c07aa49c819541a99cd0c0121c4de9c68feecfea825b

RUN go install github.com/github/lfs-test-server@v0.4.0

ENV LFS_METADB /data/lfs.db
ENV LFS_CONTENTPATH /data/content/

CMD [ "lfs-test-server" ]