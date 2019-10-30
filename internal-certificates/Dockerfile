FROM golang:alpine

RUN apk update && apk add git python py-pip bash
RUN pip install awscli
RUN go get github.com/jsha/minica

COPY fetch-root-cert.sh /root/

RUN mkdir /certificates
WORKDIR /certificates
CMD ["minica"]
