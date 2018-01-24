#!/bin/bash -e
if [ "$#" == "1" ]; then
    TAG=$1
else
    TAG=latest
fi

rm -f root/bin/healthcheckapp
GOOS=linux GOARCH=amd64 go build -o root/bin/healthcheckapp ../main.go

docker build -t healthcheckapp:${TAG} .
