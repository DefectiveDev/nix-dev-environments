#!/bin/sh
cd $(git rev-parse --show-toplevel)
find . -name "flake.nix" -execdir nix flake lock \;
git add .
git commit -m 'update(flake.locks)'
git fetch origin
git rebase
git push --no-verify
exit 0
