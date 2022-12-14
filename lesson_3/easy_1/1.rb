numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# I would expect the above to print:
# 1
# 2
# 2
# 3
#
# This is because puts will print each element of an array on its own line
# additionally, the uniq call on line 2 was non destructive and the new array
# returned was not saved anywhere. So the call to puts on line 4
# is with the original array initialized on line 1
