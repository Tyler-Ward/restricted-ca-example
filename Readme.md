Example scripts and config files for creating a limited CA
==========================================================

This repo contains examples to go along with the limited CA blogpost.

The blogpost can be found at either of the following blogs:
* [Tyler Ward](https://www.scorpia.co.uk/2021/11/27/creating-constrained-certificate-authorities/)
* [Mohit Gupta](https://skybound.link/2021/11/creating-constrained-certificate-authorities/)

Example requirements
--------------------

This example has the following prerequistes if you want to run without modifying any of the settings.

* The dns entries for acme.lan and traefik.lan should point the machine that will run this example.
* Ports 80,443,and 8443 are avaliable
* Docker and docker-compose are installed
* The ability to run commands under sudo
