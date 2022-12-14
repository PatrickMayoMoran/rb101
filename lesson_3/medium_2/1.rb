a = "forty two"
b = "forty two"
c = a

puts a.object_id
puts b.object_id
puts c.object_id

# Predict the output!
# a and c will have same object ids
# b will have a different one
# Each string object is new and has its own id; unlike integers which would
# always have the same
