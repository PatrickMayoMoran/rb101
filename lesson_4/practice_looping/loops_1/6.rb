# Print 5 random numbers between 0 and 99 (inclusive)
numbers = []

while numbers.size < 5
  num = rand(0..99)
  puts num
  numbers << num
end
