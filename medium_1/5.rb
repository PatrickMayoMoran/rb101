limit = 15

def fib(first_num, second_num)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

# The problem is that limit is a local variable that is not available
# to the method.
#
# To fix this, limit could be included in the method definition 
# as a parameter and 15 could be passed in as an argument
# OR a local variable scoped to the method could be initialized on 
# the first line of a method if you always wanted it to be 15.
