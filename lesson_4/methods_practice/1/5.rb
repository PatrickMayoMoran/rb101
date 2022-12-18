# What does the below return? How can we find out?
hash = { a: 'ant', b: 'bear' }
hash.shift
# We can find out by testing and by reviewing the documentation
# hash shift returns the first key value pair from the hash as an array
# so this would return [:a, 'ant']
