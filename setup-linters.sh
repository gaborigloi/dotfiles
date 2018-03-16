#!/bin/bash

set -eux

sudo apt install flake8 pylint3 python3-pycodestyle shellcheck || \
  sudo dnf install python3-pylint ShellCheck || \
  sudo yum install pylint python34-pylint ShellCheck
