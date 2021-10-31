#!/bin/bash

set -x

cd "$(dirname "$0")"

cd 1_ca_creation 
./createca.sh
