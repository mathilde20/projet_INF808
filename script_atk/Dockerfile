FROM golang:latest AS build-env

RUN go install github.com/OJ/gobuster/v3@latest

FROM debian:12

RUN apt-get update && apt-get install -y nmap hydra iputils-ping

COPY --from=build-env /go/bin/gobuster /bin

WORKDIR /scripts

COPY *.sh .
