numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end
# What happens when we modify an array while iterating over it? 
# What will be output by the above?
#
# Above will output:
# 1
# 3
#
# Modifying it while iterating cause missed/unexpected results
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end
# What about the above?
# 1
# 2
