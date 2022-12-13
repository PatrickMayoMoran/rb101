# PROBLEM:
#
# Given a string, write a method change_me which returns the same
# string but with all the words in it that are palindromes uppercased.
#
# Input: string
# Output: new_string
#
# RULES
# case sensitive - mom is a palindrome, Mom is not
# capitalized words stay the same
# no punctuation present
#
# DATA STRUCTURE
# array to iterate through words
# rejoined string as final output
#
# ALGORITHM
# test for empty string, if so return a copy of that string
# create array of words
# iterate through array
#   if word reverse is the same as word, capitalize word
# join array in to new string

def change_me(str)
  return str.clone if str.empty?
  words = str.split
  words.each do |word|
    word.upcase! if word.reverse == word
  end
  str = words.join(' ')
end

p change_me("We will meet at noon") == "We will meet at NOON"
p change_me("No palindromes here") == "No palindromes here"
p change_me("") == ""
p change_me("I LOVE my mom and dad equally") == "I LOVE my MOM and DAD equally"
p change_me("I LOVE my Mom and dad equally") == "I LOVE my Mom and DAD equally"
