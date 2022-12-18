# What is the return value below? Why?
[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# Return value will be [1, 2, 3]
# The last statement being "hi" means all block evaluations end with a truthy
# value. Therefore, all elements of the array will be returned in a new array
