@run-py:
    python py/.py < ./input.txt

@bench-py:
    hyperfine 'python py/.py < ./input.txt'
