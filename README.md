# dotfiles

This repository contains my config files for vim, neovim, tmux, the fish shell, and i3. This setup is focused on OCaml developemnt in neovim inside tmux, on Debian-based distros or CentOS.

## Setup

Clone this repository, then enter its root directory.
There is a `setup-X.sh` file for most components that configures it with the config files in this repo.

* to configure tmux: `ln -s $PWD/.tmux.conf ~/.tmux.conf`
* the fish shell: `bash setup-fish.sh`
* vim >= 8: `bash setup-vim.sh`
* neovim: `bash setup-vim.sh`
* Python and shell script linters for vim/neovim: `bash setup-linters.sh`
* OCaml and OPAM for XenServer development: `bash setup-opam.sh`
