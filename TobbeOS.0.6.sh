#!/usr/bin/env sh

rm -rf ~/Script && git clone https://gitlab.com/TobbeBob123/Script.git ~/Script && \
rm -rf ~/Bakgrunner && git clone https://gitlab.com/TobbeBob123/Bakgrunner.git ~/Bakgrunner && \
rm -rf ~/.xmonad && git clone https://gitlab.com/TobbeBob123/Xmonad.git ~/.xmonad && \
xmonad --recompile; xmonad --restart
