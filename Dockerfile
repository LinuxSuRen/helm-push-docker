FROM alpine:3.12.1

RUN apk add curl
RUN curl -L https://github.com/chartmuseum/helm-push/releases/download/v0.9.0/helm-push_0.9.0_linux_amd64.tar.gz | tar xz

FROM alpine:3.12.1

COPY --from=0 /bin/helmpush /bin/helmpush
