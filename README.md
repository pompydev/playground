# Playground

This is my coding playground for...

- quickly testing and benchmarking snippets of code
- solving algorithm problems
- playing with new tech without having to create and configure a new project

## Setting up

- Install the following:
  - [devenv](https://devenv.sh/getting-started)
  - [direnv](https://devenv.sh/automatic-shell-activation)

## Usage

Run [just](https://github.com/casey/just) recipes:

```bash
just run-go # automatically build go code before running it and pass arguments from input.txt
```

```bash
just bench-asm # automatically build and benchmark program from x86_64 assembly using yasm and hyperfine
```
