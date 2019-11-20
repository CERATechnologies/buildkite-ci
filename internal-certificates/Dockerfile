FROM golang:alpine

RUN apk update && apk add git python py-pip bash
RUN pip install awscli
RUN go get github.com/jsha/minica

ARG AWS_ACCESS_KEY_ID
ARG AWS_SECRET_ACCESS_KEY
ARG AWS_REGION
ARG AWS_SESSION_TOKEN

RUN mkdir -p /certificates /root-certificate
RUN aws s3 sync s3://oculo-services-buildkite-secrets/root-mini-ca/ /root-certificate/

WORKDIR /certificates
CMD ["minica"]
