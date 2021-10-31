#!/bin/sh

set -x

openssl genrsa -out rootCA.key 4069
openssl req -x509 -new -nodes -key rootCA.key -sha512 -days 3650 -out rootCA.crt -config ca.conf
openssl x509 -text -in rootCA.crt
