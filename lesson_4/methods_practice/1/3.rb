# What is the return value? Why?
[1, 2, 3].reject do |num|
  puts num
end
# return value is [1, 2, 3]
# reject returns an array for which the block evaluates as false or nil
# since puts always returns nil, every block is falsy so there are
# no elements to reject
# So a new array with all elements from the original is returned
