package main

import (
	"bufio"
	"os"
	"strconv"
	"strings"
)

// prepare stuff for faster IO
var reader = bufio.NewReader(os.Stdin)
var writer = bufio.NewWriter(os.Stdout)

func main() {
	defer writer.Flush() // manually flush stdout

	// read stdin
	b, _, _ := reader.ReadLine()

	// parse string
	s := string(b)
	sum := 0
	for _, s := range strings.Fields(s) {
		num, _ := strconv.Atoi(s)
		sum += num
	}

	// print sum of nums
	writer.WriteString(strings.ReplaceAll(s, " ", " + ") + " = " + strconv.Itoa(sum) + "\n")
	// or
	// fmt.Fprintf(writer, "%s = %d\n", strings.ReplaceAll(s, " ", " + "), sum)
}
