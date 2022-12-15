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
# if input string is empty, return empty array
# create array of all substrings from string
# loop through array, checking for palindromes
#   if substring is a palindrome, append to empty array
# return array
#
# HELPER METHOD
# Substrings
# initialize results array
# Set starting index of 0
# # While starting index is less than or equal to string size minus 2
# # set substring length to 2
# #   While substring length + starting index is less than or equal to string size
# #   slice string from starting index to sub length -1
# #   append sliced to results array
# #   increase substring length by 1
# # increase starting index by 1
# return results array
def is_palindrome?(sub)
  sub == sub.reverse
end

def substrings(str)
  result = []
  starting_index = 0
  while starting_index + 2 <= str.length
    sub_size = 2
    while sub_size + starting_index <= str.length
      sub = str.slice(starting_index, sub_size)
      result << sub
      sub_size += 1
    end
  starting_index += 1
  end
  result
end

def palindrome_substrings(str)
  palindromes = []
  return palindromes if str.empty?
  substrings = substrings(str)
  substrings.each do |sub|
    palindromes << sub if is_palindrome?(sub)
  end
  palindromes
end

p palindrome_substrings("supercalifragilisticexpialidocious") #== ["ili"]
p palindrome_substrings("abcddcbA") #== ["bcddcb", "cddc", "dd"]
p palindrome_substrings("palindrome") #== []
p palindrome_substrings("") #== []
