#!/bin/sh

set -eux

# https://wiki.archlinux.org/index.php/Fish
mkdir -p ~/.config/fish/functions/
ln -s $PWD/config.fish ~/.config/fish/
ln -s $PWD/fish_prompt.fish ~/.config/fish/functions/

echo 'exec fish' >> ~/.bashrc
fish -c fish_update_completions
fish abbr.fish
