#!/bin/sh

set -eux

# https://wiki.archlinux.org/index.php/Fish
mkdir -p ~/.config/fish/functions/
ln -s $PWD/fish/config.fish ~/.config/fish/
ln -s $PWD/fish/fish_prompt.fish ~/.config/fish/functions/

fish -c fish_update_completions
fish fish/abbr.fish
