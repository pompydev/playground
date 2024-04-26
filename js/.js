// prepare stuff for faster IO
const fs = require("fs")

// read stdin
const s = fs.readFileSync(process.stdin.fd).toString()

// parse string
const nums = s.split(" ").map(Number)

// print sum of nums
process.stdout.write(
  s.replaceAll(" ", " + ") +
    " = " +
    nums.reduce((acc, curr) => acc + curr, 0) +
    "\n"
)
