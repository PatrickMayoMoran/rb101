# Write your own version of titleize
words = "the flintstones rock"

def titleize(statement)
  words = statement.split
  titled_words = words.map { |word| word[0].upcase + word[1..-1] }
  title = titled_words.join(' ')
  title
end

p titleize(words)
# Or...
words.split.map { |word| word.capitalize }.join(' ')
