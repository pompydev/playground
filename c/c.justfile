@build-c:
    clang ./c/.c -o ./c/a

@run-c: build-c
    ./c/a < ./input.txt

@bench-c: build-c
    hyperfine './c/a < ./input.txt'
