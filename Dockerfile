FROM golang:1.20.3-alpine@sha256:08e9c086194875334d606765bd60aa064abd3c215abfbcf5737619110d48d114

RUN go install github.com/github/lfs-test-server@v0.4.0

ENV LFS_METADB /data/lfs.db
ENV LFS_CONTENTPATH /data/content/

CMD [ "lfs-test-server" ]