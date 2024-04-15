FROM golang:latest AS build-env

RUN go install github.com/OJ/gobuster/v3@latest

FROM debian:12

RUN apt-get update && apt-get install -y nmap hydra iputils-ping wget

RUN wget https://github.com/brannondorsey/naive-hashcat/releases/download/data/rockyou.txt
RUN wget https://raw.githubusercontent.com/v0re/dirb/master/wordlists/common.txt

COPY --from=build-env /go/bin/gobuster /bin

RUN echo "admin" > username.txt

WORKDIR /scripts

COPY *.sh .

WORKDIR /
