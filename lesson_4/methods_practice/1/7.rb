# What is the block's return value? How is it determined?
# What is any?'s return value? what does it output?
[1, 2, 3].any? do |num|
  puts num
  num.odd?
end
# The block returns true or false based on num.odd?
# So 1 returns true, 2 returns false, and 3 returns true.
# Any?'s return value here is true - the method returns true if any of the 
# blocks evaluate to true. Since 1 evaluates to true, the method returns true
# and 2 and 3 are never evaluated.
