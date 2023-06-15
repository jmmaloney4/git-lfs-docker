FROM golang:1.20.5-alpine@sha256:568be9586fcaa9f74fc3b670aff12ec2c1fecc17bccc0b05bd909015045f0f2b

RUN go install github.com/github/lfs-test-server@v0.4.0

ENV LFS_METADB /data/lfs.db
ENV LFS_CONTENTPATH /data/content/

CMD [ "lfs-test-server" ]