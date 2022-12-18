# What is the return value of map? Why?
{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end
# map returns an array with the results of running the block for each 
# element in the enumerable
# In this case, each element is a hash entry with a key value pair
# The block however is only using the value - if the if statement evaluates
# to true, it is returning the value. When false, if returns nil
# So the return value will be [nil, 'bear']
