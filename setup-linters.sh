#!/bin/bash

set -eux

apt install flake8 pylint3 python3-pycodestyle || \
  sudo apt install flake8 pylint3 python3-pycodestyle || \
  sudo dnf install python3-pylint
apt install shellcheck || \
  sudo apt install shellcheck || \
  sudo dnf install ShellCheck
