answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8
# This will print 34
# mess_with_it does not alter some_number; it returns a new value
# integers are immutable and cannot be modified in place
