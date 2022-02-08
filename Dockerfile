FROM golang:1.17.6-alpine@sha256:301609ebecc0ec4cd3174294220a4d9c92aab9015b3a2958297d7663aac627a1

RUN go install github.com/github/lfs-test-server@v0.4.0

CMD [ "lfs-test-server" ]