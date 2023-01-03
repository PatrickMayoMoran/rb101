# PROBLEM
#   Write a method that takes one argument - a positive integer, and returns
#   a string of alternating 1's and 0's, always starting with 1. The length
#   of the string should match the given integer
#
# GOAL
#   Given a positive integer, return a string of integers the length of the
#   given positive integer, alternating 1's and 0's, always start with 1
#
# RULES
#   EXPLICIT
#     return a string
#     always start with 1
#     alternate 1's and 0's
#     string length is given integer
#   IMPLICIT
#     don't have to worry about 0 or negative integers
# EXAMPLES
# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'
#
# DATA STRUCTURES
#   string
# 
# ALGORITHM
#   Initialize an empty string
#   initialize a counting variable at 0
#   start a loop
#     if count variable is even, append a 1 to the string
#     else if count variable is odd, append a 0 to the string
#     count increments by 1
#     if count == given integer, break out of loop
#   return integer
#
def stringy(integer)
  string = ''
  count = 0
  loop do
    string << '1' if count.even?
    string << '0' if count.odd?
    count += 1
    break if count == integer
  end
  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
