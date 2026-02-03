#!/bin/sh
cd $(git rev-parse --show-toplevel)
find . -name "flake.nix" -execdir nix flake lock \;
find . -name "flake.lock" -execdir git add flake.lock \;
git commit -m  --no-verify 'update(flake.locks)'
exit 0
