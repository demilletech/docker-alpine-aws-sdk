FROM python:alpine

RUN apk add --upgrade git zip unzip

RUN pip install awscli
