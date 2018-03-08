#!/bin/bash

set -eux

sudo apt install flake8 pylint3 python3-pycodestyle || \
  sudo dnf install python3-pylint
sudo apt install shellcheck || \
  sudo dnf install ShellCheck
