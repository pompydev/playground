@run-js:
    node ./js/.js < ./input.txt

@bench-js:
    hyperfine 'node ./js/.js < ./input.txt'
