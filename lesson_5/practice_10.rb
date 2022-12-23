# PROBLEM 
# Given the following data structure and without modifying the original
# array, use the map method to return a new array identical in structure to the
# original but where the value of each integer is incremented by 1.
# [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]
#
# GOAL
# Use map
# return new array identical in structure, but with values incremented
#
# RULES
# Use map
# new array
# same structure
# don't modify original
#
# DATA STRUCTURES
# given an array of hashes, return an array of hashes
#
# ALGORITHM
# Iterate over hashes in the array
#   for each hash, create a new hash
#   iterate over key value pairs
#     for each key value, add equivalent key value in new hash with value + 1
# CODE



 def increment(array)
  array.map do |hash|
    new = {}
    hash.each do |k,v|
      new[k] = v + 1
    end
    new
  end
end
### ALTERNATE SOLUTION
def increment_2(array)
  array.map do |hash|
    hash.map { |k,v| [k,(v+1)] }.to_h
  end
end

test = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]
p increment(test) == [{a: 2}, {b: 3, c: 4}, {d: 5, e: 6, f: 7}]
p increment(test)
p increment_2(test) == [{a: 2}, {b: 3, c: 4}, {d: 5, e: 6, f: 7}]
p increment_2(test)
