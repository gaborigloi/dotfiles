#!/bin/sh

# initialise opam
opam init --compiler=4.02.3 --auto-setup --yes
eval `opam config env`
echo OPAM setup has to be in .profile

opam remote add xs-opam git://github.com/xapi-project/xs-opam.git
opam install --yes depext
opam depext --yes xapi
opam install --yes xapi

opam install --yes utop
opam install --yes merlin
opam install --yes ocp-indent
opam install --yes ocp-browser

