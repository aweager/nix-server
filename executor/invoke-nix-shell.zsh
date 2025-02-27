#!/bin/zsh

exec 2>&1

IFS="" read -r
nix_shell_args=(${(Q)${(z)REPLY}})

printf '%s '  "Executing: nix-shell" "$nix_shell_args[@]"
echo

nix-shell "$nix_shell_args[@]"
