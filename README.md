# Playground

This is [developomp](https://github.com/developomp)'s vscode-based coding playground.

The playground is used to...

- quickly test and benchmark snippets of code
- solve algorithm problems

## Setting up

Setup the following:

- shell (only if you're a Windows user. Get [Git bash](https://git-scm.com/downloads) / [GitHub Desktop](https://desktop.github.com) / [Cygwin](https://cygwin.com/install.html) / ... )
- [just](https://github.com/casey/just)
- [hyperfine](https://github.com/sharkdp/hyperfine)
- [python](https://python.org)
- [node](https://nodejs.org)
- [rust](https://rust-lang.org) (recommend using [rustup](https://github.com/rust-lang/rustup))
- [go](https://go.dev)
- [clang](https://clang.llvm.org)
- [GCC](https://gcc.gnu.org)
- [yasm](https://yasm.tortall.net)
- [texlive](https://tug.org/texlive)

You can check other dev tools I use and more over [here](https://github.com/developomp/pompup).

## Usage

Simply call just recipes using the `just` command runner CLI.

Examples:

```bash
just run-go # automatically build go code before running it and pass arguments from input.txt
```

```bash
just bench-asm # automatically build and benchmark program from x86_64 assembly using yasm and hyperfine
```
