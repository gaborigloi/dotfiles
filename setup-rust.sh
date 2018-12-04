#!/bin/bash -e

set -uex

curl https://sh.rustup.rs -sSf | sh
source "$HOME/.cargo/env"
mkdir -p ~/.config/fish/completions
rustup completions fish > ~/.config/fish/completions/rustup.fish

cargo install cargo-update
