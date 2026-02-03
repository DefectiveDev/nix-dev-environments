#!/bin/sh
cd $(git rev-parse --show-toplevel)
find . -name "flake.nix" -execdir nix flake lock \;
git add .
