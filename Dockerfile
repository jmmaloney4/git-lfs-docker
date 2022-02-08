FROM golang:1.17.6-alpine@sha256:519c827ec22e5cf7417c9ff063ec840a446cdd30681700a16cf42eb43823e27c

RUN go install github.com/github/lfs-test-server@v0.4.0

CMD [ "lfs-test-server" ]