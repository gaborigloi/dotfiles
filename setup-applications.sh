#!/bin/bash

set -eux

for f in $PWD/applications/*; do
	ln -s $f ~/.local/share/applications
done
