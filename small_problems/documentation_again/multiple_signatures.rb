a = %w(a b c d e)
puts a.fetch(7)
puts a.fetch(7, 'beats me')
puts a.fetch(7) { |index| index**2 }

# What will each of these statements output?

# index not in range error
# 'beats me'
# 49