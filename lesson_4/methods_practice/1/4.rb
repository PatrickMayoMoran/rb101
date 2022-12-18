# What is the return value? Why?
['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end
# returns a hash {'a'=>'ant','b'=>'bear','c'=>'cat'}
# Runs the iteration with the object - in this case a hash - and assigns
# a key with the first letter of value and a value of value
