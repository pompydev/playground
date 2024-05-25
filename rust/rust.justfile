@build-rust:
    cd rust && cargo build --release

@run-rust:
    cd rust && cargo run --quiet < ../input.txt

@bench-rust: build-rust
    hyperfine './rust/target/release/playground < ./input.txt'
