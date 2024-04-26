# https://www.devdungeon.com/content/hello-world-nasm-assembler

@build-asm:
    yasm -f elf64 asm/.asm -o asm/.o
    ld asm/.o -o asm/a

@run-asm: build-asm
    ./asm/a < ./input.txt

@bench-asm: build-asm
    hyperfine './asm/a < ./input.txt'
