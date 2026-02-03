#!/bin/sh
cd $(git rev-parse --show-toplevel)
find . -name "flake.nix" -execdir nix flake lock \;
git add .
git commit -m  --no-verify 'update(flake.locks)'
exit 0
