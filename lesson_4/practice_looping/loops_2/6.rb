names = ['Sally', 'Joe', 'Lisa', 'Henry']

# Use loop to print each name until names is empty
loop do
  puts names.shift
  break if names.empty?
end
