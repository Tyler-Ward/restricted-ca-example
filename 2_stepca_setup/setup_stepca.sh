#!/bin/bash

set -x


mkdir -p data
chown 1000:1000 data
cp ../1_ca_creation/rootCA.key ./data
cp ../1_ca_creation/rootCA.crt ./data

echo "To work with the other files in this example set the following variables"
echo "DNS Name-  acme.lan"
echo "Port-  :8443"

docker run -it --rm -v `pwd`/data:/home/step smallstep/step-ca step ca init --root=rootCA.crt --key=rootCA.key  --deployment-type=standalone

echo "Enter the password from above:"
read ca_password

echo "${ca_password}" > data/secrets/password
chown 1000:1000 data/secrets/password
docker run -it --rm -v `pwd`/data:/home/step smallstep/step-ca chmod 600 secrets/password


docker run -it --rm -v `pwd`/data:/home/step smallstep/step-ca step ca provisioner add acme --type ACME

docker-compose up -d

sleep 2
echo "Checking Step CA status should print {\"status\":\"ok\"} below if all is working"
wget --no-check-certificate --quiet -O- https://localhost:8449/health
