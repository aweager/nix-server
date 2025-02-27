0="${ZERO:-${${0:#$ZSH_ARGZERO}:-${(%):-%N}}}"
0="${${(M)0:#/*}:-$PWD/$0}"

if [[ $PMSPEC != *f* ]]; then
    fpath+=("${0:h}/functions")
fi

if [[ $PMSPEC != *b* ]]; then
    path+=("${0:h}/bin")
    export PATH
fi

if [[ -n "$NIX_SERVER_FORWARDING_PATH" ]]; then
    path=("$NIX_SERVER_FORWARDING_PATH" "$path[@]")
    export PATH
fi

autoload -Uz in-nix load-nix unload-nix add-nix-forward reload-nix
