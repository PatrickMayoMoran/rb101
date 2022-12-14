def factors(number)
  divisor = number
    factors = []
    while divisor > 0
      factors << number / divisor if number % divisor == 0
      divisor -= 1
    end
  factors
end

puts factors(16)
puts factors(0)

# Purpose of number % divisor == 0 is checking that divisor is a factor 
# with no remainder
#
# Purpose of line 8 is to return factors array
#
# problem was using begin /end loop instead of while
