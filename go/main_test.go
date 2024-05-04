package main

import (
	"testing"
)

const N int = 100_000_000

var num int = 10

func BenchmarkAdd1(b *testing.B) {
	for i := 0; i < N; i++ {
		_ = num * num
	}
}
