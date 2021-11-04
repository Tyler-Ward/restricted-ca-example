#!/bin/bash

set -x

cd "$(dirname "$0")"

cd 1_ca_creation 
./createca.sh

cd ../2_stepca_setup
# many of the commands in this stage may require elevated permissions so it is easier to run in sudo
sudo ./setup_stepca.sh
