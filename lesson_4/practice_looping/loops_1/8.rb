numbers = [7, 9, 13, 25, 18]

# Use an until loop to print each number

count = 0
until count >= 5
  puts numbers[count]
  count += 1
end

# Or, destructively
until numbers.empty?
  puts numbers.shift
end
