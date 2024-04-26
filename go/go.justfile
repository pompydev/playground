@build-go:
    cd go && go build -o a

@run-go: build-go
    ./go/a < ./input.txt

@bench-go: build-go
    hyperfine './go/a < ./input.txt'
