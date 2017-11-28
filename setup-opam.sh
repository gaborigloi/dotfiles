#!/bin/sh

# initialise opam
opam init --compiler=4.04.2 --auto-setup --yes
eval `opam config env`
echo OPAM setup has to be in .profile

opam remote add xs-opam git://github.com/xapi-project/xs-opam.git
opam install --yes depext
opam depext --yes xapi utop merlin ocp-indent ocp-browser
opam install --yes xapi utop merlin ocp-indent ocp-browser

