# How does count treat the block's return value? How can we find out?
['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end
# count uses the block's return value to increment a counter
# we can check in the documentation - count will tally up the number of
# elements for which the block returns a truthy value
