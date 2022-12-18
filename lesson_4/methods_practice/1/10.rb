# What is the return value of the following code? Why?
[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end
# The return value is [1, nil, nil]
# The block evaluates for each element - 1 is not greater than 1, so the else
# statement is executed
# 2 and 3 are greater than 1, so the puts statement is executed. Puts returns
# nil.
