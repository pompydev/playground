{ pkgs, ... }:

{
  packages = with pkgs; [
    just
    hyperfine

    ruff
    yasm
    nixfmt-rfc-style
  ];

  # https://github.com/cachix/devenv/blob/main/src/modules/languages/c.nix
  # https://devenv.sh/supported-languages/c
  languages.c.enable = true;

  # https://github.com/cachix/devenv/blob/main/src/modules/languages/cplusplus.nix
  # https://devenv.sh/supported-languages/cplusplus
  languages.cplusplus.enable = true;

  # https://github.com/cachix/devenv/blob/main/src/modules/languages/go.nix
  # https://devenv.sh/supported-languages/go
  languages.go.enable = true;

  # https://github.com/cachix/devenv/blob/main/src/modules/languages/javascript.nix
  # https://devenv.sh/supported-languages/javascript
  languages.javascript = {
    enable = true;
    directory = "./js";

    pnpm.enable = true;
    bun.enable = true;
  };

  # https://devenv.sh/supported-languages/typescript

  # https://github.com/cachix/devenv/blob/main/src/modules/languages/nix.nix
  # https://devenv.sh/supported-languages/nix
  languages.nix = {
    enable = true;
    lsp.package = pkgs.nixd;
  };

  # https://github.com/cachix/devenv/blob/main/src/modules/languages/php.nix
  # https://devenv.sh/supported-languages/php
  languages.php.enable = true;

  # https://github.com/cachix/devenv/blob/main/src/modules/languages/python.nix
  # https://devenv.sh/supported-languages/python
  languages.python = {
    enable = true;
    directory = "./py";

    venv.enable = true;
  };

  # https://github.com/cachix/devenv/blob/main/src/modules/languages/rust.nix
  # https://devenv.sh/supported-languages/rust
  languages.rust.enable = true;

  # https://github.com/cachix/devenv/blob/main/src/modules/languages/texlive.nix
  # https://devenv.sh/supported-languages/texlive
  languages.texlive = {
    enable = true;

    # texlive is broken rn
    # https://github.com/cachix/devenv/issues/1521
    # https://github.com/Glavin001/atom-beautify/issues/1792#issuecomment-327071117
    # base = pkgs.texliveFull;
  };

  # https://github.com/cachix/devenv/blob/main/src/modules/languages/zig.nix
  # https://devenv.sh/supported-languages/zig
  languages.zig.enable = true;
}
