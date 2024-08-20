#!/bin/zsh

exec 2>&1

# Forcing to xterm-256color so I can limit line length
export TERM=xterm-256color
tput rmam

IFS="" read -r
nix_develop_args=(${(Q)${(z)REPLY}})

printf '%s '  "Executing: nix develop" "$nix_develop_args[@]"
echo

exec nix develop "$nix_develop_args[@]"
