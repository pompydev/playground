@build-cpp:
    g++ ./cpp/a.cpp -o ./cpp/a

@run-cpp: build-cpp
    ./cpp/a < ./input.txt

@bench-cpp: build-cpp
    hyperfine './cpp/a < ./input.txt'