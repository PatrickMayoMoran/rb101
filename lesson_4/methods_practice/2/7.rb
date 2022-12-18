statement = "The Flintstones Rock"
# create a hash that expresses the frequency that each letter appears in 
# the above statement
# expected output:
# { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }
hash = {}
statement.each_char do |char|
  if hash[char] == nil
    hash[char] = 0 unless char == ' '
  else
    hash[char] += 1
  end
end
p hash
# Or...
result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a

letters.each do |letter|
  letter_frequency = statement.count(letter)
  result[letter] = letter_frequency if letter_frequency > 0
end
p result
