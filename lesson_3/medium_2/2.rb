a = 42
b = 42
c = a

puts a.object_id
puts b.object_id
puts c.object_id

# They will all be the same! Integers immutable; there is only one 42
