FROM golang:1.18.0-alpine@sha256:3afd220509acf9866e91932a3a41bf341b8bada82107ef3ecce3422826b98064

RUN go install github.com/github/lfs-test-server@v0.4.0

ENV LFS_METADB /data/lfs.db
ENV LFS_CONTENTPATH /data/content/

CMD [ "lfs-test-server" ]