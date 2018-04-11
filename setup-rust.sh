#!/bin/bash -e

set -uex

curl https://sh.rustup.rs -sSf | sh
source "$HOME/.cargo/env"
mkdir -p ~/.config/fish/completions
rustup completions fish > ~/.config/fish/completions/rustup.fish

cargo install cargo-update
sudo dnf install ripgrep || cargo install ripgrep
sudo dnf install exa || true
cargo install --git https://github.com/sharkdp/fd
rustup run nightly cargo install --git https://github.com/redox-os/ion/
cargo install tokei

if [ -z $NOX ]; then
  # from https://github.com/jwilm/alacritty
  cd ~/opt-src
  git clone https://github.com/jwilm/alacritty.git
  cd alacritty
  sudo apt-get install cmake libfreetype6-dev libfontconfig1-dev xclip
  cargo build --release
  cp target/release/alacritty ~/.local/bin/

  # from https://github.com/greshake/i3status-rust
  cd ~/opt-src
  git clone https://github.com/XYunknown/i3status-rust.git
  sudo apt install fonts-powerline
  sudo apt install fonts-font-awesome
  cd i3status-rust && cargo build --release
fi
