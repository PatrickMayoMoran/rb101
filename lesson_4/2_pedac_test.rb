# PROBLEM:
#
# Given a string, write a method `palindrome_substrings` which returns
# all the substrings from a given string which are palindromes. Consider
# palindrome words case sensitive.
#
# Test cases:

# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []
#
# Input: string
# Output: array
#
# Rules
# Explicit:
# palindromes are case sensitive
# return every substring that is a plaindrome
#
# Implicit
# Empty string returns empty array
# palindromes should be in order from largest to smallest
# no palindrome returns empty array
# strings have no spaces or punctuatuion
# If same palindrome appears again, should it have an additional entry?
#
# DATA STRUCTURE
# Array of substrings
#
# ALGORITHM
#
#
def palindrome_substrings(str)
  arr = []
  return arr if str.empty?
end

p palindrome_substrings("supercalifragilisticexpialidocious") #== ["ili"]
p palindrome_substrings("abcddcbA") #== ["bcddcb", "cddc", "dd"]
p palindrome_substrings("palindrome") #== []
p palindrome_substrings("") #== []
