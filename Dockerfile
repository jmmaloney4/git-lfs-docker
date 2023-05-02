FROM golang:1.20.4-alpine@sha256:913de96707b0460bcfdfe422796bb6e559fc300f6c53286777805a9a3010a5ea

RUN go install github.com/github/lfs-test-server@v0.4.0

ENV LFS_METADB /data/lfs.db
ENV LFS_CONTENTPATH /data/content/

CMD [ "lfs-test-server" ]