#!/bin/bash -e

set -uex

curl https://sh.rustup.rs -sSf | sh
source "$HOME/.cargo/env"

cargo install cargo-update
cargo install ripgrep
cargo install --git https://github.com/sharkdp/fd
cargo install ion-shell

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
