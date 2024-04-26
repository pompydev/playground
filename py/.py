import io
import os
import sys

# prepare stuff for faster IO
input = io.BytesIO(os.read(0, os.fstat(0).st_size)).readline
print = sys.stdout.write

# read line
s = input().decode("utf-8")

# parse string
nums = map(int, s.split(" "))

# print sum of nums
print(s.replace(" ", " + ") + " = " + str(sum(nums)) + "\n")
