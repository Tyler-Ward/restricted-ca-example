#!/bin/bash

set -x

touch acme.json
chmod 600 acme.json

cp ../1_ca_creation/rootCA.crt ./

sudo docker-compse up -d
